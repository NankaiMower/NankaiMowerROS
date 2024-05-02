; Auto-generated. Do not edit!


(cl:in-package mower_map-srv)


;//! \htmlinclude ClearMapSrv-request.msg.html

(cl:defclass <ClearMapSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ClearMapSrv-request (<ClearMapSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearMapSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearMapSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<ClearMapSrv-request> is deprecated: use mower_map-srv:ClearMapSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearMapSrv-request>) ostream)
  "Serializes a message object of type '<ClearMapSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearMapSrv-request>) istream)
  "Deserializes a message object of type '<ClearMapSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearMapSrv-request>)))
  "Returns string type for a service object of type '<ClearMapSrv-request>"
  "mower_map/ClearMapSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearMapSrv-request)))
  "Returns string type for a service object of type 'ClearMapSrv-request"
  "mower_map/ClearMapSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearMapSrv-request>)))
  "Returns md5sum for a message object of type '<ClearMapSrv-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearMapSrv-request)))
  "Returns md5sum for a message object of type 'ClearMapSrv-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearMapSrv-request>)))
  "Returns full string definition for message of type '<ClearMapSrv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearMapSrv-request)))
  "Returns full string definition for message of type 'ClearMapSrv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearMapSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearMapSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearMapSrv-request
))
;//! \htmlinclude ClearMapSrv-response.msg.html

(cl:defclass <ClearMapSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ClearMapSrv-response (<ClearMapSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearMapSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearMapSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<ClearMapSrv-response> is deprecated: use mower_map-srv:ClearMapSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearMapSrv-response>) ostream)
  "Serializes a message object of type '<ClearMapSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearMapSrv-response>) istream)
  "Deserializes a message object of type '<ClearMapSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearMapSrv-response>)))
  "Returns string type for a service object of type '<ClearMapSrv-response>"
  "mower_map/ClearMapSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearMapSrv-response)))
  "Returns string type for a service object of type 'ClearMapSrv-response"
  "mower_map/ClearMapSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearMapSrv-response>)))
  "Returns md5sum for a message object of type '<ClearMapSrv-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearMapSrv-response)))
  "Returns md5sum for a message object of type 'ClearMapSrv-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearMapSrv-response>)))
  "Returns full string definition for message of type '<ClearMapSrv-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearMapSrv-response)))
  "Returns full string definition for message of type 'ClearMapSrv-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearMapSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearMapSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearMapSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearMapSrv)))
  'ClearMapSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearMapSrv)))
  'ClearMapSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearMapSrv)))
  "Returns string type for a service object of type '<ClearMapSrv>"
  "mower_map/ClearMapSrv")