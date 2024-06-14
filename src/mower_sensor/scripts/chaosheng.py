import rospy
import RPi.GPIO as GPIO
import time
from std_msgs.msg import Float64
from geometry_msgs.msg import Twist

# 设置GPIO引脚
TRIG = 26
ECHO = 27

has_obstacle = False

# 初始化GPIO设置
GPIO.setmode(GPIO.BCM)
GPIO.setup(TRIG, GPIO.OUT)
GPIO.setup(ECHO, GPIO.IN)

def calculate_distance():
    # 发送超声波脉冲
    GPIO.output(TRIG, True)
    time.sleep(0.00001)
    GPIO.output(TRIG, False)

    # 接收超声波回波
    while GPIO.input(ECHO) == 0:
        pass
    pulse_start = time.time()
    while GPIO.input(ECHO) == 1:
        pass
    pulse_end = time.time()

    # 计算距离
    pulse_duration = pulse_end - pulse_start
    distance = pulse_duration * 34300 / 2  # 声音速度为34300厘米/秒

    distance = round(distance, 2)

    # rospy.loginfo(f"Got new global plan with {distance} points.");

    return distance

if __name__ == '__main__':
    rospy.init_node('chaosheng', anonymous=False)

    # 定义发布者，发布距离信息
    chaosheng_pub = rospy.Publisher('/chaosheng_distance', Float64, queue_size=5)
    cmd_vel_pub = rospy.Publisher('/obstacle_vel', Twist, queue_size=5)
    rate = rospy.Rate(10)  # 10Hz

    # 循环调用回调函数
    while not rospy.is_shutdown():
        distance = calculate_distance()
        chaosheng_pub.publish(Float64(distance))  # 发布距离信息

        twist_msg = Twist()

        if not has_obstacle:
            if distance < 100:
                has_obstacle = True
                # 首先停止
                twist_msg.linear.x = 0
                twist_msg.angular.z = 0
                cmd_vel_pub.publish(twist_msg)
                # 然后右转2秒
                twist_msg.linear.x = 0
                twist_msg.angular.z = 1
                for _ in range(20):
                    cmd_vel_pub.publish(twist_msg)
                    rate.sleep()
                # 然后直走
                twist_msg.linear.x = 0.5
                twist_msg.angular.z = 0
                for _ in range(20):
                    cmd_vel_pub.publish(twist_msg)
                    rate.sleep()
            else:
                pass
        else:
            if distance < 100:
                # 首先停止
                twist_msg.linear.x = 0
                twist_msg.angular.z = 0
                cmd_vel_pub.publish(twist_msg)
                # 然后右转2秒
                twist_msg.linear.x = 0
                twist_msg.angular.z = 1
                for _ in range(20):
                    cmd_vel_pub.publish(twist_msg)
                    rate.sleep()
                # 然后直走
                twist_msg.linear.x = 0.5
                twist_msg.angular.z = 0
                for _ in range(20):
                    cmd_vel_pub.publish(twist_msg)
                    rate.sleep()
            else:
                has_obstacle = False
                twist_msg.linear.x = 0
                twist_msg.angular.z = 0
                cmd_vel_pub.publish(twist_msg)

        rospy.loginfo(f"has_obstacle {has_obstacle} distance {distance}")
        rate.sleep()

    GPIO.cleanup()