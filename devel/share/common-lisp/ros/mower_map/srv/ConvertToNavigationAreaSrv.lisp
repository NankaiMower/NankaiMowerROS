; Auto-generated. Do not edit!


(cl:in-package mower_map-srv)


;//! \htmlinclude ConvertToNavigationAreaSrv-request.msg.html

(cl:defclass <ConvertToNavigationAreaSrv-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass ConvertToNavigationAreaSrv-request (<ConvertToNavigationAreaSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConvertToNavigationAreaSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConvertToNavigationAreaSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<ConvertToNavigationAreaSrv-request> is deprecated: use mower_map-srv:ConvertToNavigationAreaSrv-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <ConvertToNavigationAreaSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_map-srv:index-val is deprecated.  Use mower_map-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConvertToNavigationAreaSrv-request>) ostream)
  "Serializes a message object of type '<ConvertToNavigationAreaSrv-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConvertToNavigationAreaSrv-request>) istream)
  "Deserializes a message object of type '<ConvertToNavigationAreaSrv-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConvertToNavigationAreaSrv-request>)))
  "Returns string type for a service object of type '<ConvertToNavigationAreaSrv-request>"
  "mower_map/ConvertToNavigationAreaSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertToNavigationAreaSrv-request)))
  "Returns string type for a service object of type 'ConvertToNavigationAreaSrv-request"
  "mower_map/ConvertToNavigationAreaSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConvertToNavigationAreaSrv-request>)))
  "Returns md5sum for a message object of type '<ConvertToNavigationAreaSrv-request>"
  "ad7b979103dbd563a352ef5270716728")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConvertToNavigationAreaSrv-request)))
  "Returns md5sum for a message object of type 'ConvertToNavigationAreaSrv-request"
  "ad7b979103dbd563a352ef5270716728")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConvertToNavigationAreaSrv-request>)))
  "Returns full string definition for message of type '<ConvertToNavigationAreaSrv-request>"
  (cl:format cl:nil "uint32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConvertToNavigationAreaSrv-request)))
  "Returns full string definition for message of type 'ConvertToNavigationAreaSrv-request"
  (cl:format cl:nil "uint32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConvertToNavigationAreaSrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConvertToNavigationAreaSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConvertToNavigationAreaSrv-request
    (cl:cons ':index (index msg))
))
;//! \htmlinclude ConvertToNavigationAreaSrv-response.msg.html

(cl:defclass <ConvertToNavigationAreaSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ConvertToNavigationAreaSrv-response (<ConvertToNavigationAreaSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConvertToNavigationAreaSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConvertToNavigationAreaSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<ConvertToNavigationAreaSrv-response> is deprecated: use mower_map-srv:ConvertToNavigationAreaSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConvertToNavigationAreaSrv-response>) ostream)
  "Serializes a message object of type '<ConvertToNavigationAreaSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConvertToNavigationAreaSrv-response>) istream)
  "Deserializes a message object of type '<ConvertToNavigationAreaSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConvertToNavigationAreaSrv-response>)))
  "Returns string type for a service object of type '<ConvertToNavigationAreaSrv-response>"
  "mower_map/ConvertToNavigationAreaSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertToNavigationAreaSrv-response)))
  "Returns string type for a service object of type 'ConvertToNavigationAreaSrv-response"
  "mower_map/ConvertToNavigationAreaSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConvertToNavigationAreaSrv-response>)))
  "Returns md5sum for a message object of type '<ConvertToNavigationAreaSrv-response>"
  "ad7b979103dbd563a352ef5270716728")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConvertToNavigationAreaSrv-response)))
  "Returns md5sum for a message object of type 'ConvertToNavigationAreaSrv-response"
  "ad7b979103dbd563a352ef5270716728")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConvertToNavigationAreaSrv-response>)))
  "Returns full string definition for message of type '<ConvertToNavigationAreaSrv-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConvertToNavigationAreaSrv-response)))
  "Returns full string definition for message of type 'ConvertToNavigationAreaSrv-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConvertToNavigationAreaSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConvertToNavigationAreaSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConvertToNavigationAreaSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConvertToNavigationAreaSrv)))
  'ConvertToNavigationAreaSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConvertToNavigationAreaSrv)))
  'ConvertToNavigationAreaSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertToNavigationAreaSrv)))
  "Returns string type for a service object of type '<ConvertToNavigationAreaSrv>"
  "mower_map/ConvertToNavigationAreaSrv")