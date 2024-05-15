import rospy
import serial
from mower_driver.msg import MotorInfo  # 替换为你的消息类型

def motor_info_publisher():
    rate = rospy.Rate(10)  # 10Hz
    while not rospy.is_shutdown():
        response = right_motor_serial.read(100)
        rospy.loginfo(response.decode())
        # motor_info_pub.publish(info_msg)
        rate.sleep()

if __name__ == '__main__':
    # 初始化ROS节点
    rospy.init_node('/wheel/right_wheel/get_info')

    # 初始化串口通信
    global right_motor_serial
    right_motor_serial = serial.Serial('/dev/ttyAMA2', 115200)

    # 定义发布者
    global motor_info_pub
    motor_info_pub = rospy.Publisher('/wheel/right_wheel/info', MotorInfo, queue_size=10)

    # 启动发布电机信息的线程
    rospy.loginfo("Motor driver node started. Waiting for service calls...")
    motor_info_publisher.start()

    # 阻塞，等待服务调用
    rospy.spin()