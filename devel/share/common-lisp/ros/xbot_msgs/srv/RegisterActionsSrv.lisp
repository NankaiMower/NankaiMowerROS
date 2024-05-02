; Auto-generated. Do not edit!


(cl:in-package xbot_msgs-srv)


;//! \htmlinclude RegisterActionsSrv-request.msg.html

(cl:defclass <RegisterActionsSrv-request> (roslisp-msg-protocol:ros-message)
  ((node_prefix
    :reader node_prefix
    :initarg :node_prefix
    :type cl:string
    :initform "")
   (actions
    :reader actions
    :initarg :actions
    :type (cl:vector xbot_msgs-msg:ActionInfo)
   :initform (cl:make-array 0 :element-type 'xbot_msgs-msg:ActionInfo :initial-element (cl:make-instance 'xbot_msgs-msg:ActionInfo))))
)

(cl:defclass RegisterActionsSrv-request (<RegisterActionsSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterActionsSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterActionsSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xbot_msgs-srv:<RegisterActionsSrv-request> is deprecated: use xbot_msgs-srv:RegisterActionsSrv-request instead.")))

(cl:ensure-generic-function 'node_prefix-val :lambda-list '(m))
(cl:defmethod node_prefix-val ((m <RegisterActionsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-srv:node_prefix-val is deprecated.  Use xbot_msgs-srv:node_prefix instead.")
  (node_prefix m))

(cl:ensure-generic-function 'actions-val :lambda-list '(m))
(cl:defmethod actions-val ((m <RegisterActionsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-srv:actions-val is deprecated.  Use xbot_msgs-srv:actions instead.")
  (actions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterActionsSrv-request>) ostream)
  "Serializes a message object of type '<RegisterActionsSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node_prefix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node_prefix))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'actions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterActionsSrv-request>) istream)
  "Deserializes a message object of type '<RegisterActionsSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_prefix) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node_prefix) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'xbot_msgs-msg:ActionInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterActionsSrv-request>)))
  "Returns string type for a service object of type '<RegisterActionsSrv-request>"
  "xbot_msgs/RegisterActionsSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterActionsSrv-request)))
  "Returns string type for a service object of type 'RegisterActionsSrv-request"
  "xbot_msgs/RegisterActionsSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterActionsSrv-request>)))
  "Returns md5sum for a message object of type '<RegisterActionsSrv-request>"
  "0d2ab873c76b3d03247f8862ec188635")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterActionsSrv-request)))
  "Returns md5sum for a message object of type 'RegisterActionsSrv-request"
  "0d2ab873c76b3d03247f8862ec188635")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterActionsSrv-request>)))
  "Returns full string definition for message of type '<RegisterActionsSrv-request>"
  (cl:format cl:nil "string node_prefix                  # The prefix for the node registering / receiving the action. This is useful if multiple nodes are listening for actions and you want to make sure that the IDs don't collide~%xbot_msgs/ActionInfo[] actions      # The list of available actions~%~%================================================================================~%MSG: xbot_msgs/ActionInfo~%string action_id                        # The ID used for this action~%string action_name                      # A human readable name for this action~%bool enabled                            # True, if the action is currently available~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterActionsSrv-request)))
  "Returns full string definition for message of type 'RegisterActionsSrv-request"
  (cl:format cl:nil "string node_prefix                  # The prefix for the node registering / receiving the action. This is useful if multiple nodes are listening for actions and you want to make sure that the IDs don't collide~%xbot_msgs/ActionInfo[] actions      # The list of available actions~%~%================================================================================~%MSG: xbot_msgs/ActionInfo~%string action_id                        # The ID used for this action~%string action_name                      # A human readable name for this action~%bool enabled                            # True, if the action is currently available~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterActionsSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'node_prefix))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterActionsSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterActionsSrv-request
    (cl:cons ':node_prefix (node_prefix msg))
    (cl:cons ':actions (actions msg))
))
;//! \htmlinclude RegisterActionsSrv-response.msg.html

(cl:defclass <RegisterActionsSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RegisterActionsSrv-response (<RegisterActionsSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterActionsSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterActionsSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xbot_msgs-srv:<RegisterActionsSrv-response> is deprecated: use xbot_msgs-srv:RegisterActionsSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterActionsSrv-response>) ostream)
  "Serializes a message object of type '<RegisterActionsSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterActionsSrv-response>) istream)
  "Deserializes a message object of type '<RegisterActionsSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterActionsSrv-response>)))
  "Returns string type for a service object of type '<RegisterActionsSrv-response>"
  "xbot_msgs/RegisterActionsSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterActionsSrv-response)))
  "Returns string type for a service object of type 'RegisterActionsSrv-response"
  "xbot_msgs/RegisterActionsSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterActionsSrv-response>)))
  "Returns md5sum for a message object of type '<RegisterActionsSrv-response>"
  "0d2ab873c76b3d03247f8862ec188635")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterActionsSrv-response)))
  "Returns md5sum for a message object of type 'RegisterActionsSrv-response"
  "0d2ab873c76b3d03247f8862ec188635")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterActionsSrv-response>)))
  "Returns full string definition for message of type '<RegisterActionsSrv-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterActionsSrv-response)))
  "Returns full string definition for message of type 'RegisterActionsSrv-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterActionsSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterActionsSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterActionsSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RegisterActionsSrv)))
  'RegisterActionsSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RegisterActionsSrv)))
  'RegisterActionsSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterActionsSrv)))
  "Returns string type for a service object of type '<RegisterActionsSrv>"
  "xbot_msgs/RegisterActionsSrv")