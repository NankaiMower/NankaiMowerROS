;; Auto-generated. Do not edit!


(when (boundp 'xbot_msgs::RobotState)
  (if (not (find-package "XBOT_MSGS"))
    (make-package "XBOT_MSGS"))
  (shadow 'RobotState (find-package "XBOT_MSGS")))
(unless (find-package "XBOT_MSGS::ROBOTSTATE")
  (make-package "XBOT_MSGS::ROBOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude RobotState.msg.html


(defclass xbot_msgs::RobotState
  :super ros::object
  :slots (_battery_percentage _emergency _is_charging _gps_percentage _current_action_progress _current_state _current_sub_state _robot_pose ))

(defmethod xbot_msgs::RobotState
  (:init
   (&key
    ((:battery_percentage __battery_percentage) 0.0)
    ((:emergency __emergency) nil)
    ((:is_charging __is_charging) nil)
    ((:gps_percentage __gps_percentage) 0.0)
    ((:current_action_progress __current_action_progress) 0.0)
    ((:current_state __current_state) "")
    ((:current_sub_state __current_sub_state) "")
    ((:robot_pose __robot_pose) (instance xbot_msgs::AbsolutePose :init))
    )
   (send-super :init)
   (setq _battery_percentage (float __battery_percentage))
   (setq _emergency __emergency)
   (setq _is_charging __is_charging)
   (setq _gps_percentage (float __gps_percentage))
   (setq _current_action_progress (float __current_action_progress))
   (setq _current_state (string __current_state))
   (setq _current_sub_state (string __current_sub_state))
   (setq _robot_pose __robot_pose)
   self)
  (:battery_percentage
   (&optional __battery_percentage)
   (if __battery_percentage (setq _battery_percentage __battery_percentage)) _battery_percentage)
  (:emergency
   (&optional (__emergency :null))
   (if (not (eq __emergency :null)) (setq _emergency __emergency)) _emergency)
  (:is_charging
   (&optional (__is_charging :null))
   (if (not (eq __is_charging :null)) (setq _is_charging __is_charging)) _is_charging)
  (:gps_percentage
   (&optional __gps_percentage)
   (if __gps_percentage (setq _gps_percentage __gps_percentage)) _gps_percentage)
  (:current_action_progress
   (&optional __current_action_progress)
   (if __current_action_progress (setq _current_action_progress __current_action_progress)) _current_action_progress)
  (:current_state
   (&optional __current_state)
   (if __current_state (setq _current_state __current_state)) _current_state)
  (:current_sub_state
   (&optional __current_sub_state)
   (if __current_sub_state (setq _current_sub_state __current_sub_state)) _current_sub_state)
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
    ;; float32 _battery_percentage
    4
    ;; bool _emergency
    1
    ;; bool _is_charging
    1
    ;; float32 _gps_percentage
    4
    ;; float32 _current_action_progress
    4
    ;; string _current_state
    4 (length _current_state)
    ;; string _current_sub_state
    4 (length _current_sub_state)
    ;; xbot_msgs/AbsolutePose _robot_pose
    (send _robot_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _battery_percentage
       (sys::poke _battery_percentage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _emergency
       (if _emergency (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_charging
       (if _is_charging (write-byte -1 s) (write-byte 0 s))
     ;; float32 _gps_percentage
       (sys::poke _gps_percentage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_action_progress
       (sys::poke _current_action_progress (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _current_state
       (write-long (length _current_state) s) (princ _current_state s)
     ;; string _current_sub_state
       (write-long (length _current_sub_state) s) (princ _current_sub_state s)
     ;; xbot_msgs/AbsolutePose _robot_pose
       (send _robot_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _battery_percentage
     (setq _battery_percentage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _emergency
     (setq _emergency (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_charging
     (setq _is_charging (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _gps_percentage
     (setq _gps_percentage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_action_progress
     (setq _current_action_progress (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _current_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _current_sub_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_sub_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; xbot_msgs/AbsolutePose _robot_pose
     (send _robot_pose :deserialize buf ptr-) (incf ptr- (send _robot_pose :serialization-length))
   ;;
   self)
  )

(setf (get xbot_msgs::RobotState :md5sum-) "464ee74e3497a368ce97ed6ee7a18dcb")
(setf (get xbot_msgs::RobotState :datatype-) "xbot_msgs/RobotState")
(setf (get xbot_msgs::RobotState :definition-)
      "# A state to display to a human to tell what's going on
float32 battery_percentage
bool emergency
bool is_charging
float32 gps_percentage
float32 current_action_progress
string current_state                # Like \"Cleaning\"
string current_sub_state            # Like \"doing the dishes\"
xbot_msgs/AbsolutePose robot_pose # Pose of the docking station
================================================================================
MSG: xbot_msgs/AbsolutePose
# This message is used to describe the absolute pose measured by some sensor.
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



(provide :xbot_msgs/RobotState "464ee74e3497a368ce97ed6ee7a18dcb")


