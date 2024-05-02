;; Auto-generated. Do not edit!


(when (boundp 'slic3r_coverage_planner::PlanPath)
  (if (not (find-package "SLIC3R_COVERAGE_PLANNER"))
    (make-package "SLIC3R_COVERAGE_PLANNER"))
  (shadow 'PlanPath (find-package "SLIC3R_COVERAGE_PLANNER")))
(unless (find-package "SLIC3R_COVERAGE_PLANNER::PLANPATH")
  (make-package "SLIC3R_COVERAGE_PLANNER::PLANPATH"))
(unless (find-package "SLIC3R_COVERAGE_PLANNER::PLANPATHREQUEST")
  (make-package "SLIC3R_COVERAGE_PLANNER::PLANPATHREQUEST"))
(unless (find-package "SLIC3R_COVERAGE_PLANNER::PLANPATHRESPONSE")
  (make-package "SLIC3R_COVERAGE_PLANNER::PLANPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(intern "*FILL_LINEAR*" (find-package "SLIC3R_COVERAGE_PLANNER::PLANPATHREQUEST"))
(shadow '*FILL_LINEAR* (find-package "SLIC3R_COVERAGE_PLANNER::PLANPATHREQUEST"))
(defconstant slic3r_coverage_planner::PlanPathRequest::*FILL_LINEAR* 0)
(intern "*FILL_CONCENTRIC*" (find-package "SLIC3R_COVERAGE_PLANNER::PLANPATHREQUEST"))
(shadow '*FILL_CONCENTRIC* (find-package "SLIC3R_COVERAGE_PLANNER::PLANPATHREQUEST"))
(defconstant slic3r_coverage_planner::PlanPathRequest::*FILL_CONCENTRIC* 1)

(defun slic3r_coverage_planner::PlanPathRequest-to-symbol (const)
  (cond
        ((= const 0) 'slic3r_coverage_planner::PlanPathRequest::*FILL_LINEAR*)
        ((= const 1) 'slic3r_coverage_planner::PlanPathRequest::*FILL_CONCENTRIC*)
        (t nil)))

(defclass slic3r_coverage_planner::PlanPathRequest
  :super ros::object
  :slots (_fill_type _angle _distance _outer_offset _outline_count _outline _holes ))

(defmethod slic3r_coverage_planner::PlanPathRequest
  (:init
   (&key
    ((:fill_type __fill_type) 0)
    ((:angle __angle) 0.0)
    ((:distance __distance) 0.0)
    ((:outer_offset __outer_offset) 0.0)
    ((:outline_count __outline_count) 0)
    ((:outline __outline) (instance geometry_msgs::Polygon :init))
    ((:holes __holes) ())
    )
   (send-super :init)
   (setq _fill_type (round __fill_type))
   (setq _angle (float __angle))
   (setq _distance (float __distance))
   (setq _outer_offset (float __outer_offset))
   (setq _outline_count (round __outline_count))
   (setq _outline __outline)
   (setq _holes __holes)
   self)
  (:fill_type
   (&optional __fill_type)
   (if __fill_type (setq _fill_type __fill_type)) _fill_type)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:outer_offset
   (&optional __outer_offset)
   (if __outer_offset (setq _outer_offset __outer_offset)) _outer_offset)
  (:outline_count
   (&optional __outline_count)
   (if __outline_count (setq _outline_count __outline_count)) _outline_count)
  (:outline
   (&rest __outline)
   (if (keywordp (car __outline))
       (send* _outline __outline)
     (progn
       (if __outline (setq _outline (car __outline)))
       _outline)))
  (:holes
   (&rest __holes)
   (if (keywordp (car __holes))
       (send* _holes __holes)
     (progn
       (if __holes (setq _holes (car __holes)))
       _holes)))
  (:serialization-length
   ()
   (+
    ;; uint8 _fill_type
    1
    ;; float64 _angle
    8
    ;; float64 _distance
    8
    ;; float64 _outer_offset
    8
    ;; uint8 _outline_count
    1
    ;; geometry_msgs/Polygon _outline
    (send _outline :serialization-length)
    ;; geometry_msgs/Polygon[] _holes
    (apply #'+ (send-all _holes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _fill_type
       (write-byte _fill_type s)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _outer_offset
       (sys::poke _outer_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _outline_count
       (write-byte _outline_count s)
     ;; geometry_msgs/Polygon _outline
       (send _outline :serialize s)
     ;; geometry_msgs/Polygon[] _holes
     (write-long (length _holes) s)
     (dolist (elem _holes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _fill_type
     (setq _fill_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _outer_offset
     (setq _outer_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _outline_count
     (setq _outline_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Polygon _outline
     (send _outline :deserialize buf ptr-) (incf ptr- (send _outline :serialization-length))
   ;; geometry_msgs/Polygon[] _holes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _holes (let (r) (dotimes (i n) (push (instance geometry_msgs::Polygon :init) r)) r))
     (dolist (elem- _holes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass slic3r_coverage_planner::PlanPathResponse
  :super ros::object
  :slots (_paths ))

(defmethod slic3r_coverage_planner::PlanPathResponse
  (:init
   (&key
    ((:paths __paths) ())
    )
   (send-super :init)
   (setq _paths __paths)
   self)
  (:paths
   (&rest __paths)
   (if (keywordp (car __paths))
       (send* _paths __paths)
     (progn
       (if __paths (setq _paths (car __paths)))
       _paths)))
  (:serialization-length
   ()
   (+
    ;; slic3r_coverage_planner/Path[] _paths
    (apply #'+ (send-all _paths :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; slic3r_coverage_planner/Path[] _paths
     (write-long (length _paths) s)
     (dolist (elem _paths)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; slic3r_coverage_planner/Path[] _paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths (let (r) (dotimes (i n) (push (instance slic3r_coverage_planner::Path :init) r)) r))
     (dolist (elem- _paths)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass slic3r_coverage_planner::PlanPath
  :super ros::object
  :slots ())

(setf (get slic3r_coverage_planner::PlanPath :md5sum-) "3c4028e4b5701ed40697e69000eb7d4e")
(setf (get slic3r_coverage_planner::PlanPath :datatype-) "slic3r_coverage_planner/PlanPath")
(setf (get slic3r_coverage_planner::PlanPath :request) slic3r_coverage_planner::PlanPathRequest)
(setf (get slic3r_coverage_planner::PlanPath :response) slic3r_coverage_planner::PlanPathResponse)

(defmethod slic3r_coverage_planner::PlanPathRequest
  (:response () (instance slic3r_coverage_planner::PlanPathResponse :init)))

(setf (get slic3r_coverage_planner::PlanPathRequest :md5sum-) "3c4028e4b5701ed40697e69000eb7d4e")
(setf (get slic3r_coverage_planner::PlanPathRequest :datatype-) "slic3r_coverage_planner/PlanPathRequest")
(setf (get slic3r_coverage_planner::PlanPathRequest :definition-)
      "uint8 FILL_LINEAR=0
uint8 FILL_CONCENTRIC=1
uint8 fill_type
float64 angle
float64 distance
float64 outer_offset
uint8 outline_count
geometry_msgs/Polygon outline
geometry_msgs/Polygon[] holes

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
Path[] paths

================================================================================
MSG: slic3r_coverage_planner/Path
uint8 is_outline
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

(setf (get slic3r_coverage_planner::PlanPathResponse :md5sum-) "3c4028e4b5701ed40697e69000eb7d4e")
(setf (get slic3r_coverage_planner::PlanPathResponse :datatype-) "slic3r_coverage_planner/PlanPathResponse")
(setf (get slic3r_coverage_planner::PlanPathResponse :definition-)
      "uint8 FILL_LINEAR=0
uint8 FILL_CONCENTRIC=1
uint8 fill_type
float64 angle
float64 distance
float64 outer_offset
uint8 outline_count
geometry_msgs/Polygon outline
geometry_msgs/Polygon[] holes

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
Path[] paths

================================================================================
MSG: slic3r_coverage_planner/Path
uint8 is_outline
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



(provide :slic3r_coverage_planner/PlanPath "3c4028e4b5701ed40697e69000eb7d4e")


