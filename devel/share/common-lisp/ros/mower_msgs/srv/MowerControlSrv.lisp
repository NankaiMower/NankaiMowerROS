; Auto-generated. Do not edit!


(cl:in-package mower_msgs-srv)


;//! \htmlinclude MowerControlSrv-request.msg.html

(cl:defclass <MowerControlSrv-request> (roslisp-msg-protocol:ros-message)
  ((mow_enabled
    :reader mow_enabled
    :initarg :mow_enabled
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MowerControlSrv-request (<MowerControlSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MowerControlSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MowerControlSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_msgs-srv:<MowerControlSrv-request> is deprecated: use mower_msgs-srv:MowerControlSrv-request instead.")))

(cl:ensure-generic-function 'mow_enabled-val :lambda-list '(m))
(cl:defmethod mow_enabled-val ((m <MowerControlSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-srv:mow_enabled-val is deprecated.  Use mower_msgs-srv:mow_enabled instead.")
  (mow_enabled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MowerControlSrv-request>) ostream)
  "Serializes a message object of type '<MowerControlSrv-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mow_enabled)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MowerControlSrv-request>) istream)
  "Deserializes a message object of type '<MowerControlSrv-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mow_enabled)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MowerControlSrv-request>)))
  "Returns string type for a service object of type '<MowerControlSrv-request>"
  "mower_msgs/MowerControlSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MowerControlSrv-request)))
  "Returns string type for a service object of type 'MowerControlSrv-request"
  "mower_msgs/MowerControlSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MowerControlSrv-request>)))
  "Returns md5sum for a message object of type '<MowerControlSrv-request>"
  "988e36b225a99f2ee6894313fe1d90a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MowerControlSrv-request)))
  "Returns md5sum for a message object of type 'MowerControlSrv-request"
  "988e36b225a99f2ee6894313fe1d90a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MowerControlSrv-request>)))
  "Returns full string definition for message of type '<MowerControlSrv-request>"
  (cl:format cl:nil "uint8 mow_enabled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MowerControlSrv-request)))
  "Returns full string definition for message of type 'MowerControlSrv-request"
  (cl:format cl:nil "uint8 mow_enabled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MowerControlSrv-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MowerControlSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MowerControlSrv-request
    (cl:cons ':mow_enabled (mow_enabled msg))
))
;//! \htmlinclude MowerControlSrv-response.msg.html

(cl:defclass <MowerControlSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MowerControlSrv-response (<MowerControlSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MowerControlSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MowerControlSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_msgs-srv:<MowerControlSrv-response> is deprecated: use mower_msgs-srv:MowerControlSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MowerControlSrv-response>) ostream)
  "Serializes a message object of type '<MowerControlSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MowerControlSrv-response>) istream)
  "Deserializes a message object of type '<MowerControlSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MowerControlSrv-response>)))
  "Returns string type for a service object of type '<MowerControlSrv-response>"
  "mower_msgs/MowerControlSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MowerControlSrv-response)))
  "Returns string type for a service object of type 'MowerControlSrv-response"
  "mower_msgs/MowerControlSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MowerControlSrv-response>)))
  "Returns md5sum for a message object of type '<MowerControlSrv-response>"
  "988e36b225a99f2ee6894313fe1d90a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MowerControlSrv-response)))
  "Returns md5sum for a message object of type 'MowerControlSrv-response"
  "988e36b225a99f2ee6894313fe1d90a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MowerControlSrv-response>)))
  "Returns full string definition for message of type '<MowerControlSrv-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MowerControlSrv-response)))
  "Returns full string definition for message of type 'MowerControlSrv-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MowerControlSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MowerControlSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MowerControlSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MowerControlSrv)))
  'MowerControlSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MowerControlSrv)))
  'MowerControlSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MowerControlSrv)))
  "Returns string type for a service object of type '<MowerControlSrv>"
  "mower_msgs/MowerControlSrv")