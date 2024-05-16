import rospy
import serial
from std_srvs.srv import Empty, EmptyResponse

# 定义服务回调函数
def start_motor(req):
    right_motor_serial.write(b'start\r\n')
    rospy.sleep(2)
    rospy.loginfo("start")
    return EmptyResponse()

def speed_up_motor(req):
    right_motor_serial.write(b'speed+\r\n')
    rospy.sleep(0.1)
    rospy.loginfo("speed+")
    return EmptyResponse()

def slow_down_motor(req):
    right_motor_serial.write(b'speed-\r\n')
    rospy.sleep(0.1)
    rospy.loginfo("speed-")
    return EmptyResponse()

def stop_motor(req):
    right_motor_serial.write(b'stop\r\n')
    rospy.sleep(0.1)
    rospy.loginfo("stop")
    return EmptyResponse()

if __name__ == '__main__':
    # 初始化ROS节点
    rospy.init_node('control')

    # 初始化串口通信
    global right_motor_serial
    right_motor_serial = serial.Serial('/dev/ttyAMA2', 115200)

    # 定义服务
    start_service = rospy.Service('/motor/start', Empty, start_motor)
    speed_plus_service = rospy.Service('/motor/speed_add', Empty, speed_up_motor)
    speed_minus_service = rospy.Service('/motor/speed_sub', Empty, slow_down_motor)
    stop_service = rospy.Service('/motor/stop', Empty, stop_motor)

    # 阻塞，等待服务调用
    rospy.spin()