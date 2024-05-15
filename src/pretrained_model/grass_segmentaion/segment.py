from PIL import Image
from pretrained_model.grass_segmentaion.deeplab import DeepLabModel
import numpy as np

import cv2

def seg_init(model_path):
    seg_model = DeepLabModel(model_path)
    print("seg model init done")
    return seg_model

if __name__ == '__main__':
    model_path = "grassSeg.tar.gz"
    img = Image.open("input.jpg")
    seg_model = seg_init(model_path)
    image_resized, image_mask= seg_model.run(img) 
    print(np.asarray(image_resized).shape)
    print(image_mask.shape)
    print((image_mask[:,:,0] == 1).shape)
    cv2.imwrite("./output.jpg",image_mask*255)
    image_resized.save('./input_resize.jpg')