; Auto-generated. Do not edit!


(cl:in-package mower_msgs-msg)


;//! \htmlinclude HighLevelStatus.msg.html

(cl:defclass <HighLevelStatus> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (state_name
    :reader state_name
    :initarg :state_name
    :type cl:string
    :initform "")
   (sub_state_name
    :reader sub_state_name
    :initarg :sub_state_name
    :type cl:string
    :initform "")
   (gps_quality_percent
    :reader gps_quality_percent
    :initarg :gps_quality_percent
    :type cl:float
    :initform 0.0)
   (battery_percent
    :reader battery_percent
    :initarg :battery_percent
    :type cl:float
    :initform 0.0)
   (is_charging
    :reader is_charging
    :initarg :is_charging
    :type cl:boolean
    :initform cl:nil)
   (emergency
    :reader emergency
    :initarg :emergency
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HighLevelStatus (<HighLevelStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HighLevelStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HighLevelStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_msgs-msg:<HighLevelStatus> is deprecated: use mower_msgs-msg:HighLevelStatus instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <HighLevelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:state-val is deprecated.  Use mower_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'state_name-val :lambda-list '(m))
(cl:defmethod state_name-val ((m <HighLevelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:state_name-val is deprecated.  Use mower_msgs-msg:state_name instead.")
  (state_name m))

(cl:ensure-generic-function 'sub_state_name-val :lambda-list '(m))
(cl:defmethod sub_state_name-val ((m <HighLevelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:sub_state_name-val is deprecated.  Use mower_msgs-msg:sub_state_name instead.")
  (sub_state_name m))

(cl:ensure-generic-function 'gps_quality_percent-val :lambda-list '(m))
(cl:defmethod gps_quality_percent-val ((m <HighLevelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:gps_quality_percent-val is deprecated.  Use mower_msgs-msg:gps_quality_percent instead.")
  (gps_quality_percent m))

(cl:ensure-generic-function 'battery_percent-val :lambda-list '(m))
(cl:defmethod battery_percent-val ((m <HighLevelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:battery_percent-val is deprecated.  Use mower_msgs-msg:battery_percent instead.")
  (battery_percent m))

(cl:ensure-generic-function 'is_charging-val :lambda-list '(m))
(cl:defmethod is_charging-val ((m <HighLevelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:is_charging-val is deprecated.  Use mower_msgs-msg:is_charging instead.")
  (is_charging m))

(cl:ensure-generic-function 'emergency-val :lambda-list '(m))
(cl:defmethod emergency-val ((m <HighLevelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:emergency-val is deprecated.  Use mower_msgs-msg:emergency instead.")
  (emergency m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HighLevelStatus>)))
    "Constants for message type '<HighLevelStatus>"
  '((:HIGH_LEVEL_STATE_NULL . 0)
    (:HIGH_LEVEL_STATE_IDLE . 1)
    (:HIGH_LEVEL_STATE_AUTONOMOUS . 2)
    (:HIGH_LEVEL_STATE_RECORDING . 3)
    (:SUBSTATE_1 . 0)
    (:SUBSTATE_2 . 1)
    (:SUBSTATE_3 . 2)
    (:SUBSTATE_4 . 3)
    (:SUBSTATE_SHIFT . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HighLevelStatus)))
    "Constants for message type 'HighLevelStatus"
  '((:HIGH_LEVEL_STATE_NULL . 0)
    (:HIGH_LEVEL_STATE_IDLE . 1)
    (:HIGH_LEVEL_STATE_AUTONOMOUS . 2)
    (:HIGH_LEVEL_STATE_RECORDING . 3)
    (:SUBSTATE_1 . 0)
    (:SUBSTATE_2 . 1)
    (:SUBSTATE_3 . 2)
    (:SUBSTATE_4 . 3)
    (:SUBSTATE_SHIFT . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HighLevelStatus>) ostream)
  "Serializes a message object of type '<HighLevelStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sub_state_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sub_state_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gps_quality_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_charging) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HighLevelStatus>) istream)
  "Deserializes a message object of type '<HighLevelStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sub_state_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sub_state_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gps_quality_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_charging) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'emergency) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HighLevelStatus>)))
  "Returns string type for a message object of type '<HighLevelStatus>"
  "mower_msgs/HighLevelStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HighLevelStatus)))
  "Returns string type for a message object of type 'HighLevelStatus"
  "mower_msgs/HighLevelStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HighLevelStatus>)))
  "Returns md5sum for a message object of type '<HighLevelStatus>"
  "db5c3531ba581d4c594cc4da6f89eb3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HighLevelStatus)))
  "Returns md5sum for a message object of type 'HighLevelStatus"
  "db5c3531ba581d4c594cc4da6f89eb3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HighLevelStatus>)))
  "Returns full string definition for message of type '<HighLevelStatus>"
  (cl:format cl:nil "uint8 HIGH_LEVEL_STATE_NULL=0~%uint8 HIGH_LEVEL_STATE_IDLE=1~%uint8 HIGH_LEVEL_STATE_AUTONOMOUS=2~%uint8 HIGH_LEVEL_STATE_RECORDING=3~%~%uint8 SUBSTATE_1=0~%uint8 SUBSTATE_2=1~%uint8 SUBSTATE_3=2~%uint8 SUBSTATE_4=3~%uint8 SUBSTATE_SHIFT=6~%~%uint8 state~%string state_name~%string sub_state_name~%float32 gps_quality_percent~%float32 battery_percent~%bool is_charging~%bool emergency~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HighLevelStatus)))
  "Returns full string definition for message of type 'HighLevelStatus"
  (cl:format cl:nil "uint8 HIGH_LEVEL_STATE_NULL=0~%uint8 HIGH_LEVEL_STATE_IDLE=1~%uint8 HIGH_LEVEL_STATE_AUTONOMOUS=2~%uint8 HIGH_LEVEL_STATE_RECORDING=3~%~%uint8 SUBSTATE_1=0~%uint8 SUBSTATE_2=1~%uint8 SUBSTATE_3=2~%uint8 SUBSTATE_4=3~%uint8 SUBSTATE_SHIFT=6~%~%uint8 state~%string state_name~%string sub_state_name~%float32 gps_quality_percent~%float32 battery_percent~%bool is_charging~%bool emergency~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HighLevelStatus>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'state_name))
     4 (cl:length (cl:slot-value msg 'sub_state_name))
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HighLevelStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'HighLevelStatus
    (cl:cons ':state (state msg))
    (cl:cons ':state_name (state_name msg))
    (cl:cons ':sub_state_name (sub_state_name msg))
    (cl:cons ':gps_quality_percent (gps_quality_percent msg))
    (cl:cons ':battery_percent (battery_percent msg))
    (cl:cons ':is_charging (is_charging msg))
    (cl:cons ':emergency (emergency msg))
))
