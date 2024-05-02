;; Auto-generated. Do not edit!


(when (boundp 'xbot_positioning::SetPoseSrv)
  (if (not (find-package "XBOT_POSITIONING"))
    (make-package "XBOT_POSITIONING"))
  (shadow 'SetPoseSrv (find-package "XBOT_POSITIONING")))
(unless (find-package "XBOT_POSITIONING::SETPOSESRV")
  (make-package "XBOT_POSITIONING::SETPOSESRV"))
(unless (find-package "XBOT_POSITIONING::SETPOSESRVREQUEST")
  (make-package "XBOT_POSITIONING::SETPOSESRVREQUEST"))
(unless (find-package "XBOT_POSITIONING::SETPOSESRVRESPONSE")
  (make-package "XBOT_POSITIONING::SETPOSESRVRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass xbot_positioning::SetPoseSrvRequest
  :super ros::object
  :slots (_robot_pose ))

(defmethod xbot_positioning::SetPoseSrvRequest
  (:init
   (&key
    ((:robot_pose __robot_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _robot_pose __robot_pose)
   self)
  (:robot_pose
   (&rest __robot_pose)
   (if (keywordp (car __robot_pose))
       (send* _robot_pose __robot_pose)
     (progn
       (if __robot_pose (setq _robot_pose (car __robot_pose)))
       _robot_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _robot_pose
    (send _robot_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _robot_pose
       (send _robot_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _robot_pose
     (send _robot_pose :deserialize buf ptr-) (incf ptr- (send _robot_pose :serialization-length))
   ;;
   self)
  )

(defclass xbot_positioning::SetPoseSrvResponse
  :super ros::object
  :slots ())

(defmethod xbot_positioning::SetPoseSrvResponse
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

(defclass xbot_positioning::SetPoseSrv
  :super ros::object
  :slots ())

(setf (get xbot_positioning::SetPoseSrv :md5sum-) "a1e8e42f88161a7bc7869c4cb33b8e1e")
(setf (get xbot_positioning::SetPoseSrv :datatype-) "xbot_positioning/SetPoseSrv")
(setf (get xbot_positioning::SetPoseSrv :request) xbot_positioning::SetPoseSrvRequest)
(setf (get xbot_positioning::SetPoseSrv :response) xbot_positioning::SetPoseSrvResponse)

(defmethod xbot_positioning::SetPoseSrvRequest
  (:response () (instance xbot_positioning::SetPoseSrvResponse :init)))

(setf (get xbot_positioning::SetPoseSrvRequest :md5sum-) "a1e8e42f88161a7bc7869c4cb33b8e1e")
(setf (get xbot_positioning::SetPoseSrvRequest :datatype-) "xbot_positioning/SetPoseSrvRequest")
(setf (get xbot_positioning::SetPoseSrvRequest :definition-)
      "geometry_msgs/Pose robot_pose

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

(setf (get xbot_positioning::SetPoseSrvResponse :md5sum-) "a1e8e42f88161a7bc7869c4cb33b8e1e")
(setf (get xbot_positioning::SetPoseSrvResponse :datatype-) "xbot_positioning/SetPoseSrvResponse")
(setf (get xbot_positioning::SetPoseSrvResponse :definition-)
      "geometry_msgs/Pose robot_pose

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



(provide :xbot_positioning/SetPoseSrv "a1e8e42f88161a7bc7869c4cb33b8e1e")


