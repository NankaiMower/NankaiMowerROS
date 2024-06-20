import rospy
import RPi.GPIO as GPIO
import tf
import time
from std_msgs.msg import Float64
from geometry_msgs.msg import Twist
from xbot_msgs.msg import AbsolutePose
from geometry_msgs.msg import Quaternion
import math

# 设置GPIO引脚
TRIG = 26
ECHO = 27

# 初始化GPIO设置
GPIO.setmode(GPIO.BCM)
GPIO.setup(TRIG, GPIO.OUT)
GPIO.setup(ECHO, GPIO.IN)

current_yaw = 0

def angle_cal(angel, delta):
    # 计算新的角度
    new_angle = angel + delta
    
    # 确保角度在 -180 到 180 范围内
    if new_angle > 180:
        new_angle -= 360
    elif new_angle < -180:
        new_angle += 360
    
    return new_angle

def poseReceived(msg):
    global current_yaw
    x = msg.pose.pose.orientation.x
    y = msg.pose.pose.orientation.y
    z = msg.pose.pose.orientation.z
    w = msg.pose.pose.orientation.w
    _, _, yaw = tf.transformations.euler_from_quaternion((x,y,z,w))
    current_yaw = math.degrees(yaw)
    # rospy.loginfo("Z轴角度偏航角 %f", current_yaw)

def calculate_distance():
    # 发送超声波脉冲
    GPIO.output(TRIG, True)
    time.sleep(0.0001)
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
    imu_sub = rospy.Subscriber('/xbot_positioning/xb_pose', AbsolutePose, poseReceived, queue_size=5)
    rate = rospy.Rate(50) 

    while not rospy.is_shutdown():
        print(123123)
        distance = calculate_distance()
        chaosheng_pub.publish(Float64(distance))  # 发布距离信息
        twist_msg = Twist()

        if distance < 40:
            print(222, distance)
            forward_angle = current_yaw

            # 向右看
            while abs(current_yaw - angle_cal(forward_angle, -90)) > 3:
                print(444)
                rospy.loginfo(f"right angle {current_yaw} --->  {angle_cal(forward_angle, -90)}")
                twist_msg.linear.x = 0
                twist_msg.angular.z = -1.0
                cmd_vel_pub.publish(twist_msg)
                rate.sleep()
                print(555)
            print(666)
        else:
            rate.sleep()

    # 循环调用回调函数
    # while not rospy.is_shutdown():
    #     distance = calculate_distance()
    #     chaosheng_pub.publish(Float64(distance))  # 发布距离信息
    #     twist_msg = Twist()

    #     print(111, distance)

    #     if distance < 40:
    #         print(222, distance)
    #         forward_angle = current_yaw

    #         # 向右看
    #         while abs(current_yaw - angle_cal(forward_angle, -90)) > 3:
    #             print(444)
    #             rospy.loginfo(f"right angle {current_yaw} --->  {angle_cal(forward_angle, -90)}")
    #             twist_msg.linear.x = 0
    #             twist_msg.angular.z = -1.0
    #             cmd_vel_pub.publish(twist_msg)
    #             rate.sleep()
    #             print(555)

    #         print(666)
    #         distance = calculate_distance()
    #         chaosheng_pub.publish(Float64(distance))
    #         print(777, distance)

    #         if distance < 40:
    #             # 向左看
    #             print(888)
    #             while abs(current_yaw - angle_cal(forward_angle, 90)) > 3:
    #                 print(999)
    #                 rospy.loginfo(f"left angle {current_yaw} ---> {angle_cal(forward_angle, 90)}")
    #                 twist_msg.linear.x = 0
    #                 twist_msg.angular.z = 1.0
    #                 cmd_vel_pub.publish(twist_msg)
    #                 rate.sleep()
    #                 print(99911)
                
    #             print(99922)
    #             distance = calculate_distance()
    #             chaosheng_pub.publish(Float64(distance))
    #             print(99933, distance)

    #         else:
    #             print(1111, distance)

    #     else:
    #         print(2222)
        
    #     print(3333)

    # print(4444)
    # GPIO.cleanup()