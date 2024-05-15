#!/usr/bin/env python
import rospy
from sensor_msgs.msg import Image
from geometry_msgs.msg import Twist
from cv_bridge import CvBridge, CvBridgeError
import cv2
import numpy as np

class ObstacleDetectionNode:
    def __init__(self):
        # 初始化ROS节点
        rospy.init_node('/mower/obscatle_handle')
        self.image_sub = rospy.Subscriber('/camera/grass_segment_result', Image, self.image_callback)
        self.rate = rospy.Rate(10)  # 10Hz
        self.bridge = CvBridge()

    def image_callback(self, data):
        # 处理图像数据，计算草地占比
        # 这里需要实现草地占比的计算逻辑
        img = None

        try:
            img = self.bridge.imgmsg_to_cv2(data, "mono8")
        except CvBridgeError as e:
            rospy.logerr("CvBridge Error: {0}".format(e))

        # img: (480, 600)
        w, h = img.shape
        img = img[:, h//2:]

        ratio = np.sum(img == 255) / img.size
        rospy.loginfo(f"ratio: {ratio}")

        # 根据草地占比决定是否发布停止消息
        if ratio < 0.5:
            rospy.set_param('/mower_status/have_obscatle', False)
        else:
            rospy.set_param('/mower_status/have_obscatle', True)


    def run(self):
        while not rospy.is_shutdown():
            self.rate.sleep()

if __name__ == '__main__':
    try:
        obstacle_detection_node = ObstacleDetectionNode()
        obstacle_detection_node.run()
    except rospy.ROSInterruptException:
        pass