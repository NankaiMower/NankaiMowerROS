;; Auto-generated. Do not edit!


(when (boundp 'mower_map::GetMowingAreaSrv)
  (if (not (find-package "MOWER_MAP"))
    (make-package "MOWER_MAP"))
  (shadow 'GetMowingAreaSrv (find-package "MOWER_MAP")))
(unless (find-package "MOWER_MAP::GETMOWINGAREASRV")
  (make-package "MOWER_MAP::GETMOWINGAREASRV"))
(unless (find-package "MOWER_MAP::GETMOWINGAREASRVREQUEST")
  (make-package "MOWER_MAP::GETMOWINGAREASRVREQUEST"))
(unless (find-package "MOWER_MAP::GETMOWINGAREASRVRESPONSE")
  (make-package "MOWER_MAP::GETMOWINGAREASRVRESPONSE"))

(in-package "ROS")





(defclass mower_map::GetMowingAreaSrvRequest
  :super ros::object
  :slots (_index ))

(defmethod mower_map::GetMowingAreaSrvRequest
  (:init
   (&key
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _index (round __index))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; uint32 _index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _index
       (write-long _index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mower_map::GetMowingAreaSrvResponse
  :super ros::object
  :slots (_area ))

(defmethod mower_map::GetMowingAreaSrvResponse
  (:init
   (&key
    ((:area __area) (instance mower_map::MapArea :init))
    )
   (send-super :init)
   (setq _area __area)
   self)
  (:area
   (&rest __area)
   (if (keywordp (car __area))
       (send* _area __area)
     (progn
       (if __area (setq _area (car __area)))
       _area)))
  (:serialization-length
   ()
   (+
    ;; mower_map/MapArea _area
    (send _area :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mower_map/MapArea _area
       (send _area :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mower_map/MapArea _area
     (send _area :deserialize buf ptr-) (incf ptr- (send _area :serialization-length))
   ;;
   self)
  )

(defclass mower_map::GetMowingAreaSrv
  :super ros::object
  :slots ())

(setf (get mower_map::GetMowingAreaSrv :md5sum-) "01fc7e5fc49bba1c034cae41a19bf174")
(setf (get mower_map::GetMowingAreaSrv :datatype-) "mower_map/GetMowingAreaSrv")
(setf (get mower_map::GetMowingAreaSrv :request) mower_map::GetMowingAreaSrvRequest)
(setf (get mower_map::GetMowingAreaSrv :response) mower_map::GetMowingAreaSrvResponse)

(defmethod mower_map::GetMowingAreaSrvRequest
  (:response () (instance mower_map::GetMowingAreaSrvResponse :init)))

(setf (get mower_map::GetMowingAreaSrvRequest :md5sum-) "01fc7e5fc49bba1c034cae41a19bf174")
(setf (get mower_map::GetMowingAreaSrvRequest :datatype-) "mower_map/GetMowingAreaSrvRequest")
(setf (get mower_map::GetMowingAreaSrvRequest :definition-)
      "uint32 index
---
MapArea area

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
")

(setf (get mower_map::GetMowingAreaSrvResponse :md5sum-) "01fc7e5fc49bba1c034cae41a19bf174")
(setf (get mower_map::GetMowingAreaSrvResponse :datatype-) "mower_map/GetMowingAreaSrvResponse")
(setf (get mower_map::GetMowingAreaSrvResponse :definition-)
      "uint32 index
---
MapArea area

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
")



(provide :mower_map/GetMowingAreaSrv "01fc7e5fc49bba1c034cae41a19bf174")


