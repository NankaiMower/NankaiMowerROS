; Auto-generated. Do not edit!


(cl:in-package mower_msgs-srv)


;//! \htmlinclude EmergencyStopSrv-request.msg.html

(cl:defclass <EmergencyStopSrv-request> (roslisp-msg-protocol:ros-message)
  ((emergency
    :reader emergency
    :initarg :emergency
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EmergencyStopSrv-request (<EmergencyStopSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmergencyStopSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmergencyStopSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_msgs-srv:<EmergencyStopSrv-request> is deprecated: use mower_msgs-srv:EmergencyStopSrv-request instead.")))

(cl:ensure-generic-function 'emergency-val :lambda-list '(m))
(cl:defmethod emergency-val ((m <EmergencyStopSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-srv:emergency-val is deprecated.  Use mower_msgs-srv:emergency instead.")
  (emergency m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmergencyStopSrv-request>) ostream)
  "Serializes a message object of type '<EmergencyStopSrv-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmergencyStopSrv-request>) istream)
  "Deserializes a message object of type '<EmergencyStopSrv-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmergencyStopSrv-request>)))
  "Returns string type for a service object of type '<EmergencyStopSrv-request>"
  "mower_msgs/EmergencyStopSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmergencyStopSrv-request)))
  "Returns string type for a service object of type 'EmergencyStopSrv-request"
  "mower_msgs/EmergencyStopSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmergencyStopSrv-request>)))
  "Returns md5sum for a message object of type '<EmergencyStopSrv-request>"
  "00b85207f5d294f8ce1433699fc5397c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmergencyStopSrv-request)))
  "Returns md5sum for a message object of type 'EmergencyStopSrv-request"
  "00b85207f5d294f8ce1433699fc5397c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmergencyStopSrv-request>)))
  "Returns full string definition for message of type '<EmergencyStopSrv-request>"
  (cl:format cl:nil "uint8 emergency~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmergencyStopSrv-request)))
  "Returns full string definition for message of type 'EmergencyStopSrv-request"
  (cl:format cl:nil "uint8 emergency~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmergencyStopSrv-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmergencyStopSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmergencyStopSrv-request
    (cl:cons ':emergency (emergency msg))
))
;//! \htmlinclude EmergencyStopSrv-response.msg.html

(cl:defclass <EmergencyStopSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EmergencyStopSrv-response (<EmergencyStopSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmergencyStopSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmergencyStopSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_msgs-srv:<EmergencyStopSrv-response> is deprecated: use mower_msgs-srv:EmergencyStopSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmergencyStopSrv-response>) ostream)
  "Serializes a message object of type '<EmergencyStopSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmergencyStopSrv-response>) istream)
  "Deserializes a message object of type '<EmergencyStopSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmergencyStopSrv-response>)))
  "Returns string type for a service object of type '<EmergencyStopSrv-response>"
  "mower_msgs/EmergencyStopSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmergencyStopSrv-response)))
  "Returns string type for a service object of type 'EmergencyStopSrv-response"
  "mower_msgs/EmergencyStopSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmergencyStopSrv-response>)))
  "Returns md5sum for a message object of type '<EmergencyStopSrv-response>"
  "00b85207f5d294f8ce1433699fc5397c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmergencyStopSrv-response)))
  "Returns md5sum for a message object of type 'EmergencyStopSrv-response"
  "00b85207f5d294f8ce1433699fc5397c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmergencyStopSrv-response>)))
  "Returns full string definition for message of type '<EmergencyStopSrv-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmergencyStopSrv-response)))
  "Returns full string definition for message of type 'EmergencyStopSrv-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmergencyStopSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmergencyStopSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmergencyStopSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmergencyStopSrv)))
  'EmergencyStopSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmergencyStopSrv)))
  'EmergencyStopSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmergencyStopSrv)))
  "Returns string type for a service object of type '<EmergencyStopSrv>"
  "mower_msgs/EmergencyStopSrv")