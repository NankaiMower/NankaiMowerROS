; Auto-generated. Do not edit!


(cl:in-package xbot_msgs-msg)


;//! \htmlinclude AbsolutePose.msg.html

(cl:defclass <AbsolutePose> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sensor_stamp
    :reader sensor_stamp
    :initarg :sensor_stamp
    :type cl:integer
    :initform 0)
   (received_stamp
    :reader received_stamp
    :initarg :received_stamp
    :type cl:integer
    :initform 0)
   (source
    :reader source
    :initarg :source
    :type cl:fixnum
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (orientation_valid
    :reader orientation_valid
    :initarg :orientation_valid
    :type cl:fixnum
    :initform 0)
   (motion_vector_valid
    :reader motion_vector_valid
    :initarg :motion_vector_valid
    :type cl:fixnum
    :initform 0)
   (position_accuracy
    :reader position_accuracy
    :initarg :position_accuracy
    :type cl:float
    :initform 0.0)
   (orientation_accuracy
    :reader orientation_accuracy
    :initarg :orientation_accuracy
    :type cl:float
    :initform 0.0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (motion_vector
    :reader motion_vector
    :initarg :motion_vector
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (vehicle_heading
    :reader vehicle_heading
    :initarg :vehicle_heading
    :type cl:float
    :initform 0.0)
   (motion_heading
    :reader motion_heading
    :initarg :motion_heading
    :type cl:float
    :initform 0.0))
)

(cl:defclass AbsolutePose (<AbsolutePose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AbsolutePose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AbsolutePose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xbot_msgs-msg:<AbsolutePose> is deprecated: use xbot_msgs-msg:AbsolutePose instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AbsolutePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:header-val is deprecated.  Use xbot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sensor_stamp-val :lambda-list '(m))
(cl:defmethod sensor_stamp-val ((m <AbsolutePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:sensor_stamp-val is deprecated.  Use xbot_msgs-msg:sensor_stamp instead.")
  (sensor_stamp m))

(cl:ensure-generic-function 'received_stamp-val :lambda-list '(m))
(cl:defmethod received_stamp-val ((m <AbsolutePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:received_stamp-val is deprecated.  Use xbot_msgs-msg:received_stamp instead.")
  (received_stamp m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <AbsolutePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:source-val is deprecated.  Use xbot_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <AbsolutePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:flags-val is deprecated.  Use xbot_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'orientation_valid-val :lambda-list '(m))
(cl:defmethod orientation_valid-val ((m <AbsolutePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:orientation_valid-val is deprecated.  Use xbot_msgs-msg:orientation_valid instead.")
  (orientation_valid m))

(cl:ensure-generic-function 'motion_vector_valid-val :lambda-list '(m))
(cl:defmethod motion_vector_valid-val ((m <AbsolutePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:motion_vector_valid-val is deprecated.  Use xbot_msgs-msg:motion_vector_valid instead.")
  (motion_vector_valid m))

(cl:ensure-generic-function 'position_accuracy-val :lambda-list '(m))
(cl:defmethod position_accuracy-val ((m <AbsolutePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:position_accuracy-val is deprecated.  Use xbot_msgs-msg:position_accuracy instead.")
  (position_accuracy m))

(cl:ensure-generic-function 'orientation_accuracy-val :lambda-list '(m))
(cl:defmethod orientation_accuracy-val ((m <AbsolutePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:orientation_accuracy-val is deprecated.  Use xbot_msgs-msg:orientation_accuracy instead.")
  (orientation_accuracy m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <AbsolutePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:pose-val is deprecated.  Use xbot_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'motion_vector-val :lambda-list '(m))
(cl:defmethod motion_vector-val ((m <AbsolutePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:motion_vector-val is deprecated.  Use xbot_msgs-msg:motion_vector instead.")
  (motion_vector m))

(cl:ensure-generic-function 'vehicle_heading-val :lambda-list '(m))
(cl:defmethod vehicle_heading-val ((m <AbsolutePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:vehicle_heading-val is deprecated.  Use xbot_msgs-msg:vehicle_heading instead.")
  (vehicle_heading m))

(cl:ensure-generic-function 'motion_heading-val :lambda-list '(m))
(cl:defmethod motion_heading-val ((m <AbsolutePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:motion_heading-val is deprecated.  Use xbot_msgs-msg:motion_heading instead.")
  (motion_heading m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AbsolutePose>)))
    "Constants for message type '<AbsolutePose>"
  '((:SOURCE_GPS . 1)
    (:SOURCE_LIGHTHOUSE . 2)
    (:SOURCE_SENSOR_FUSION . 100)
    (:FLAG_GPS_RTK . 1)
    (:FLAG_GPS_RTK_FIXED . 2)
    (:FLAG_GPS_RTK_FLOAT . 4)
    (:FLAG_GPS_DEAD_RECKONING . 8)
    (:FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE . 1)
    (:FLAG_SENSOR_FUSION_DEAD_RECKONING . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AbsolutePose)))
    "Constants for message type 'AbsolutePose"
  '((:SOURCE_GPS . 1)
    (:SOURCE_LIGHTHOUSE . 2)
    (:SOURCE_SENSOR_FUSION . 100)
    (:FLAG_GPS_RTK . 1)
    (:FLAG_GPS_RTK_FIXED . 2)
    (:FLAG_GPS_RTK_FLOAT . 4)
    (:FLAG_GPS_DEAD_RECKONING . 8)
    (:FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE . 1)
    (:FLAG_SENSOR_FUSION_DEAD_RECKONING . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AbsolutePose>) ostream)
  "Serializes a message object of type '<AbsolutePose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'received_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'received_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'received_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'received_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orientation_valid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion_vector_valid)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_accuracy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'orientation_accuracy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motion_vector) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vehicle_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'motion_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AbsolutePose>) istream)
  "Deserializes a message object of type '<AbsolutePose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'received_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'received_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'received_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'received_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orientation_valid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion_vector_valid)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_accuracy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation_accuracy) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motion_vector) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vehicle_heading) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motion_heading) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AbsolutePose>)))
  "Returns string type for a message object of type '<AbsolutePose>"
  "xbot_msgs/AbsolutePose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AbsolutePose)))
  "Returns string type for a message object of type 'AbsolutePose"
  "xbot_msgs/AbsolutePose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AbsolutePose>)))
  "Returns md5sum for a message object of type '<AbsolutePose>"
  "ca30a78465d73c61712ddbbfef2442b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AbsolutePose)))
  "Returns md5sum for a message object of type 'AbsolutePose"
  "ca30a78465d73c61712ddbbfef2442b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AbsolutePose>)))
  "Returns full string definition for message of type '<AbsolutePose>"
  (cl:format cl:nil "# This message is used to describe the absolute pose measured by some sensor.~%# Usually the data will be noisy and might optionally include an orientation estimate.~%# We can assume that this position is drift free.~%~%# an enum showing from which type of absolute sensor the data originates~%uint8 SOURCE_GPS=1~%uint8 SOURCE_LIGHTHOUSE=2~%uint8 SOURCE_SENSOR_FUSION=100~%~%# Some flags to describe the GPS fix better~%uint16 FLAG_GPS_RTK=1                   # True, if there are corrections applied~%uint16 FLAG_GPS_RTK_FIXED=2             # True, if we have a fixed solution~%uint16 FLAG_GPS_RTK_FLOAT=4             # True, if we have a float solution~%uint16 FLAG_GPS_DEAD_RECKONING=8        # True, if the GPS module is currently doing dead reckoning using its internal IMU~%~%uint16 FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE=1    # True, if we have a recent absolute position measurement (e.g. RTK GPS)~%uint16 FLAG_SENSOR_FUSION_DEAD_RECKONING=8          # True, if we have dead reckoning~%~%~%~%std_msgs/Header header~%uint32 sensor_stamp                     # A timestamp sent by the sensor, 0 for source = sensor fusion~%uint32 received_stamp                   # A timestamp taken on receive, 0 for source = sensor fusion~%~%uint8 source~%uint16 flags                            # Flags specific to the source~%uint8 orientation_valid                 # Set to true, if the sensor can also measure orientation. This applies to orientation and vehicle_heading~%uint8 motion_vector_valid               # Set to true, if the speed vector is valid. This also applies to the motion_heading.~%float32 position_accuracy               # Set to the estimated accuracy in m~%float32 orientation_accuracy            # Set to the estimated orientation accuracy in rad~%geometry_msgs/PoseWithCovariance pose   # The pose measured by the sensor~%geometry_msgs/Vector3 motion_vector     # Vector of motion in m/s~%float64 vehicle_heading                 # The yaw for the orientation~%float64 motion_heading                  # The yaw for the motion vector~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AbsolutePose)))
  "Returns full string definition for message of type 'AbsolutePose"
  (cl:format cl:nil "# This message is used to describe the absolute pose measured by some sensor.~%# Usually the data will be noisy and might optionally include an orientation estimate.~%# We can assume that this position is drift free.~%~%# an enum showing from which type of absolute sensor the data originates~%uint8 SOURCE_GPS=1~%uint8 SOURCE_LIGHTHOUSE=2~%uint8 SOURCE_SENSOR_FUSION=100~%~%# Some flags to describe the GPS fix better~%uint16 FLAG_GPS_RTK=1                   # True, if there are corrections applied~%uint16 FLAG_GPS_RTK_FIXED=2             # True, if we have a fixed solution~%uint16 FLAG_GPS_RTK_FLOAT=4             # True, if we have a float solution~%uint16 FLAG_GPS_DEAD_RECKONING=8        # True, if the GPS module is currently doing dead reckoning using its internal IMU~%~%uint16 FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE=1    # True, if we have a recent absolute position measurement (e.g. RTK GPS)~%uint16 FLAG_SENSOR_FUSION_DEAD_RECKONING=8          # True, if we have dead reckoning~%~%~%~%std_msgs/Header header~%uint32 sensor_stamp                     # A timestamp sent by the sensor, 0 for source = sensor fusion~%uint32 received_stamp                   # A timestamp taken on receive, 0 for source = sensor fusion~%~%uint8 source~%uint16 flags                            # Flags specific to the source~%uint8 orientation_valid                 # Set to true, if the sensor can also measure orientation. This applies to orientation and vehicle_heading~%uint8 motion_vector_valid               # Set to true, if the speed vector is valid. This also applies to the motion_heading.~%float32 position_accuracy               # Set to the estimated accuracy in m~%float32 orientation_accuracy            # Set to the estimated orientation accuracy in rad~%geometry_msgs/PoseWithCovariance pose   # The pose measured by the sensor~%geometry_msgs/Vector3 motion_vector     # Vector of motion in m/s~%float64 vehicle_heading                 # The yaw for the orientation~%float64 motion_heading                  # The yaw for the motion vector~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AbsolutePose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     1
     2
     1
     1
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motion_vector))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AbsolutePose>))
  "Converts a ROS message object to a list"
  (cl:list 'AbsolutePose
    (cl:cons ':header (header msg))
    (cl:cons ':sensor_stamp (sensor_stamp msg))
    (cl:cons ':received_stamp (received_stamp msg))
    (cl:cons ':source (source msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':orientation_valid (orientation_valid msg))
    (cl:cons ':motion_vector_valid (motion_vector_valid msg))
    (cl:cons ':position_accuracy (position_accuracy msg))
    (cl:cons ':orientation_accuracy (orientation_accuracy msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':motion_vector (motion_vector msg))
    (cl:cons ':vehicle_heading (vehicle_heading msg))
    (cl:cons ':motion_heading (motion_heading msg))
))
