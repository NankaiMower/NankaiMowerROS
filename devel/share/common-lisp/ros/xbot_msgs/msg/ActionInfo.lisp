; Auto-generated. Do not edit!


(cl:in-package xbot_msgs-msg)


;//! \htmlinclude ActionInfo.msg.html

(cl:defclass <ActionInfo> (roslisp-msg-protocol:ros-message)
  ((action_id
    :reader action_id
    :initarg :action_id
    :type cl:string
    :initform "")
   (action_name
    :reader action_name
    :initarg :action_name
    :type cl:string
    :initform "")
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ActionInfo (<ActionInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xbot_msgs-msg:<ActionInfo> is deprecated: use xbot_msgs-msg:ActionInfo instead.")))

(cl:ensure-generic-function 'action_id-val :lambda-list '(m))
(cl:defmethod action_id-val ((m <ActionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:action_id-val is deprecated.  Use xbot_msgs-msg:action_id instead.")
  (action_id m))

(cl:ensure-generic-function 'action_name-val :lambda-list '(m))
(cl:defmethod action_name-val ((m <ActionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:action_name-val is deprecated.  Use xbot_msgs-msg:action_name instead.")
  (action_name m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <ActionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:enabled-val is deprecated.  Use xbot_msgs-msg:enabled instead.")
  (enabled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionInfo>) ostream)
  "Serializes a message object of type '<ActionInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionInfo>) istream)
  "Deserializes a message object of type '<ActionInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionInfo>)))
  "Returns string type for a message object of type '<ActionInfo>"
  "xbot_msgs/ActionInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionInfo)))
  "Returns string type for a message object of type 'ActionInfo"
  "xbot_msgs/ActionInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionInfo>)))
  "Returns md5sum for a message object of type '<ActionInfo>"
  "98dc1981a42cdfe360677d00f0e0730a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionInfo)))
  "Returns md5sum for a message object of type 'ActionInfo"
  "98dc1981a42cdfe360677d00f0e0730a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionInfo>)))
  "Returns full string definition for message of type '<ActionInfo>"
  (cl:format cl:nil "string action_id                        # The ID used for this action~%string action_name                      # A human readable name for this action~%bool enabled                            # True, if the action is currently available~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionInfo)))
  "Returns full string definition for message of type 'ActionInfo"
  (cl:format cl:nil "string action_id                        # The ID used for this action~%string action_name                      # A human readable name for this action~%bool enabled                            # True, if the action is currently available~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action_id))
     4 (cl:length (cl:slot-value msg 'action_name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionInfo
    (cl:cons ':action_id (action_id msg))
    (cl:cons ':action_name (action_name msg))
    (cl:cons ':enabled (enabled msg))
))
