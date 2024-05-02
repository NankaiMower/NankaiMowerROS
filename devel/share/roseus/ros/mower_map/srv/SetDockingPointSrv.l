;; Auto-generated. Do not edit!


(when (boundp 'mower_map::SetDockingPointSrv)
  (if (not (find-package "MOWER_MAP"))
    (make-package "MOWER_MAP"))
  (shadow 'SetDockingPointSrv (find-package "MOWER_MAP")))
(unless (find-package "MOWER_MAP::SETDOCKINGPOINTSRV")
  (make-package "MOWER_MAP::SETDOCKINGPOINTSRV"))
(unless (find-package "MOWER_MAP::SETDOCKINGPOINTSRVREQUEST")
  (make-package "MOWER_MAP::SETDOCKINGPOINTSRVREQUEST"))
(unless (find-package "MOWER_MAP::SETDOCKINGPOINTSRVRESPONSE")
  (make-package "MOWER_MAP::SETDOCKINGPOINTSRVRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass mower_map::SetDockingPointSrvRequest
  :super ros::object
  :slots (_docking_pose ))

(defmethod mower_map::SetDockingPointSrvRequest
  (:init
   (&key
    ((:docking_pose __docking_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _docking_pose __docking_pose)
   self)
  (:docking_pose
   (&rest __docking_pose)
   (if (keywordp (car __docking_pose))
       (send* _docking_pose __docking_pose)
     (progn
       (if __docking_pose (setq _docking_pose (car __docking_pose)))
       _docking_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _docking_pose
    (send _docking_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _docking_pose
       (send _docking_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _docking_pose
     (send _docking_pose :deserialize buf ptr-) (incf ptr- (send _docking_pose :serialization-length))
   ;;
   self)
  )

(defclass mower_map::SetDockingPointSrvResponse
  :super ros::object
  :slots ())

(defmethod mower_map::SetDockingPointSrvResponse
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

(defclass mower_map::SetDockingPointSrv
  :super ros::object
  :slots ())

(setf (get mower_map::SetDockingPointSrv :md5sum-) "082f2ff1dbfba9861dd424f93f126a35")
(setf (get mower_map::SetDockingPointSrv :datatype-) "mower_map/SetDockingPointSrv")
(setf (get mower_map::SetDockingPointSrv :request) mower_map::SetDockingPointSrvRequest)
(setf (get mower_map::SetDockingPointSrv :response) mower_map::SetDockingPointSrvResponse)

(defmethod mower_map::SetDockingPointSrvRequest
  (:response () (instance mower_map::SetDockingPointSrvResponse :init)))

(setf (get mower_map::SetDockingPointSrvRequest :md5sum-) "082f2ff1dbfba9861dd424f93f126a35")
(setf (get mower_map::SetDockingPointSrvRequest :datatype-) "mower_map/SetDockingPointSrvRequest")
(setf (get mower_map::SetDockingPointSrvRequest :definition-)
      "geometry_msgs/Pose docking_pose

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

(setf (get mower_map::SetDockingPointSrvResponse :md5sum-) "082f2ff1dbfba9861dd424f93f126a35")
(setf (get mower_map::SetDockingPointSrvResponse :datatype-) "mower_map/SetDockingPointSrvResponse")
(setf (get mower_map::SetDockingPointSrvResponse :definition-)
      "geometry_msgs/Pose docking_pose

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



(provide :mower_map/SetDockingPointSrv "082f2ff1dbfba9861dd424f93f126a35")


