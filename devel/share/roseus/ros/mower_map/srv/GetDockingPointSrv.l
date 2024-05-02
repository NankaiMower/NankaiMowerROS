;; Auto-generated. Do not edit!


(when (boundp 'mower_map::GetDockingPointSrv)
  (if (not (find-package "MOWER_MAP"))
    (make-package "MOWER_MAP"))
  (shadow 'GetDockingPointSrv (find-package "MOWER_MAP")))
(unless (find-package "MOWER_MAP::GETDOCKINGPOINTSRV")
  (make-package "MOWER_MAP::GETDOCKINGPOINTSRV"))
(unless (find-package "MOWER_MAP::GETDOCKINGPOINTSRVREQUEST")
  (make-package "MOWER_MAP::GETDOCKINGPOINTSRVREQUEST"))
(unless (find-package "MOWER_MAP::GETDOCKINGPOINTSRVRESPONSE")
  (make-package "MOWER_MAP::GETDOCKINGPOINTSRVRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mower_map::GetDockingPointSrvRequest
  :super ros::object
  :slots ())

(defmethod mower_map::GetDockingPointSrvRequest
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

(defclass mower_map::GetDockingPointSrvResponse
  :super ros::object
  :slots (_docking_pose ))

(defmethod mower_map::GetDockingPointSrvResponse
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

(defclass mower_map::GetDockingPointSrv
  :super ros::object
  :slots ())

(setf (get mower_map::GetDockingPointSrv :md5sum-) "082f2ff1dbfba9861dd424f93f126a35")
(setf (get mower_map::GetDockingPointSrv :datatype-) "mower_map/GetDockingPointSrv")
(setf (get mower_map::GetDockingPointSrv :request) mower_map::GetDockingPointSrvRequest)
(setf (get mower_map::GetDockingPointSrv :response) mower_map::GetDockingPointSrvResponse)

(defmethod mower_map::GetDockingPointSrvRequest
  (:response () (instance mower_map::GetDockingPointSrvResponse :init)))

(setf (get mower_map::GetDockingPointSrvRequest :md5sum-) "082f2ff1dbfba9861dd424f93f126a35")
(setf (get mower_map::GetDockingPointSrvRequest :datatype-) "mower_map/GetDockingPointSrvRequest")
(setf (get mower_map::GetDockingPointSrvRequest :definition-)
      "---
geometry_msgs/Pose docking_pose

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
")

(setf (get mower_map::GetDockingPointSrvResponse :md5sum-) "082f2ff1dbfba9861dd424f93f126a35")
(setf (get mower_map::GetDockingPointSrvResponse :datatype-) "mower_map/GetDockingPointSrvResponse")
(setf (get mower_map::GetDockingPointSrvResponse :definition-)
      "---
geometry_msgs/Pose docking_pose

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
")



(provide :mower_map/GetDockingPointSrv "082f2ff1dbfba9861dd424f93f126a35")


