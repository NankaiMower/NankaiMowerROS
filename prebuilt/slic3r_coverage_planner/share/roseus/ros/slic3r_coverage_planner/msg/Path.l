;; Auto-generated. Do not edit!


(when (boundp 'slic3r_coverage_planner::Path)
  (if (not (find-package "SLIC3R_COVERAGE_PLANNER"))
    (make-package "SLIC3R_COVERAGE_PLANNER"))
  (shadow 'Path (find-package "SLIC3R_COVERAGE_PLANNER")))
(unless (find-package "SLIC3R_COVERAGE_PLANNER::PATH")
  (make-package "SLIC3R_COVERAGE_PLANNER::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass slic3r_coverage_planner::Path
  :super ros::object
  :slots (_is_outline _path ))

(defmethod slic3r_coverage_planner::Path
  (:init
   (&key
    ((:is_outline __is_outline) 0)
    ((:path __path) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _is_outline (round __is_outline))
   (setq _path __path)
   self)
  (:is_outline
   (&optional __is_outline)
   (if __is_outline (setq _is_outline __is_outline)) _is_outline)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; uint8 _is_outline
    1
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _is_outline
       (write-byte _is_outline s)
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _is_outline
     (setq _is_outline (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;;
   self)
  )

(setf (get slic3r_coverage_planner::Path :md5sum-) "60d462a6fa4e8393828cd1e66919384e")
(setf (get slic3r_coverage_planner::Path :datatype-) "slic3r_coverage_planner/Path")
(setf (get slic3r_coverage_planner::Path :definition-)
      "uint8 is_outline
nav_msgs/Path path
================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :slic3r_coverage_planner/Path "60d462a6fa4e8393828cd1e66919384e")


