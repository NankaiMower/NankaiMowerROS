;; Auto-generated. Do not edit!


(when (boundp 'mower_map::MapAreas)
  (if (not (find-package "MOWER_MAP"))
    (make-package "MOWER_MAP"))
  (shadow 'MapAreas (find-package "MOWER_MAP")))
(unless (find-package "MOWER_MAP::MAPAREAS")
  (make-package "MOWER_MAP::MAPAREAS"))

(in-package "ROS")
;;//! \htmlinclude MapAreas.msg.html


(defclass mower_map::MapAreas
  :super ros::object
  :slots (_mapWidth _mapHeight _mapCenterX _mapCenterY _navigationAreas _mowingAreas ))

(defmethod mower_map::MapAreas
  (:init
   (&key
    ((:mapWidth __mapWidth) 0.0)
    ((:mapHeight __mapHeight) 0.0)
    ((:mapCenterX __mapCenterX) 0.0)
    ((:mapCenterY __mapCenterY) 0.0)
    ((:navigationAreas __navigationAreas) ())
    ((:mowingAreas __mowingAreas) ())
    )
   (send-super :init)
   (setq _mapWidth (float __mapWidth))
   (setq _mapHeight (float __mapHeight))
   (setq _mapCenterX (float __mapCenterX))
   (setq _mapCenterY (float __mapCenterY))
   (setq _navigationAreas __navigationAreas)
   (setq _mowingAreas __mowingAreas)
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
  (:mowingAreas
   (&rest __mowingAreas)
   (if (keywordp (car __mowingAreas))
       (send* _mowingAreas __mowingAreas)
     (progn
       (if __mowingAreas (setq _mowingAreas (car __mowingAreas)))
       _mowingAreas)))
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
    ;; mower_map/MapArea[] _navigationAreas
    (apply #'+ (send-all _navigationAreas :serialization-length)) 4
    ;; mower_map/MapArea[] _mowingAreas
    (apply #'+ (send-all _mowingAreas :serialization-length)) 4
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
     ;; mower_map/MapArea[] _navigationAreas
     (write-long (length _navigationAreas) s)
     (dolist (elem _navigationAreas)
       (send elem :serialize s)
       )
     ;; mower_map/MapArea[] _mowingAreas
     (write-long (length _mowingAreas) s)
     (dolist (elem _mowingAreas)
       (send elem :serialize s)
       )
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
   ;; mower_map/MapArea[] _navigationAreas
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _navigationAreas (let (r) (dotimes (i n) (push (instance mower_map::MapArea :init) r)) r))
     (dolist (elem- _navigationAreas)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; mower_map/MapArea[] _mowingAreas
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mowingAreas (let (r) (dotimes (i n) (push (instance mower_map::MapArea :init) r)) r))
     (dolist (elem- _mowingAreas)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mower_map::MapAreas :md5sum-) "d3c611e824aac319a11694c960ef24a8")
(setf (get mower_map::MapAreas :datatype-) "mower_map/MapAreas")
(setf (get mower_map::MapAreas :definition-)
      "float64 mapWidth
float64 mapHeight
float64 mapCenterX
float64 mapCenterY
mower_map/MapArea[] navigationAreas
mower_map/MapArea[] mowingAreas
================================================================================
MSG: mower_map/MapArea
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



(provide :mower_map/MapAreas "d3c611e824aac319a11694c960ef24a8")


