; Auto-generated. Do not edit!


(cl:in-package mower_msgs-srv)


;//! \htmlinclude HighLevelControlSrv-request.msg.html

(cl:defclass <HighLevelControlSrv-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HighLevelControlSrv-request (<HighLevelControlSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HighLevelControlSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HighLevelControlSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_msgs-srv:<HighLevelControlSrv-request> is deprecated: use mower_msgs-srv:HighLevelControlSrv-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <HighLevelControlSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-srv:command-val is deprecated.  Use mower_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HighLevelControlSrv-request>)))
    "Constants for message type '<HighLevelControlSrv-request>"
  '((:COMMAND_START . 1)
    (:COMMAND_HOME . 2)
    (:COMMAND_S1 . 3)
    (:COMMAND_S2 . 4)
    (:COMMAND_RESET_EMERGENCY . 254)
    (:COMMAND_DELETE_MAPS . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HighLevelControlSrv-request)))
    "Constants for message type 'HighLevelControlSrv-request"
  '((:COMMAND_START . 1)
    (:COMMAND_HOME . 2)
    (:COMMAND_S1 . 3)
    (:COMMAND_S2 . 4)
    (:COMMAND_RESET_EMERGENCY . 254)
    (:COMMAND_DELETE_MAPS . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HighLevelControlSrv-request>) ostream)
  "Serializes a message object of type '<HighLevelControlSrv-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HighLevelControlSrv-request>) istream)
  "Deserializes a message object of type '<HighLevelControlSrv-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HighLevelControlSrv-request>)))
  "Returns string type for a service object of type '<HighLevelControlSrv-request>"
  "mower_msgs/HighLevelControlSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HighLevelControlSrv-request)))
  "Returns string type for a service object of type 'HighLevelControlSrv-request"
  "mower_msgs/HighLevelControlSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HighLevelControlSrv-request>)))
  "Returns md5sum for a message object of type '<HighLevelControlSrv-request>"
  "0c9afcf75aa7a3bc23f835cf875e0cde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HighLevelControlSrv-request)))
  "Returns md5sum for a message object of type 'HighLevelControlSrv-request"
  "0c9afcf75aa7a3bc23f835cf875e0cde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HighLevelControlSrv-request>)))
  "Returns full string definition for message of type '<HighLevelControlSrv-request>"
  (cl:format cl:nil "uint8 COMMAND_START=1~%uint8 COMMAND_HOME=2~%uint8 COMMAND_S1=3~%uint8 COMMAND_S2=4~%uint8 COMMAND_RESET_EMERGENCY=254~%uint8 COMMAND_DELETE_MAPS=255~%~%uint8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HighLevelControlSrv-request)))
  "Returns full string definition for message of type 'HighLevelControlSrv-request"
  (cl:format cl:nil "uint8 COMMAND_START=1~%uint8 COMMAND_HOME=2~%uint8 COMMAND_S1=3~%uint8 COMMAND_S2=4~%uint8 COMMAND_RESET_EMERGENCY=254~%uint8 COMMAND_DELETE_MAPS=255~%~%uint8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HighLevelControlSrv-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HighLevelControlSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HighLevelControlSrv-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude HighLevelControlSrv-response.msg.html

(cl:defclass <HighLevelControlSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass HighLevelControlSrv-response (<HighLevelControlSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HighLevelControlSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HighLevelControlSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_msgs-srv:<HighLevelControlSrv-response> is deprecated: use mower_msgs-srv:HighLevelControlSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HighLevelControlSrv-response>) ostream)
  "Serializes a message object of type '<HighLevelControlSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HighLevelControlSrv-response>) istream)
  "Deserializes a message object of type '<HighLevelControlSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HighLevelControlSrv-response>)))
  "Returns string type for a service object of type '<HighLevelControlSrv-response>"
  "mower_msgs/HighLevelControlSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HighLevelControlSrv-response)))
  "Returns string type for a service object of type 'HighLevelControlSrv-response"
  "mower_msgs/HighLevelControlSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HighLevelControlSrv-response>)))
  "Returns md5sum for a message object of type '<HighLevelControlSrv-response>"
  "0c9afcf75aa7a3bc23f835cf875e0cde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HighLevelControlSrv-response)))
  "Returns md5sum for a message object of type 'HighLevelControlSrv-response"
  "0c9afcf75aa7a3bc23f835cf875e0cde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HighLevelControlSrv-response>)))
  "Returns full string definition for message of type '<HighLevelControlSrv-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HighLevelControlSrv-response)))
  "Returns full string definition for message of type 'HighLevelControlSrv-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HighLevelControlSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HighLevelControlSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HighLevelControlSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HighLevelControlSrv)))
  'HighLevelControlSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HighLevelControlSrv)))
  'HighLevelControlSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HighLevelControlSrv)))
  "Returns string type for a service object of type '<HighLevelControlSrv>"
  "mower_msgs/HighLevelControlSrv")