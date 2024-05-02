; Auto-generated. Do not edit!


(cl:in-package xbot_msgs-msg)


;//! \htmlinclude RobotState.msg.html

(cl:defclass <RobotState> (roslisp-msg-protocol:ros-message)
  ((battery_percentage
    :reader battery_percentage
    :initarg :battery_percentage
    :type cl:float
    :initform 0.0)
   (emergency
    :reader emergency
    :initarg :emergency
    :type cl:boolean
    :initform cl:nil)
   (is_charging
    :reader is_charging
    :initarg :is_charging
    :type cl:boolean
    :initform cl:nil)
   (gps_percentage
    :reader gps_percentage
    :initarg :gps_percentage
    :type cl:float
    :initform 0.0)
   (current_action_progress
    :reader current_action_progress
    :initarg :current_action_progress
    :type cl:float
    :initform 0.0)
   (current_state
    :reader current_state
    :initarg :current_state
    :type cl:string
    :initform "")
   (current_sub_state
    :reader current_sub_state
    :initarg :current_sub_state
    :type cl:string
    :initform "")
   (robot_pose
    :reader robot_pose
    :initarg :robot_pose
    :type xbot_msgs-msg:AbsolutePose
    :initform (cl:make-instance 'xbot_msgs-msg:AbsolutePose)))
)

(cl:defclass RobotState (<RobotState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xbot_msgs-msg:<RobotState> is deprecated: use xbot_msgs-msg:RobotState instead.")))

(cl:ensure-generic-function 'battery_percentage-val :lambda-list '(m))
(cl:defmethod battery_percentage-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:battery_percentage-val is deprecated.  Use xbot_msgs-msg:battery_percentage instead.")
  (battery_percentage m))

(cl:ensure-generic-function 'emergency-val :lambda-list '(m))
(cl:defmethod emergency-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:emergency-val is deprecated.  Use xbot_msgs-msg:emergency instead.")
  (emergency m))

(cl:ensure-generic-function 'is_charging-val :lambda-list '(m))
(cl:defmethod is_charging-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:is_charging-val is deprecated.  Use xbot_msgs-msg:is_charging instead.")
  (is_charging m))

(cl:ensure-generic-function 'gps_percentage-val :lambda-list '(m))
(cl:defmethod gps_percentage-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:gps_percentage-val is deprecated.  Use xbot_msgs-msg:gps_percentage instead.")
  (gps_percentage m))

(cl:ensure-generic-function 'current_action_progress-val :lambda-list '(m))
(cl:defmethod current_action_progress-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:current_action_progress-val is deprecated.  Use xbot_msgs-msg:current_action_progress instead.")
  (current_action_progress m))

(cl:ensure-generic-function 'current_state-val :lambda-list '(m))
(cl:defmethod current_state-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:current_state-val is deprecated.  Use xbot_msgs-msg:current_state instead.")
  (current_state m))

(cl:ensure-generic-function 'current_sub_state-val :lambda-list '(m))
(cl:defmethod current_sub_state-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:current_sub_state-val is deprecated.  Use xbot_msgs-msg:current_sub_state instead.")
  (current_sub_state m))

(cl:ensure-generic-function 'robot_pose-val :lambda-list '(m))
(cl:defmethod robot_pose-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:robot_pose-val is deprecated.  Use xbot_msgs-msg:robot_pose instead.")
  (robot_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotState>) ostream)
  "Serializes a message object of type '<RobotState>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_charging) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gps_percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_action_progress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_sub_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_sub_state))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotState>) istream)
  "Deserializes a message object of type '<RobotState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_percentage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'emergency) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_charging) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gps_percentage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_action_progress) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_sub_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_sub_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotState>)))
  "Returns string type for a message object of type '<RobotState>"
  "xbot_msgs/RobotState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotState)))
  "Returns string type for a message object of type 'RobotState"
  "xbot_msgs/RobotState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotState>)))
  "Returns md5sum for a message object of type '<RobotState>"
  "464ee74e3497a368ce97ed6ee7a18dcb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotState)))
  "Returns md5sum for a message object of type 'RobotState"
  "464ee74e3497a368ce97ed6ee7a18dcb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotState>)))
  "Returns full string definition for message of type '<RobotState>"
  (cl:format cl:nil "# A state to display to a human to tell what's going on~%float32 battery_percentage~%bool emergency~%bool is_charging~%float32 gps_percentage~%float32 current_action_progress~%string current_state                # Like \"Cleaning\"~%string current_sub_state            # Like \"doing the dishes\"~%xbot_msgs/AbsolutePose robot_pose # Pose of the docking station~%================================================================================~%MSG: xbot_msgs/AbsolutePose~%# This message is used to describe the absolute pose measured by some sensor.~%# Usually the data will be noisy and might optionally include an orientation estimate.~%# We can assume that this position is drift free.~%~%# an enum showing from which type of absolute sensor the data originates~%uint8 SOURCE_GPS=1~%uint8 SOURCE_LIGHTHOUSE=2~%uint8 SOURCE_SENSOR_FUSION=100~%~%# Some flags to describe the GPS fix better~%uint16 FLAG_GPS_RTK=1                   # True, if there are corrections applied~%uint16 FLAG_GPS_RTK_FIXED=2             # True, if we have a fixed solution~%uint16 FLAG_GPS_RTK_FLOAT=4             # True, if we have a float solution~%uint16 FLAG_GPS_DEAD_RECKONING=8        # True, if the GPS module is currently doing dead reckoning using its internal IMU~%~%uint16 FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE=1    # True, if we have a recent absolute position measurement (e.g. RTK GPS)~%uint16 FLAG_SENSOR_FUSION_DEAD_RECKONING=8          # True, if we have dead reckoning~%~%~%~%std_msgs/Header header~%uint32 sensor_stamp                     # A timestamp sent by the sensor, 0 for source = sensor fusion~%uint32 received_stamp                   # A timestamp taken on receive, 0 for source = sensor fusion~%~%uint8 source~%uint16 flags                            # Flags specific to the source~%uint8 orientation_valid                 # Set to true, if the sensor can also measure orientation. This applies to orientation and vehicle_heading~%uint8 motion_vector_valid               # Set to true, if the speed vector is valid. This also applies to the motion_heading.~%float32 position_accuracy               # Set to the estimated accuracy in m~%float32 orientation_accuracy            # Set to the estimated orientation accuracy in rad~%geometry_msgs/PoseWithCovariance pose   # The pose measured by the sensor~%geometry_msgs/Vector3 motion_vector     # Vector of motion in m/s~%float64 vehicle_heading                 # The yaw for the orientation~%float64 motion_heading                  # The yaw for the motion vector~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotState)))
  "Returns full string definition for message of type 'RobotState"
  (cl:format cl:nil "# A state to display to a human to tell what's going on~%float32 battery_percentage~%bool emergency~%bool is_charging~%float32 gps_percentage~%float32 current_action_progress~%string current_state                # Like \"Cleaning\"~%string current_sub_state            # Like \"doing the dishes\"~%xbot_msgs/AbsolutePose robot_pose # Pose of the docking station~%================================================================================~%MSG: xbot_msgs/AbsolutePose~%# This message is used to describe the absolute pose measured by some sensor.~%# Usually the data will be noisy and might optionally include an orientation estimate.~%# We can assume that this position is drift free.~%~%# an enum showing from which type of absolute sensor the data originates~%uint8 SOURCE_GPS=1~%uint8 SOURCE_LIGHTHOUSE=2~%uint8 SOURCE_SENSOR_FUSION=100~%~%# Some flags to describe the GPS fix better~%uint16 FLAG_GPS_RTK=1                   # True, if there are corrections applied~%uint16 FLAG_GPS_RTK_FIXED=2             # True, if we have a fixed solution~%uint16 FLAG_GPS_RTK_FLOAT=4             # True, if we have a float solution~%uint16 FLAG_GPS_DEAD_RECKONING=8        # True, if the GPS module is currently doing dead reckoning using its internal IMU~%~%uint16 FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE=1    # True, if we have a recent absolute position measurement (e.g. RTK GPS)~%uint16 FLAG_SENSOR_FUSION_DEAD_RECKONING=8          # True, if we have dead reckoning~%~%~%~%std_msgs/Header header~%uint32 sensor_stamp                     # A timestamp sent by the sensor, 0 for source = sensor fusion~%uint32 received_stamp                   # A timestamp taken on receive, 0 for source = sensor fusion~%~%uint8 source~%uint16 flags                            # Flags specific to the source~%uint8 orientation_valid                 # Set to true, if the sensor can also measure orientation. This applies to orientation and vehicle_heading~%uint8 motion_vector_valid               # Set to true, if the speed vector is valid. This also applies to the motion_heading.~%float32 position_accuracy               # Set to the estimated accuracy in m~%float32 orientation_accuracy            # Set to the estimated orientation accuracy in rad~%geometry_msgs/PoseWithCovariance pose   # The pose measured by the sensor~%geometry_msgs/Vector3 motion_vector     # Vector of motion in m/s~%float64 vehicle_heading                 # The yaw for the orientation~%float64 motion_heading                  # The yaw for the motion vector~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotState>))
  (cl:+ 0
     4
     1
     1
     4
     4
     4 (cl:length (cl:slot-value msg 'current_state))
     4 (cl:length (cl:slot-value msg 'current_sub_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotState>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotState
    (cl:cons ':battery_percentage (battery_percentage msg))
    (cl:cons ':emergency (emergency msg))
    (cl:cons ':is_charging (is_charging msg))
    (cl:cons ':gps_percentage (gps_percentage msg))
    (cl:cons ':current_action_progress (current_action_progress msg))
    (cl:cons ':current_state (current_state msg))
    (cl:cons ':current_sub_state (current_sub_state msg))
    (cl:cons ':robot_pose (robot_pose msg))
))
