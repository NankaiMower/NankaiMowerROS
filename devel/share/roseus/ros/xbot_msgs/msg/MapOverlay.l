;; Auto-generated. Do not edit!


(when (boundp 'xbot_msgs::MapOverlay)
  (if (not (find-package "XBOT_MSGS"))
    (make-package "XBOT_MSGS"))
  (shadow 'MapOverlay (find-package "XBOT_MSGS")))
(unless (find-package "XBOT_MSGS::MAPOVERLAY")
  (make-package "XBOT_MSGS::MAPOVERLAY"))

(in-package "ROS")
;;//! \htmlinclude MapOverlay.msg.html


(defclass xbot_msgs::MapOverlay
  :super ros::object
  :slots (_polygons ))

(defmethod xbot_msgs::MapOverlay
  (:init
   (&key
    ((:polygons __polygons) ())
    )
   (send-super :init)
   (setq _polygons __polygons)
   self)
  (:polygons
   (&rest __polygons)
   (if (keywordp (car __polygons))
       (send* _polygons __polygons)
     (progn
       (if __polygons (setq _polygons (car __polygons)))
       _polygons)))
  (:serialization-length
   ()
   (+
    ;; xbot_msgs/MapOverlayPolygon[] _polygons
    (apply #'+ (send-all _polygons :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; xbot_msgs/MapOverlayPolygon[] _polygons
     (write-long (length _polygons) s)
     (dolist (elem _polygons)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; xbot_msgs/MapOverlayPolygon[] _polygons
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygons (let (r) (dotimes (i n) (push (instance xbot_msgs::MapOverlayPolygon :init) r)) r))
     (dolist (elem- _polygons)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get xbot_msgs::MapOverlay :md5sum-) "6a3c1f3fd7ad5b5122b909dfbaf6cefa")
(setf (get xbot_msgs::MapOverlay :datatype-) "xbot_msgs/MapOverlay")
(setf (get xbot_msgs::MapOverlay :definition-)
      "MapOverlayPolygon[] polygons

================================================================================
MSG: xbot_msgs/MapOverlayPolygon
geometry_msgs/Polygon polygon
string color
bool closed
float32 line_width
================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :xbot_msgs/MapOverlay "6a3c1f3fd7ad5b5122b909dfbaf6cefa")


