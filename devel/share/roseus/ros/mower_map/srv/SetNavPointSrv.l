;; Auto-generated. Do not edit!


(when (boundp 'mower_map::SetNavPointSrv)
  (if (not (find-package "MOWER_MAP"))
    (make-package "MOWER_MAP"))
  (shadow 'SetNavPointSrv (find-package "MOWER_MAP")))
(unless (find-package "MOWER_MAP::SETNAVPOINTSRV")
  (make-package "MOWER_MAP::SETNAVPOINTSRV"))
(unless (find-package "MOWER_MAP::SETNAVPOINTSRVREQUEST")
  (make-package "MOWER_MAP::SETNAVPOINTSRVREQUEST"))
(unless (find-package "MOWER_MAP::SETNAVPOINTSRVRESPONSE")
  (make-package "MOWER_MAP::SETNAVPOINTSRVRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass mower_map::SetNavPointSrvRequest
  :super ros::object
  :slots (_nav_pose ))

(defmethod mower_map::SetNavPointSrvRequest
  (:init
   (&key
    ((:nav_pose __nav_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _nav_pose __nav_pose)
   self)
  (:nav_pose
   (&rest __nav_pose)
   (if (keywordp (car __nav_pose))
       (send* _nav_pose __nav_pose)
     (progn
       (if __nav_pose (setq _nav_pose (car __nav_pose)))
       _nav_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _nav_pose
    (send _nav_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _nav_pose
       (send _nav_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _nav_pose
     (send _nav_pose :deserialize buf ptr-) (incf ptr- (send _nav_pose :serialization-length))
   ;;
   self)
  )

(defclass mower_map::SetNavPointSrvResponse
  :super ros::object
  :slots ())

(defmethod mower_map::SetNavPointSrvResponse
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

(defclass mower_map::SetNavPointSrv
  :super ros::object
  :slots ())

(setf (get mower_map::SetNavPointSrv :md5sum-) "57762a01338710861d6dcc49f7745df2")
(setf (get mower_map::SetNavPointSrv :datatype-) "mower_map/SetNavPointSrv")
(setf (get mower_map::SetNavPointSrv :request) mower_map::SetNavPointSrvRequest)
(setf (get mower_map::SetNavPointSrv :response) mower_map::SetNavPointSrvResponse)

(defmethod mower_map::SetNavPointSrvRequest
  (:response () (instance mower_map::SetNavPointSrvResponse :init)))

(setf (get mower_map::SetNavPointSrvRequest :md5sum-) "57762a01338710861d6dcc49f7745df2")
(setf (get mower_map::SetNavPointSrvRequest :datatype-) "mower_map/SetNavPointSrvRequest")
(setf (get mower_map::SetNavPointSrvRequest :definition-)
      "geometry_msgs/Pose nav_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
")

(setf (get mower_map::SetNavPointSrvResponse :md5sum-) "57762a01338710861d6dcc49f7745df2")
(setf (get mower_map::SetNavPointSrvResponse :datatype-) "mower_map/SetNavPointSrvResponse")
(setf (get mower_map::SetNavPointSrvResponse :definition-)
      "geometry_msgs/Pose nav_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
")



(provide :mower_map/SetNavPointSrv "57762a01338710861d6dcc49f7745df2")


