; Auto-generated. Do not edit!


(cl:in-package mower_map-srv)


;//! \htmlinclude ClearNavPointSrv-request.msg.html

(cl:defclass <ClearNavPointSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ClearNavPointSrv-request (<ClearNavPointSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearNavPointSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearNavPointSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<ClearNavPointSrv-request> is deprecated: use mower_map-srv:ClearNavPointSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearNavPointSrv-request>) ostream)
  "Serializes a message object of type '<ClearNavPointSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearNavPointSrv-request>) istream)
  "Deserializes a message object of type '<ClearNavPointSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearNavPointSrv-request>)))
  "Returns string type for a service object of type '<ClearNavPointSrv-request>"
  "mower_map/ClearNavPointSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearNavPointSrv-request)))
  "Returns string type for a service object of type 'ClearNavPointSrv-request"
  "mower_map/ClearNavPointSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearNavPointSrv-request>)))
  "Returns md5sum for a message object of type '<ClearNavPointSrv-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearNavPointSrv-request)))
  "Returns md5sum for a message object of type 'ClearNavPointSrv-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearNavPointSrv-request>)))
  "Returns full string definition for message of type '<ClearNavPointSrv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearNavPointSrv-request)))
  "Returns full string definition for message of type 'ClearNavPointSrv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearNavPointSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearNavPointSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearNavPointSrv-request
))
;//! \htmlinclude ClearNavPointSrv-response.msg.html

(cl:defclass <ClearNavPointSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ClearNavPointSrv-response (<ClearNavPointSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearNavPointSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearNavPointSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<ClearNavPointSrv-response> is deprecated: use mower_map-srv:ClearNavPointSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearNavPointSrv-response>) ostream)
  "Serializes a message object of type '<ClearNavPointSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearNavPointSrv-response>) istream)
  "Deserializes a message object of type '<ClearNavPointSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearNavPointSrv-response>)))
  "Returns string type for a service object of type '<ClearNavPointSrv-response>"
  "mower_map/ClearNavPointSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearNavPointSrv-response)))
  "Returns string type for a service object of type 'ClearNavPointSrv-response"
  "mower_map/ClearNavPointSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearNavPointSrv-response>)))
  "Returns md5sum for a message object of type '<ClearNavPointSrv-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearNavPointSrv-response)))
  "Returns md5sum for a message object of type 'ClearNavPointSrv-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearNavPointSrv-response>)))
  "Returns full string definition for message of type '<ClearNavPointSrv-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearNavPointSrv-response)))
  "Returns full string definition for message of type 'ClearNavPointSrv-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearNavPointSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearNavPointSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearNavPointSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearNavPointSrv)))
  'ClearNavPointSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearNavPointSrv)))
  'ClearNavPointSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearNavPointSrv)))
  "Returns string type for a service object of type '<ClearNavPointSrv>"
  "mower_map/ClearNavPointSrv")