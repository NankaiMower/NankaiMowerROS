import rospy
from sensor_msgs.msg import Image
import cv2
from cv_bridge import CvBridge, CvBridgeError

import numpy as np
from PIL import Image

# export PATH="/root/miniforge3/bin:$PATH"
# export PYTHONPATH="/root/miniforge3/lib/python3.10/site-packages:$PYTHONPATH"

from pretrained_model.grass_segmentaion.deeplab import DeepLabModel

class GrassSegmentationNode:
    def __init__(self):
        rospy.init_node('grass_segmentation')
        self.image_sub = rospy.Subscriber("camera/image", Image, self.callback)
        self.image_pub = rospy.Publisher("model/segment_image", Image, queue_size=1)
        self.bridge = CvBridge()

        model_path = "./pretrained_model/grass_segmentaion/grassSeg.tar.gz"
        self.seg_model = DeepLabModel(model_path)

    def callback(self, data):
        try:
            cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
        except CvBridgeError as e:
            rospy.logerr("CvBridge Error: {0}".format(e))

        ######################
        image_resized, image_mask= self.seg_model.run(Image.fromarray(img)) 
        green_mask = np.zeros((256, 256, 3), dtype=np.uint8)
        green_mask[image_mask[:,:,0] == 1] = [144, 238, 144][::-1]
        mixed = (0.8*np.asarray(image_resized) + 0.2*green_mask).astype(np.uint8)
        segmentation_result = mixed
        segmentation_result = cv2.resize(frame, (600, 480))
        #####################    

        try:
            segmented_image = self.bridge.cv2_to_imgmsg(segmentation_result, "bgr8")
            self.image_pub.publish(segmented_image)
        except CvBridgeError as e:
            rospy.logerr("CvBridge Error: {0}".format(e))

if __name__ == '__main__':
    grass_segmentor = GrassSegmentationNode()
    rospy.spin()