#!/usr/bin/env python
import rospy
import serial
from std_srvs.srv import Empty, EmptyResponse
# from your_package.msg import MotorInfo  # 替换为你的消息类型

# 定义服务回调函数
def start_motor(req):
    right_motor_serial.write(b'start\r\n')
    rospy.sleep(2)
    return EmptyResponse()

def speed_up_motor(req):
    right_motor_serial.write(b'speed+\r\n')
    return EmptyResponse()

def slow_down_motor(req):
    right_motor_serial.write(b'speed-\r\n')
    return EmptyResponse()

def stop_motor(req):
    right_motor_serial.write(b'stop\r\n')
    return EmptyResponse()

# def motor_info_publisher():
#     rate = rospy.Rate(10)  # 10Hz
#     while not rospy.is_shutdown():
#         response = right_motor_serial.read(100)
#         rospy.loginfo(response.decode())
#         # motor_info_pub.publish(info_msg)
#         rate.sleep()

if __name__ == '__main__':
    # 初始化ROS节点
    rospy.init_node('motor_driver')

    # 初始化串口通信
    global right_motor_serial
    right_motor_serial = serial.Serial('/dev/ttyAMA2', 115200)

    # 定义服务
    start_service = rospy.Service('motor/start', Empty, start_motor)
    speed_plus_service = rospy.Service('motor/speed_add', Empty, speed_up_motor)
    speed_minus_service = rospy.Service('motor/speed_sub', Empty, slow_down_motor)
    stop_service = rospy.Service('motor/stop', Empty, stop_motor)

    # 定义发布者
    # global motor_info_pub
    # motor_info_pub = rospy.Publisher('motor_motor/info', MotorInfo, queue_size=10)

    # 启动发布电机信息的线程
    # rospy.loginfo("Motor driver node started. Waiting for service calls...")
    # threading.Thread(target=motor_info_publisher).start()

    # 阻塞，等待服务调用
    rospy.spin()