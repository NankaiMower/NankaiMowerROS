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
    rate = rospy.Rate(5)  # 10Hz

    # 循环调用回调函数
    while not rospy.is_shutdown():
        distance = calculate_distance()
        chaosheng_pub.publish(Float64(distance))  # 发布距离信息

        twist_msg = Twist()

        if not has_obstacle:
            if distance < 100:
                # 旋转处理
                # 发送角度、障碍物信息（雷达 -> planner）
                # 
                has_obstacle = True
                twist_msg.angular.z = 100/distance
                cmd_vel_pub.publish(twist_msg)
            # if distance < 50:
            #     has_obstacle = True
            #     twist_msg.angular.z = 2
            #     cmd_vel_pub.publish(twist_msg)
            # elif distance < 100:
            #     has_obstacle = True
            #     twist_msg.angular.z = 1
            #     cmd_vel_pub.publish(twist_msg)
            else:
                pass
        else:
            if distance < 100:
                twist_msg.angular.z = 100/distance
                cmd_vel_pub.publish(twist_msg)
            else:
                has_obstacle = False
                twist_msg.angular.z = 0
                cmd_vel_pub.publish(twist_msg)
            # if distance < 20:
            #     twist_msg.angular.z = 2
            #     cmd_vel_pub.publish(twist_msg)
            # elif distance < 40:
            #     twist_msg.angular.z = 1
            #     cmd_vel_pub.publish(twist_msg)
            # else:
            #     has_obstacle = False
            #     twist_msg.angular.z = 0
            #     cmd_vel_pub.publish(twist_msg)

        rospy.loginfo(f"has_obstacle {has_obstacle} distance {distance}")
        rate.sleep()

    GPIO.cleanup()