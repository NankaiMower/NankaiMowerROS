;; Auto-generated. Do not edit!


(when (boundp 'xbot_msgs::Map)
  (if (not (find-package "XBOT_MSGS"))
    (make-package "XBOT_MSGS"))
  (shadow 'Map (find-package "XBOT_MSGS")))
(unless (find-package "XBOT_MSGS::MAP")
  (make-package "XBOT_MSGS::MAP"))

(in-package "ROS")
;;//! \htmlinclude Map.msg.html


(defclass xbot_msgs::Map
  :super ros::object
  :slots (_mapWidth _mapHeight _mapCenterX _mapCenterY _navigationAreas _workingArea _dockX _dockY _dockHeading ))

(defmethod xbot_msgs::Map
  (:init
   (&key
    ((:mapWidth __mapWidth) 0.0)
    ((:mapHeight __mapHeight) 0.0)
    ((:mapCenterX __mapCenterX) 0.0)
    ((:mapCenterY __mapCenterY) 0.0)
    ((:navigationAreas __navigationAreas) ())
    ((:workingArea __workingArea) ())
    ((:dockX __dockX) 0.0)
    ((:dockY __dockY) 0.0)
    ((:dockHeading __dockHeading) 0.0)
    )
   (send-super :init)
   (setq _mapWidth (float __mapWidth))
   (setq _mapHeight (float __mapHeight))
   (setq _mapCenterX (float __mapCenterX))
   (setq _mapCenterY (float __mapCenterY))
   (setq _navigationAreas __navigationAreas)
   (setq _workingArea __workingArea)
   (setq _dockX (float __dockX))
   (setq _dockY (float __dockY))
   (setq _dockHeading (float __dockHeading))
   self)
  (:mapWidth
   (&optional __mapWidth)
   (if __mapWidth (setq _mapWidth __mapWidth)) _mapWidth)
  (:mapHeight
   (&optional __mapHeight)
   (if __mapHeight (setq _mapHeight __mapHeight)) _mapHeight)
  (:mapCenterX
   (&optional __mapCenterX)
   (if __mapCenterX (setq _mapCenterX __mapCenterX)) _mapCenterX)
  (:mapCenterY
   (&optional __mapCenterY)
   (if __mapCenterY (setq _mapCenterY __mapCenterY)) _mapCenterY)
  (:navigationAreas
   (&rest __navigationAreas)
   (if (keywordp (car __navigationAreas))
       (send* _navigationAreas __navigationAreas)
     (progn
       (if __navigationAreas (setq _navigationAreas (car __navigationAreas)))
       _navigationAreas)))
  (:workingArea
   (&rest __workingArea)
   (if (keywordp (car __workingArea))
       (send* _workingArea __workingArea)
     (progn
       (if __workingArea (setq _workingArea (car __workingArea)))
       _workingArea)))
  (:dockX
   (&optional __dockX)
   (if __dockX (setq _dockX __dockX)) _dockX)
  (:dockY
   (&optional __dockY)
   (if __dockY (setq _dockY __dockY)) _dockY)
  (:dockHeading
   (&optional __dockHeading)
   (if __dockHeading (setq _dockHeading __dockHeading)) _dockHeading)
  (:serialization-length
   ()
   (+
    ;; float64 _mapWidth
    8
    ;; float64 _mapHeight
    8
    ;; float64 _mapCenterX
    8
    ;; float64 _mapCenterY
    8
    ;; xbot_msgs/MapArea[] _navigationAreas
    (apply #'+ (send-all _navigationAreas :serialization-length)) 4
    ;; xbot_msgs/MapArea[] _workingArea
    (apply #'+ (send-all _workingArea :serialization-length)) 4
    ;; float64 _dockX
    8
    ;; float64 _dockY
    8
    ;; float64 _dockHeading
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _mapWidth
       (sys::poke _mapWidth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mapHeight
       (sys::poke _mapHeight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mapCenterX
       (sys::poke _mapCenterX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mapCenterY
       (sys::poke _mapCenterY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; xbot_msgs/MapArea[] _navigationAreas
     (write-long (length _navigationAreas) s)
     (dolist (elem _navigationAreas)
       (send elem :serialize s)
       )
     ;; xbot_msgs/MapArea[] _workingArea
     (write-long (length _workingArea) s)
     (dolist (elem _workingArea)
       (send elem :serialize s)
       )
     ;; float64 _dockX
       (sys::poke _dockX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dockY
       (sys::poke _dockY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dockHeading
       (sys::poke _dockHeading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _mapWidth
     (setq _mapWidth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mapHeight
     (setq _mapHeight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mapCenterX
     (setq _mapCenterX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mapCenterY
     (setq _mapCenterY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; xbot_msgs/MapArea[] _navigationAreas
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _navigationAreas (let (r) (dotimes (i n) (push (instance xbot_msgs::MapArea :init) r)) r))
     (dolist (elem- _navigationAreas)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; xbot_msgs/MapArea[] _workingArea
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _workingArea (let (r) (dotimes (i n) (push (instance xbot_msgs::MapArea :init) r)) r))
     (dolist (elem- _workingArea)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _dockX
     (setq _dockX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dockY
     (setq _dockY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dockHeading
     (setq _dockHeading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get xbot_msgs::Map :md5sum-) "0defc0a41c9dfac41eff99d1ae21f375")
(setf (get xbot_msgs::Map :datatype-) "xbot_msgs/Map")
(setf (get xbot_msgs::Map :definition-)
      "float64 mapWidth
float64 mapHeight
float64 mapCenterX
float64 mapCenterY
xbot_msgs/MapArea[] navigationAreas
xbot_msgs/MapArea[] workingArea
float64 dockX
float64 dockY
float64 dockHeading

================================================================================
MSG: xbot_msgs/MapArea
string name
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



(provide :xbot_msgs/Map "0defc0a41c9dfac41eff99d1ae21f375")


