;; Auto-generated. Do not edit!


(when (boundp 'mower_map::AddMowingAreaSrv)
  (if (not (find-package "MOWER_MAP"))
    (make-package "MOWER_MAP"))
  (shadow 'AddMowingAreaSrv (find-package "MOWER_MAP")))
(unless (find-package "MOWER_MAP::ADDMOWINGAREASRV")
  (make-package "MOWER_MAP::ADDMOWINGAREASRV"))
(unless (find-package "MOWER_MAP::ADDMOWINGAREASRVREQUEST")
  (make-package "MOWER_MAP::ADDMOWINGAREASRVREQUEST"))
(unless (find-package "MOWER_MAP::ADDMOWINGAREASRVRESPONSE")
  (make-package "MOWER_MAP::ADDMOWINGAREASRVRESPONSE"))

(in-package "ROS")





(defclass mower_map::AddMowingAreaSrvRequest
  :super ros::object
  :slots (_area _isNavigationArea ))

(defmethod mower_map::AddMowingAreaSrvRequest
  (:init
   (&key
    ((:area __area) (instance mower_map::MapArea :init))
    ((:isNavigationArea __isNavigationArea) nil)
    )
   (send-super :init)
   (setq _area __area)
   (setq _isNavigationArea __isNavigationArea)
   self)
  (:area
   (&rest __area)
   (if (keywordp (car __area))
       (send* _area __area)
     (progn
       (if __area (setq _area (car __area)))
       _area)))
  (:isNavigationArea
   (&optional (__isNavigationArea :null))
   (if (not (eq __isNavigationArea :null)) (setq _isNavigationArea __isNavigationArea)) _isNavigationArea)
  (:serialization-length
   ()
   (+
    ;; mower_map/MapArea _area
    (send _area :serialization-length)
    ;; bool _isNavigationArea
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mower_map/MapArea _area
       (send _area :serialize s)
     ;; bool _isNavigationArea
       (if _isNavigationArea (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mower_map/MapArea _area
     (send _area :deserialize buf ptr-) (incf ptr- (send _area :serialization-length))
   ;; bool _isNavigationArea
     (setq _isNavigationArea (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mower_map::AddMowingAreaSrvResponse
  :super ros::object
  :slots ())

(defmethod mower_map::AddMowingAreaSrvResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mower_map::AddMowingAreaSrv
  :super ros::object
  :slots ())

(setf (get mower_map::AddMowingAreaSrv :md5sum-) "b3ef56ffad622c37e65aec1dd5ae39a7")
(setf (get mower_map::AddMowingAreaSrv :datatype-) "mower_map/AddMowingAreaSrv")
(setf (get mower_map::AddMowingAreaSrv :request) mower_map::AddMowingAreaSrvRequest)
(setf (get mower_map::AddMowingAreaSrv :response) mower_map::AddMowingAreaSrvResponse)

(defmethod mower_map::AddMowingAreaSrvRequest
  (:response () (instance mower_map::AddMowingAreaSrvResponse :init)))

(setf (get mower_map::AddMowingAreaSrvRequest :md5sum-) "b3ef56ffad622c37e65aec1dd5ae39a7")
(setf (get mower_map::AddMowingAreaSrvRequest :datatype-) "mower_map/AddMowingAreaSrvRequest")
(setf (get mower_map::AddMowingAreaSrvRequest :definition-)
      "MapArea area
bool isNavigationArea

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
---
")

(setf (get mower_map::AddMowingAreaSrvResponse :md5sum-) "b3ef56ffad622c37e65aec1dd5ae39a7")
(setf (get mower_map::AddMowingAreaSrvResponse :datatype-) "mower_map/AddMowingAreaSrvResponse")
(setf (get mower_map::AddMowingAreaSrvResponse :definition-)
      "MapArea area
bool isNavigationArea

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
---
")



(provide :mower_map/AddMowingAreaSrv "b3ef56ffad622c37e65aec1dd5ae39a7")


