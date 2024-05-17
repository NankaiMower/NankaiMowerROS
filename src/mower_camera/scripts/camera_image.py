import rospy
from sensor_msgs.msg import Image
import cv2
from cv_bridge import CvBridge
from std_msgs.msg import Header
      
class ImagePublisher:
    def __init__(self):
        rospy.init_node('camera', anonymous=False)
        self.image_pub = rospy.Publisher("/camera/image_raw", Image, queue_size=1)
        self.bridge = CvBridge()
        self.cap = cv2.VideoCapture(0) 
        self.fixed_frame = 'camera_frame'

    def run(self):
        rate = rospy.Rate(2) 
        while not rospy.is_shutdown():
            ret, frame = self.cap.read()
            
            if not ret:
                rospy.logerr("Failed to capture image")
                continue


            # 为图像消息创建一个header
            header = Header()
            header.stamp = rospy.Time.now()
            header.frame_id = self.fixed_frame

            try:
                # 将BGR格式的OpenCV图像转换为ROS的Image消息
                ros_image = self.bridge.cv2_to_imgmsg(frame, "bgr8")
                ros_image.header = header
                self.image_pub.publish(ros_image)

            except Exception as e:
                rospy.logerr("Error converting image: %s" % e)

            rate.sleep()

if __name__ == '__main__':
    image_publisher = ImagePublisher()
    image_publisher.run()