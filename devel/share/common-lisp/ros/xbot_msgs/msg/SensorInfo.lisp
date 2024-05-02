; Auto-generated. Do not edit!


(cl:in-package xbot_msgs-msg)


;//! \htmlinclude SensorInfo.msg.html

(cl:defclass <SensorInfo> (roslisp-msg-protocol:ros-message)
  ((sensor_id
    :reader sensor_id
    :initarg :sensor_id
    :type cl:string
    :initform "")
   (sensor_name
    :reader sensor_name
    :initarg :sensor_name
    :type cl:string
    :initform "")
   (value_type
    :reader value_type
    :initarg :value_type
    :type cl:fixnum
    :initform 0)
   (value_description
    :reader value_description
    :initarg :value_description
    :type cl:fixnum
    :initform 0)
   (unit
    :reader unit
    :initarg :unit
    :type cl:string
    :initform "")
   (has_min_max
    :reader has_min_max
    :initarg :has_min_max
    :type cl:boolean
    :initform cl:nil)
   (min_value
    :reader min_value
    :initarg :min_value
    :type cl:float
    :initform 0.0)
   (max_value
    :reader max_value
    :initarg :max_value
    :type cl:float
    :initform 0.0)
   (has_critical_low
    :reader has_critical_low
    :initarg :has_critical_low
    :type cl:boolean
    :initform cl:nil)
   (lower_critical_value
    :reader lower_critical_value
    :initarg :lower_critical_value
    :type cl:float
    :initform 0.0)
   (has_critical_high
    :reader has_critical_high
    :initarg :has_critical_high
    :type cl:boolean
    :initform cl:nil)
   (upper_critical_value
    :reader upper_critical_value
    :initarg :upper_critical_value
    :type cl:float
    :initform 0.0))
)

(cl:defclass SensorInfo (<SensorInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xbot_msgs-msg:<SensorInfo> is deprecated: use xbot_msgs-msg:SensorInfo instead.")))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <SensorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:sensor_id-val is deprecated.  Use xbot_msgs-msg:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'sensor_name-val :lambda-list '(m))
(cl:defmethod sensor_name-val ((m <SensorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:sensor_name-val is deprecated.  Use xbot_msgs-msg:sensor_name instead.")
  (sensor_name m))

(cl:ensure-generic-function 'value_type-val :lambda-list '(m))
(cl:defmethod value_type-val ((m <SensorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:value_type-val is deprecated.  Use xbot_msgs-msg:value_type instead.")
  (value_type m))

(cl:ensure-generic-function 'value_description-val :lambda-list '(m))
(cl:defmethod value_description-val ((m <SensorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:value_description-val is deprecated.  Use xbot_msgs-msg:value_description instead.")
  (value_description m))

(cl:ensure-generic-function 'unit-val :lambda-list '(m))
(cl:defmethod unit-val ((m <SensorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:unit-val is deprecated.  Use xbot_msgs-msg:unit instead.")
  (unit m))

(cl:ensure-generic-function 'has_min_max-val :lambda-list '(m))
(cl:defmethod has_min_max-val ((m <SensorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:has_min_max-val is deprecated.  Use xbot_msgs-msg:has_min_max instead.")
  (has_min_max m))

(cl:ensure-generic-function 'min_value-val :lambda-list '(m))
(cl:defmethod min_value-val ((m <SensorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:min_value-val is deprecated.  Use xbot_msgs-msg:min_value instead.")
  (min_value m))

(cl:ensure-generic-function 'max_value-val :lambda-list '(m))
(cl:defmethod max_value-val ((m <SensorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:max_value-val is deprecated.  Use xbot_msgs-msg:max_value instead.")
  (max_value m))

(cl:ensure-generic-function 'has_critical_low-val :lambda-list '(m))
(cl:defmethod has_critical_low-val ((m <SensorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:has_critical_low-val is deprecated.  Use xbot_msgs-msg:has_critical_low instead.")
  (has_critical_low m))

(cl:ensure-generic-function 'lower_critical_value-val :lambda-list '(m))
(cl:defmethod lower_critical_value-val ((m <SensorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:lower_critical_value-val is deprecated.  Use xbot_msgs-msg:lower_critical_value instead.")
  (lower_critical_value m))

(cl:ensure-generic-function 'has_critical_high-val :lambda-list '(m))
(cl:defmethod has_critical_high-val ((m <SensorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:has_critical_high-val is deprecated.  Use xbot_msgs-msg:has_critical_high instead.")
  (has_critical_high m))

(cl:ensure-generic-function 'upper_critical_value-val :lambda-list '(m))
(cl:defmethod upper_critical_value-val ((m <SensorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:upper_critical_value-val is deprecated.  Use xbot_msgs-msg:upper_critical_value instead.")
  (upper_critical_value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SensorInfo>)))
    "Constants for message type '<SensorInfo>"
  '((:TYPE_STRING . 1)
    (:TYPE_DOUBLE . 2)
    (:VALUE_DESCRIPTION_TEMPERATURE . 1)
    (:VALUE_DESCRIPTION_VELOCITY . 2)
    (:VALUE_DESCRIPTION_ACCELERATION . 3)
    (:VALUE_DESCRIPTION_VOLTAGE . 4)
    (:VALUE_DESCRIPTION_CURRENT . 5)
    (:VALUE_DESCRIPTION_PERCENT . 6)
    (:FLAG_GPS_RTK . 1)
    (:FLAG_GPS_RTK_FIXED . 2)
    (:FLAG_GPS_RTK_FLOAT . 4)
    (:FLAG_GPS_DEAD_RECKONING . 8)
    (:FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE . 1)
    (:FLAG_SENSOR_FUSION_DEAD_RECKONING . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SensorInfo)))
    "Constants for message type 'SensorInfo"
  '((:TYPE_STRING . 1)
    (:TYPE_DOUBLE . 2)
    (:VALUE_DESCRIPTION_TEMPERATURE . 1)
    (:VALUE_DESCRIPTION_VELOCITY . 2)
    (:VALUE_DESCRIPTION_ACCELERATION . 3)
    (:VALUE_DESCRIPTION_VOLTAGE . 4)
    (:VALUE_DESCRIPTION_CURRENT . 5)
    (:VALUE_DESCRIPTION_PERCENT . 6)
    (:FLAG_GPS_RTK . 1)
    (:FLAG_GPS_RTK_FIXED . 2)
    (:FLAG_GPS_RTK_FLOAT . 4)
    (:FLAG_GPS_DEAD_RECKONING . 8)
    (:FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE . 1)
    (:FLAG_SENSOR_FUSION_DEAD_RECKONING . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorInfo>) ostream)
  "Serializes a message object of type '<SensorInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensor_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensor_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensor_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensor_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value_description)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unit))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_min_max) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_critical_low) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lower_critical_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_critical_high) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'upper_critical_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorInfo>) istream)
  "Deserializes a message object of type '<SensorInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensor_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensor_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value_description)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unit) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'unit) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'has_min_max) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'has_critical_low) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lower_critical_value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'has_critical_high) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'upper_critical_value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorInfo>)))
  "Returns string type for a message object of type '<SensorInfo>"
  "xbot_msgs/SensorInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorInfo)))
  "Returns string type for a message object of type 'SensorInfo"
  "xbot_msgs/SensorInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorInfo>)))
  "Returns md5sum for a message object of type '<SensorInfo>"
  "85f01359245544db1d778a444df1de31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorInfo)))
  "Returns md5sum for a message object of type 'SensorInfo"
  "85f01359245544db1d778a444df1de31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorInfo>)))
  "Returns full string definition for message of type '<SensorInfo>"
  (cl:format cl:nil "# an enum showing from which type of data the sensor delivers~%uint8 TYPE_STRING=1~%uint8 TYPE_DOUBLE=2~%~%uint8 VALUE_DESCRIPTION_TEMPERATURE=1~%uint8 VALUE_DESCRIPTION_VELOCITY=2~%uint8 VALUE_DESCRIPTION_ACCELERATION=3~%uint8 VALUE_DESCRIPTION_VOLTAGE=4~%uint8 VALUE_DESCRIPTION_CURRENT=5~%uint8 VALUE_DESCRIPTION_PERCENT=6~%~%# Some flags to describe the GPS fix better~%uint16 FLAG_GPS_RTK=1                   # True, if there are corrections applied~%uint16 FLAG_GPS_RTK_FIXED=2             # True, if we have a fixed solution~%uint16 FLAG_GPS_RTK_FLOAT=4             # True, if we have a float solution~%uint16 FLAG_GPS_DEAD_RECKONING=8        # True, if the GPS module is currently doing dead reckoning using its internal IMU~%~%uint16 FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE=1    # True, if we have a recent absolute position measurement (e.g. RTK GPS)~%uint16 FLAG_SENSOR_FUSION_DEAD_RECKONING=8          # True, if we have dead reckoning~%~%string sensor_id~%string sensor_name                      # A human readable name for this sensor~%uint8 value_type                        # Data type of sensor data to expect. Useful for parsing~%uint8 value_description                 # Description of the value (e.g. Temperature, Speed), may be used to display different kinds of widgets to the user~%string unit                             # Unit of the sensor data (e.g. \"V\" or \"m/s\")~%bool has_min_max                        # True, if min_value and max_value are valid~%float64 min_value                       # Absolute sensor min (e.g. used for rendering a gauge)~%float64 max_value                       # Absolute sensor max (e.g. used for rendering a gauge)~%bool has_critical_low                   # True, if there's a lower bound that's considered critical and a user should be warned about~%float64 lower_critical_value            # Any value below this is considered critical~%bool has_critical_high                  # True, if there's an upper bound that's considered critical~%float64 upper_critical_value            # Any value above this is considered critical~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorInfo)))
  "Returns full string definition for message of type 'SensorInfo"
  (cl:format cl:nil "# an enum showing from which type of data the sensor delivers~%uint8 TYPE_STRING=1~%uint8 TYPE_DOUBLE=2~%~%uint8 VALUE_DESCRIPTION_TEMPERATURE=1~%uint8 VALUE_DESCRIPTION_VELOCITY=2~%uint8 VALUE_DESCRIPTION_ACCELERATION=3~%uint8 VALUE_DESCRIPTION_VOLTAGE=4~%uint8 VALUE_DESCRIPTION_CURRENT=5~%uint8 VALUE_DESCRIPTION_PERCENT=6~%~%# Some flags to describe the GPS fix better~%uint16 FLAG_GPS_RTK=1                   # True, if there are corrections applied~%uint16 FLAG_GPS_RTK_FIXED=2             # True, if we have a fixed solution~%uint16 FLAG_GPS_RTK_FLOAT=4             # True, if we have a float solution~%uint16 FLAG_GPS_DEAD_RECKONING=8        # True, if the GPS module is currently doing dead reckoning using its internal IMU~%~%uint16 FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE=1    # True, if we have a recent absolute position measurement (e.g. RTK GPS)~%uint16 FLAG_SENSOR_FUSION_DEAD_RECKONING=8          # True, if we have dead reckoning~%~%string sensor_id~%string sensor_name                      # A human readable name for this sensor~%uint8 value_type                        # Data type of sensor data to expect. Useful for parsing~%uint8 value_description                 # Description of the value (e.g. Temperature, Speed), may be used to display different kinds of widgets to the user~%string unit                             # Unit of the sensor data (e.g. \"V\" or \"m/s\")~%bool has_min_max                        # True, if min_value and max_value are valid~%float64 min_value                       # Absolute sensor min (e.g. used for rendering a gauge)~%float64 max_value                       # Absolute sensor max (e.g. used for rendering a gauge)~%bool has_critical_low                   # True, if there's a lower bound that's considered critical and a user should be warned about~%float64 lower_critical_value            # Any value below this is considered critical~%bool has_critical_high                  # True, if there's an upper bound that's considered critical~%float64 upper_critical_value            # Any value above this is considered critical~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sensor_id))
     4 (cl:length (cl:slot-value msg 'sensor_name))
     1
     1
     4 (cl:length (cl:slot-value msg 'unit))
     1
     8
     8
     1
     8
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorInfo
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':sensor_name (sensor_name msg))
    (cl:cons ':value_type (value_type msg))
    (cl:cons ':value_description (value_description msg))
    (cl:cons ':unit (unit msg))
    (cl:cons ':has_min_max (has_min_max msg))
    (cl:cons ':min_value (min_value msg))
    (cl:cons ':max_value (max_value msg))
    (cl:cons ':has_critical_low (has_critical_low msg))
    (cl:cons ':lower_critical_value (lower_critical_value msg))
    (cl:cons ':has_critical_high (has_critical_high msg))
    (cl:cons ':upper_critical_value (upper_critical_value msg))
))
