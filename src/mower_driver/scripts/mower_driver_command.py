import rospy
import serial
from std_srvs.srv import Empty, EmptyResponse
from mower_driver.srv import SetDuty, SetDutyResponse

# 定义服务回调函数
def start_motor(req):
    # left_motor_serial.write(b'start\r\n')
    right_motor_serial.write(b'start\r\n')
    rospy.sleep(3)
    rospy.loginfo("start")
    return EmptyResponse()

def speed_up_motor(req):
    # left_motor_serial.write(b'speed+\r\n')
    right_motor_serial.write(b'speed+\r\n')
    rospy.sleep(0.1)
    rospy.loginfo("speed+")
    return EmptyResponse()

def slow_down_motor(req):
    # left_motor_serial.write(b'speed-\r\n')
    right_motor_serial.write(b'speed-\r\n')
    rospy.sleep(0.1)
    rospy.loginfo("speed-")
    return EmptyResponse()

def stop_motor(req):
    # left_motor_serial.write(b'stop\r\n')
    right_motor_serial.write(b'stop\r\n')
    rospy.sleep(0.1)
    rospy.loginfo("stop")
    return EmptyResponse()

def turn_left_motor(req):
    # left_motor_serial.write(b'stop\r\n')
    right_motor_serial.write(b'stop\r\n')
    rospy.sleep(0.1)
    # left_motor_serial.write(b'speed-\r\n')
    right_motor_serial.write(b'speed+\r\n')
    rospy.sleep(0.1)
    rospy.loginfo("turn left")
    return EmptyResponse()

def turn_right_motor(req):
    # left_motor_serial.write(b'stop\r\n')
    right_motor_serial.write(b'stop\r\n')
    rospy.sleep(0.1)
    # left_motor_serial.write(b'speed+\r\n')
    right_motor_serial.write(b'speed-\r\n')
    rospy.sleep(0.1)
    rospy.loginfo("turn right")
    return EmptyResponse()

def set_duty(req):
    duty = req.duty
    data = f'setduty={str(duty)}\r\n'.encode('utf8')
    # left_motor_serial.write(data)
    right_motor_serial.write(data)
    rospy.sleep(0.1)
    rospy.loginfo("set_duty")
    rospy.loginfo(str(duty))
    return SetDutyResponse()

if __name__ == '__main__':
    # 初始化ROS节点
    rospy.init_node('mower_driver_control')

    # 初始化串口通信
    # global left_motor_serial
    global right_motor_serial
    # global mower_motor_serial

    left_motor_serial  = None # serial.Serial('/dev/ttyAMA4', 115200)
    right_motor_serial = serial.Serial('/dev/ttyAMA2', 115200)
    mower_motor_serial = None # serial.Serial('/dev/ttyAMA3', 115200)

    # 定义服务
    start_service = rospy.Service('/motor/start', Empty, start_motor)
    stop_service = rospy.Service('/motor/stop', Empty, stop_motor)
    
    speed_plus_service = rospy.Service('/motor/speed_add', Empty, speed_up_motor)
    speed_minus_service = rospy.Service('/motor/speed_sub', Empty, slow_down_motor)

    turn_left_service = rospy.Service('/motor/turn_left', Empty, turn_left_motor)
    turn_right_service = rospy.Service('/motor/turn_right', Empty, turn_right_motor)

    set_duty_service = rospy.Service('/motor/set_duty', SetDuty, set_duty)

    # 阻塞，等待服务调用
    rospy.spin()

# rosservice call /motor/start
# rosservice call /motor/set_duty 100
# rosservice call /motor/set_duty -- -300
# rosservice call /motor/stop