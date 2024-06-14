import rospy
import serial
from std_srvs.srv import Empty, EmptyResponse
from mower_driver.srv import SetDuty, SetDutyResponse

# 定义服务回调函数
def start_motor_left(req):
    left_motor_serial.write(b'start\r\n')
    rospy.loginfo("start")
    return EmptyResponse()

def start_motor_right(req):
    right_motor_serial.write(b'start\r\n')
    rospy.loginfo("start")
    return EmptyResponse()

def stop_motor_left(req):
    left_motor_serial.write(b'stop\r\n')
    rospy.loginfo("stop")
    return EmptyResponse()

def stop_motor_right(req):
    right_motor_serial.write(b'stop\r\n')
    rospy.loginfo("stop")
    return EmptyResponse()

def set_duty_left(req):
    duty = req.duty
    data = f'setspeed={str(duty)}\r\n'.encode('utf8')
    left_motor_serial.write(data)
    rospy.loginfo("set_left_duty")
    rospy.loginfo(str(duty))
    return SetDutyResponse()

def set_duty_right(req):
    duty = req.duty
    data = f'setspeed={str(duty)}\r\n'.encode('utf8')
    right_motor_serial.write(data)
    rospy.loginfo("set_right_duty")
    rospy.loginfo(str(duty))
    return SetDutyResponse()

if __name__ == '__main__':
    # 初始化ROS节点
    rospy.init_node('mower_driver_control')

    # 初始化串口通信
    global left_motor_serial
    global right_motor_serial

    left_motor_serial  = serial.Serial('/dev/ttyAMA4', 115200)
    right_motor_serial = serial.Serial('/dev/ttyAMA2', 115200)

    # 定义服务
    start_motor_left_service = rospy.Service('/motor/start_motor_left', Empty, start_motor_left)
    start_motor_right_service = rospy.Service('/motor/start_motor_right', Empty, start_motor_right)
    stop_motor_left_service = rospy.Service('/motor/stop_motor_left', Empty, stop_motor_left)
    stop_motor_right_service = rospy.Service('/motor/stop_motor_right', Empty, stop_motor_right)
    set_left_duty_service  = rospy.Service('/motor/set_duty_left', SetDuty, set_duty_left)
    set_right_duty_service = rospy.Service('/motor/set_duty_right', SetDuty, set_duty_right)

    # 阻塞，等待服务调用
    rospy.spin()

# 右侧的向前是对的，正数就是向前

# rosservice call /motor/start_motor_left
# rosservice call /motor/set_duty_left 300
# rosservice call /motor/set_duty_left -- -300
# rosservice call /motor/stop_motor_left

# rosservice call /motor/start_motor_right
# rosservice call /motor/set_duty_right 100
# rosservice call /motor/set_duty_right -- -300
# rosservice call /motor/stop_motor_right


# roslaunch mower_test 005_comm.launch
# rosrun mower_driver mower_driver_command.py
# rosrun teleop_twist_keyboard teleop_twist_keyboard.py