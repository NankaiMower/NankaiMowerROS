#!/usr/bin/env python
import rospy
from std_srvs.srv import Empty
import time

# 服务调用函数
def call_service(service_name):
    try:
        rospy.wait_for_service(service_name)
        service = rospy.ServiceProxy(service_name, Empty)
        return service()
    except rospy.ROSException as e:
        rospy.logerr("Service call failed: %s" % (e,))

# 检查障碍物状态
def check_obstacle_status():
    obstacle_status = rospy.get_param('/mower_status/have_obstacle')
    print(bool(obstacle_status))
    return bool(obstacle_status)

def work_demo():
    rospy.init_node('work_demo')
    call_service('/motor/start')
    call_service('/motor/speed_add')

    try:
        while not rospy.is_shutdown():
            if check_obstacle_status():
                # 检测到障碍物，停止小车
                call_service('/motor/stop')
                # 等待障碍物清除
                while check_obstacle_status():
                    rospy.sleep(1)
                # 障碍物清除，继续运行
                call_service('/motor/speed_add')
                rospy.sleep(1)
            else:
                # 没有障碍物，继续运行
                rospy.sleep(1)
    except rospy.ROSException as e:
        rospy.logerr("Work demo failed: %s" % (e,))
        time.sleep(3)
        call_service('/motor/stop')

if __name__ == '__main__':
    work_demo()