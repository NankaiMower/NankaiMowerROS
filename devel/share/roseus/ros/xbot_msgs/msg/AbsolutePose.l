;; Auto-generated. Do not edit!


(when (boundp 'xbot_msgs::AbsolutePose)
  (if (not (find-package "XBOT_MSGS"))
    (make-package "XBOT_MSGS"))
  (shadow 'AbsolutePose (find-package "XBOT_MSGS")))
(unless (find-package "XBOT_MSGS::ABSOLUTEPOSE")
  (make-package "XBOT_MSGS::ABSOLUTEPOSE"))

(in-package "ROS")
;;//! \htmlinclude AbsolutePose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*SOURCE_GPS*" (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(shadow '*SOURCE_GPS* (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(defconstant xbot_msgs::AbsolutePose::*SOURCE_GPS* 1)
(intern "*SOURCE_LIGHTHOUSE*" (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(shadow '*SOURCE_LIGHTHOUSE* (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(defconstant xbot_msgs::AbsolutePose::*SOURCE_LIGHTHOUSE* 2)
(intern "*SOURCE_SENSOR_FUSION*" (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(shadow '*SOURCE_SENSOR_FUSION* (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(defconstant xbot_msgs::AbsolutePose::*SOURCE_SENSOR_FUSION* 100)
(intern "*FLAG_GPS_RTK*" (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(shadow '*FLAG_GPS_RTK* (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(defconstant xbot_msgs::AbsolutePose::*FLAG_GPS_RTK* 1)
(intern "*FLAG_GPS_RTK_FIXED*" (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(shadow '*FLAG_GPS_RTK_FIXED* (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(defconstant xbot_msgs::AbsolutePose::*FLAG_GPS_RTK_FIXED* 2)
(intern "*FLAG_GPS_RTK_FLOAT*" (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(shadow '*FLAG_GPS_RTK_FLOAT* (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(defconstant xbot_msgs::AbsolutePose::*FLAG_GPS_RTK_FLOAT* 4)
(intern "*FLAG_GPS_DEAD_RECKONING*" (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(shadow '*FLAG_GPS_DEAD_RECKONING* (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(defconstant xbot_msgs::AbsolutePose::*FLAG_GPS_DEAD_RECKONING* 8)
(intern "*FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE*" (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(shadow '*FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE* (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(defconstant xbot_msgs::AbsolutePose::*FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE* 1)
(intern "*FLAG_SENSOR_FUSION_DEAD_RECKONING*" (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(shadow '*FLAG_SENSOR_FUSION_DEAD_RECKONING* (find-package "XBOT_MSGS::ABSOLUTEPOSE"))
(defconstant xbot_msgs::AbsolutePose::*FLAG_SENSOR_FUSION_DEAD_RECKONING* 8)

(defun xbot_msgs::AbsolutePose-to-symbol (const)
  (cond
        ((= const 1) 'xbot_msgs::AbsolutePose::*SOURCE_GPS*)
        ((= const 2) 'xbot_msgs::AbsolutePose::*SOURCE_LIGHTHOUSE*)
        ((= const 100) 'xbot_msgs::AbsolutePose::*SOURCE_SENSOR_FUSION*)
        ((= const 1) 'xbot_msgs::AbsolutePose::*FLAG_GPS_RTK*)
        ((= const 2) 'xbot_msgs::AbsolutePose::*FLAG_GPS_RTK_FIXED*)
        ((= const 4) 'xbot_msgs::AbsolutePose::*FLAG_GPS_RTK_FLOAT*)
        ((= const 8) 'xbot_msgs::AbsolutePose::*FLAG_GPS_DEAD_RECKONING*)
        ((= const 1) 'xbot_msgs::AbsolutePose::*FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE*)
        ((= const 8) 'xbot_msgs::AbsolutePose::*FLAG_SENSOR_FUSION_DEAD_RECKONING*)
        (t nil)))

(defclass xbot_msgs::AbsolutePose
  :super ros::object
  :slots (_header _sensor_stamp _received_stamp _source _flags _orientation_valid _motion_vector_valid _position_accuracy _orientation_accuracy _pose _motion_vector _vehicle_heading _motion_heading ))

(defmethod xbot_msgs::AbsolutePose
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sensor_stamp __sensor_stamp) 0)
    ((:received_stamp __received_stamp) 0)
    ((:source __source) 0)
    ((:flags __flags) 0)
    ((:orientation_valid __orientation_valid) 0)
    ((:motion_vector_valid __motion_vector_valid) 0)
    ((:position_accuracy __position_accuracy) 0.0)
    ((:orientation_accuracy __orientation_accuracy) 0.0)
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:motion_vector __motion_vector) (instance geometry_msgs::Vector3 :init))
    ((:vehicle_heading __vehicle_heading) 0.0)
    ((:motion_heading __motion_heading) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _sensor_stamp (round __sensor_stamp))
   (setq _received_stamp (round __received_stamp))
   (setq _source (round __source))
   (setq _flags (round __flags))
   (setq _orientation_valid (round __orientation_valid))
   (setq _motion_vector_valid (round __motion_vector_valid))
   (setq _position_accuracy (float __position_accuracy))
   (setq _orientation_accuracy (float __orientation_accuracy))
   (setq _pose __pose)
   (setq _motion_vector __motion_vector)
   (setq _vehicle_heading (float __vehicle_heading))
   (setq _motion_heading (float __motion_heading))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sensor_stamp
   (&optional __sensor_stamp)
   (if __sensor_stamp (setq _sensor_stamp __sensor_stamp)) _sensor_stamp)
  (:received_stamp
   (&optional __received_stamp)
   (if __received_stamp (setq _received_stamp __received_stamp)) _received_stamp)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:orientation_valid
   (&optional __orientation_valid)
   (if __orientation_valid (setq _orientation_valid __orientation_valid)) _orientation_valid)
  (:motion_vector_valid
   (&optional __motion_vector_valid)
   (if __motion_vector_valid (setq _motion_vector_valid __motion_vector_valid)) _motion_vector_valid)
  (:position_accuracy
   (&optional __position_accuracy)
   (if __position_accuracy (setq _position_accuracy __position_accuracy)) _position_accuracy)
  (:orientation_accuracy
   (&optional __orientation_accuracy)
   (if __orientation_accuracy (setq _orientation_accuracy __orientation_accuracy)) _orientation_accuracy)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:motion_vector
   (&rest __motion_vector)
   (if (keywordp (car __motion_vector))
       (send* _motion_vector __motion_vector)
     (progn
       (if __motion_vector (setq _motion_vector (car __motion_vector)))
       _motion_vector)))
  (:vehicle_heading
   (&optional __vehicle_heading)
   (if __vehicle_heading (setq _vehicle_heading __vehicle_heading)) _vehicle_heading)
  (:motion_heading
   (&optional __motion_heading)
   (if __motion_heading (setq _motion_heading __motion_heading)) _motion_heading)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _sensor_stamp
    4
    ;; uint32 _received_stamp
    4
    ;; uint8 _source
    1
    ;; uint16 _flags
    2
    ;; uint8 _orientation_valid
    1
    ;; uint8 _motion_vector_valid
    1
    ;; float32 _position_accuracy
    4
    ;; float32 _orientation_accuracy
    4
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Vector3 _motion_vector
    (send _motion_vector :serialization-length)
    ;; float64 _vehicle_heading
    8
    ;; float64 _motion_heading
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _sensor_stamp
       (write-long _sensor_stamp s)
     ;; uint32 _received_stamp
       (write-long _received_stamp s)
     ;; uint8 _source
       (write-byte _source s)
     ;; uint16 _flags
       (write-word _flags s)
     ;; uint8 _orientation_valid
       (write-byte _orientation_valid s)
     ;; uint8 _motion_vector_valid
       (write-byte _motion_vector_valid s)
     ;; float32 _position_accuracy
       (sys::poke _position_accuracy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _orientation_accuracy
       (sys::poke _orientation_accuracy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Vector3 _motion_vector
       (send _motion_vector :serialize s)
     ;; float64 _vehicle_heading
       (sys::poke _vehicle_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _motion_heading
       (sys::poke _motion_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _sensor_stamp
     (setq _sensor_stamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _received_stamp
     (setq _received_stamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _source
     (setq _source (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _flags
     (setq _flags (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _orientation_valid
     (setq _orientation_valid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _motion_vector_valid
     (setq _motion_vector_valid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _position_accuracy
     (setq _position_accuracy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _orientation_accuracy
     (setq _orientation_accuracy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Vector3 _motion_vector
     (send _motion_vector :deserialize buf ptr-) (incf ptr- (send _motion_vector :serialization-length))
   ;; float64 _vehicle_heading
     (setq _vehicle_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _motion_heading
     (setq _motion_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get xbot_msgs::AbsolutePose :md5sum-) "ca30a78465d73c61712ddbbfef2442b7")
(setf (get xbot_msgs::AbsolutePose :datatype-) "xbot_msgs/AbsolutePose")
(setf (get xbot_msgs::AbsolutePose :definition-)
      "# This message is used to describe the absolute pose measured by some sensor.
# Usually the data will be noisy and might optionally include an orientation estimate.
# We can assume that this position is drift free.

# an enum showing from which type of absolute sensor the data originates
uint8 SOURCE_GPS=1
uint8 SOURCE_LIGHTHOUSE=2
uint8 SOURCE_SENSOR_FUSION=100

# Some flags to describe the GPS fix better
uint16 FLAG_GPS_RTK=1                   # True, if there are corrections applied
uint16 FLAG_GPS_RTK_FIXED=2             # True, if we have a fixed solution
uint16 FLAG_GPS_RTK_FLOAT=4             # True, if we have a float solution
uint16 FLAG_GPS_DEAD_RECKONING=8        # True, if the GPS module is currently doing dead reckoning using its internal IMU

uint16 FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE=1    # True, if we have a recent absolute position measurement (e.g. RTK GPS)
uint16 FLAG_SENSOR_FUSION_DEAD_RECKONING=8          # True, if we have dead reckoning



std_msgs/Header header
uint32 sensor_stamp                     # A timestamp sent by the sensor, 0 for source = sensor fusion
uint32 received_stamp                   # A timestamp taken on receive, 0 for source = sensor fusion

uint8 source
uint16 flags                            # Flags specific to the source
uint8 orientation_valid                 # Set to true, if the sensor can also measure orientation. This applies to orientation and vehicle_heading
uint8 motion_vector_valid               # Set to true, if the speed vector is valid. This also applies to the motion_heading.
float32 position_accuracy               # Set to the estimated accuracy in m
float32 orientation_accuracy            # Set to the estimated orientation accuracy in rad
geometry_msgs/PoseWithCovariance pose   # The pose measured by the sensor
geometry_msgs/Vector3 motion_vector     # Vector of motion in m/s
float64 vehicle_heading                 # The yaw for the orientation
float64 motion_heading                  # The yaw for the motion vector



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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :xbot_msgs/AbsolutePose "ca30a78465d73c61712ddbbfef2442b7")


