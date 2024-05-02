;; Auto-generated. Do not edit!


(when (boundp 'xbot_msgs::MapArea)
  (if (not (find-package "XBOT_MSGS"))
    (make-package "XBOT_MSGS"))
  (shadow 'MapArea (find-package "XBOT_MSGS")))
(unless (find-package "XBOT_MSGS::MAPAREA")
  (make-package "XBOT_MSGS::MAPAREA"))

(in-package "ROS")
;;//! \htmlinclude MapArea.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass xbot_msgs::MapArea
  :super ros::object
  :slots (_name _area _obstacles ))

(defmethod xbot_msgs::MapArea
  (:init
   (&key
    ((:name __name) "")
    ((:area __area) (instance geometry_msgs::Polygon :init))
    ((:obstacles __obstacles) ())
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _area __area)
   (setq _obstacles __obstacles)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:area
   (&rest __area)
   (if (keywordp (car __area))
       (send* _area __area)
     (progn
       (if __area (setq _area (car __area)))
       _area)))
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Polygon _area
    (send _area :serialization-length)
    ;; geometry_msgs/Polygon[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Polygon _area
       (send _area :serialize s)
     ;; geometry_msgs/Polygon[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Polygon _area
     (send _area :deserialize buf ptr-) (incf ptr- (send _area :serialization-length))
   ;; geometry_msgs/Polygon[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance geometry_msgs::Polygon :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get xbot_msgs::MapArea :md5sum-) "e05337fee1075a1bed5387053316b30b")
(setf (get xbot_msgs::MapArea :datatype-) "xbot_msgs/MapArea")
(setf (get xbot_msgs::MapArea :definition-)
      "string name
geometry_msgs/Polygon area
geometry_msgs/Polygon[] obstacles

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



(provide :xbot_msgs/MapArea "e05337fee1075a1bed5387053316b30b")


