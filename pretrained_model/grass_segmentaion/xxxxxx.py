import argparse
import os
import platform
import sys
from pathlib import Path

import numpy as np

from PIL import Image

import serial
import serial.tools.list_ports

from utils.sensor.get_imu_data import DueIMUData, delta

# from get_gps_data import DueGPSData
# from geopy.distance import geodesic

import RPi.GPIO as GPIO
import threading
import time

from utils.motor.set_motor import IN1, IN2, IN3, IN4, pwm_ENA, pwm_ENB
from utils.motor.set_motor import car_init, motor_init, forward, brake, PID_turn, spin_left, spin_right

#小车速度
SPEED = 8

EPS_ANGLE = 10
EPS_DISTANCE = 0.01

cnt = 0

# IMU接口准备
plist = list(serial.tools.list_ports.comports())
print(plist)
for i in range(len(plist)):
    print('device', i, list(plist[i]))

serialName = '/dev/ttyUSB0' #plist[0][0]
print('serialName', serialName)
baud = 9600   # Same baud rate as the INERTIAL navigation module
imu = serial.Serial(serialName, baud, timeout=0.5)
print("Serial is Opened:", imu.is_open)

# 小车方位角
current_angle = DueIMUData(imu.read(11))
INIT_ANGLE    = current_angle

print("INIT    ANGLE:", INIT_ANGLE)

def calculate_angle(current_angle, add_angle):
    return (current_angle + 180 + add_angle ) % 360 - 180

FORWARD_ANGLE = calculate_angle(INIT_ANGLE, 0)
LEFT_ANGLE    = calculate_angle(INIT_ANGLE, 90)
RIGHT_ANGLE   = calculate_angle(INIT_ANGLE, -90)
BACK_ANGLE    = calculate_angle(INIT_ANGLE, 180)

print("FORWARD ANGLE:", FORWARD_ANGLE)
print("LEFT    ANGLE:", LEFT_ANGLE) 
print("RIGHT   ANGLE:", RIGHT_ANGLE)
print("BACK    ANGLE:", BACK_ANGLE)

# GPS接口准备
#GPSSerialName = '/dev/ttyUSB1' #plist[1][0]
#('serialName', GPSSerialName)
# = serial.Serial(GPSSerialName, baud)
#print("Serial is Opened:", gps.is_open)

#while True:
#    result = DueGPSData(gps)
#    if result is not None:
#        print(result)
#        if result != "GPS no found":
#            # 初始化位置
#            print("INIT_POS", result)
#            INIT_POS = result
#            break

# INIT_POS = (40, 118)

# # 障碍物检测正在进行
ObstacleDoing = threading.Event()
# # 定位检测正在进行
# PosotionDoing = threading.Event()
# # 方向检测正在进行
DirectionDoing = threading.Event()
# 小车正在直行
ForwardDoing = threading.Event()
# 小车正在旋转
SpinDoing = threading.Event()
# 小车正在回家
# GoingHome = threading.Event()
# 取消所有线程
ShutDownAllThread = threading.Event()

def create_incremental_folder():
    folder_prefix = "photos_"
    folder_number = 1
    while True:
        folder_name = f"{folder_prefix}{folder_number:03}"
        if not os.path.exists(folder_name):
            os.mkdir(folder_name)
            return folder_name
        folder_number += 1

# 分割模型初始化
def seg_init(model_path):
    from deeplab import DeepLabModel
    seg_model = DeepLabModel(model_path)
    print("seg model init done")
    return seg_model



# 确保在直行过程中能够进行相关变换
def keep(function, runtime, angle, scale_factor=10):
    ForwardDoing.set()

    check_obstacle_thread = threading.Thread(target=check_grass, args=(angle,))
    check_obstacle_thread.start()

    check_direction_thread = threading.Thread(target=check_direction, args=(angle,))
    check_direction_thread.start()

    # 保持直行状态
    run_num = int(runtime*scale_factor)
    cur_run_num = 0
    # 变换没有结束就一直等
    while (cur_run_num < run_num) and not ShutDownAllThread.is_set():
        if not (ObstacleDoing.is_set() or DirectionDoing.is_set()):
            cur_run_num += 1
            # 执行直行命令
            function(SPEED)
            print(f'    保持 {1/scale_factor}s ', cur_run_num)
        time.sleep(1/scale_factor)

    # 结束直行状态
    ForwardDoing.clear()
    
    brake()
    time.sleep(0.1)

# 旋转到某一特定角度（检查线程）
def spin(angle):
    SpinDoing.set()    
    check_direction_thread = threading.Thread(target=check_direction, args=(angle, ))
    check_direction_thread.start()
    # 保持旋转状态
    while not DirectionDoing.is_set() and not ShutDownAllThread.is_set():
        pass
    while DirectionDoing.is_set() and not ShutDownAllThread.is_set():
        pass
    # 结束旋转状态
    SpinDoing.clear()
    time.sleep(0.1)



def car_run(method):
    if method == 'S_road':
        S_road(12, 4)
    else:
        NotImplementedError()

def S_road(delaytime_long, rounds):
    # ↑↓↑↓↑↓↑↓
    for _ in range(rounds):
        keep(forward, delaytime_long, FORWARD_ANGLE)
        spin(RIGHT_ANGLE)
        spin(BACK_ANGLE)
        keep(forward, delaytime_long, BACK_ANGLE)
        spin(RIGHT_ANGLE)
        spin(FORWARD_ANGLE)

# 非草地处理
def process_for_not_grass():
    print('      [修改开始]')
    brake()
    time.sleep(2)
    print('      [修改完成]')

# mask比例计算（照片下半部分）
def mask_ratio(mask):
    H, W = mask.shape
    mask_new = mask[H // 2 : W]
    grass_ratio = np.sum(mask_new == 1) / mask_new.size
    return grass_ratio
    
def check_grass(angle):
    global cnt
    grass_ratio = 0.00
    # 在主程序不结束的情况下一直运行
    while ForwardDoing.is_set() and not ShutDownAllThread.is_set():
        print('    [分割开始]    ')
        time1 = time.perf_counter()
        
        try:
            _, img = cap.read()
            img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
            if img is not None:
                cv2.imwrite(os.path.join(img_folder, f"origin_{cnt}.jpg"), cv2.cvtColor(img, cv2.COLOR_RGB2BGR))
                print('    [img]', img.shape)
                image_resized, image_mask = seg_model.run(Image.fromarray(img)) 
                print(image_resized.shape, image_mask.shape)
                grass_ratio = mask_ratio(image_mask)
                frame_filename = os.path.join(img_folder, f"{cnt}.jpg")
                height, width = image_mask.shape
                green_mask = np.zeros((height, width, 3), dtype=np.uint8)
                green_mask[image_mask == 1] = [144, 238, 144][::-1]
                mixed = (0.5*image_resized + 0.5*green_mask).astype(np.uint8)
                cv2.imwrite(frame_filename, cv2.cvtColor(mixed, cv2.COLOR_RGB2BGR))
                cnt += 1
        except:
            grass_ratio = 0.00
        
        time2 = time.perf_counter()
        # num = 0
        print('    [', grass_ratio, ']')
        print('    [运行时间: %s毫秒]' % ((time2 - time1) * 1000))
        print('    [分割完成]    ')
    
        # cv2.imwrite(f'/home/gecaoji/yolov5/{folder_name}/{cnt}_{num}_{time2 - start_time}.png',img)
        # 截止到计算结束的时候如果仍然在直行（判断两次），且有障碍物
        if ForwardDoing.is_set() and grass_ratio < 0.6 and not ShutDownAllThread.is_set():
            #print('11 ObstacleDoing.is_set()',ObstacleDoing.is_set())            
            ObstacleDoing.set()
            print('      [真]')
            #print('111 ObstacleDoing.is_set()',ObstacleDoing.is_set())
            process_for_not_grass()
        else:
            #print('22 ObstacleDoing.is_set()',ObstacleDoing.is_set())            
            #print('      [假]')
            ObstacleDoing.clear()
            #print('222 ObstacleDoing.is_set()',ObstacleDoing.is_set())

def check_direction(target_angle):
    # print('ForwardDoing', ForwardDoing.is_set(), 'SpinDoing', SpinDoing.is_set())
    while (ForwardDoing.is_set() or SpinDoing.is_set()) and not ShutDownAllThread.is_set():
        current_angle = DueIMUData(imu.read(11))
        # print(target_angle, current_angle)
        delta_angle = delta(target_angle, current_angle)
        if (ForwardDoing.is_set() or SpinDoing.is_set()) and abs(delta_angle) >= EPS_ANGLE and not ObstacleDoing.is_set() and not ShutDownAllThread.is_set():
            #print('33 DirectionDoing.is_set()',DirectionDoing.is_set())
            DirectionDoing.set()
            #print('333 DirectionDoing.is_set()',DirectionDoing.is_set())
            PID_turn(delta_angle)
        else:
            #print('44 DirectionDoing.is_set()',DirectionDoing.is_set())
            DirectionDoing.clear()
            #print('444 DirectionDoing.is_set()',DirectionDoing.is_set())

# def calculate_distance_and_angle(current_pos, target_pos):
#     # 纬度， 经度
#     width = geodesic((target_pos[0], current_pos[1]), (target_pos[0], target_pos[1])).m
#     height = geodesic((target_pos[0], current_pos[1]), (current_pos[0], current_pos[1])).m
#     if target_pos[1] < current_pos[1]:
#         width = -width
#     if target_pos[0] < current_pos[0]:
#         height = -height
#     distance = math.sqrt(width**2 + height**2)
#     angle = math.degrees(math.atan2(target_pos[1] - current_pos[1], target_pos[0] - current_pos[0]))
#     return distance, angle



# def take_photo():
#     frame_count = 0
#     while not ShutDownAllThread.is_set():
#         _, img = cap.read()
#         if img is not None:
#             time.sleep(0.1)
#             # 保存帧到文件夹
#             frame_filename = os.path.join(new_folder, f"{frame_count}.jpg")
#             cv2.imwrite(frame_filename, img)
#             # print(f"保存帧: {frame_filename}")
#             frame_count += 1

if __name__ == '__main__':

    img_folder = create_incremental_folder()

    model_path =  "/home/ubuntu/qls/deeplab/model.tar.gz"

    method = 'S_road'

    seg_model = seg_init(model_path)
    car_init()
    motor_init()

    cap = cv2.VideoCapture(0)
    
    run_thread = threading.Thread(target=car_run, args=(method,))
    run_thread.start()

