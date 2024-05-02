; Auto-generated. Do not edit!


(cl:in-package mower_map-srv)


;//! \htmlinclude DeleteMowingAreaSrv-request.msg.html

(cl:defclass <DeleteMowingAreaSrv-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass DeleteMowingAreaSrv-request (<DeleteMowingAreaSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteMowingAreaSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteMowingAreaSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<DeleteMowingAreaSrv-request> is deprecated: use mower_map-srv:DeleteMowingAreaSrv-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <DeleteMowingAreaSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_map-srv:index-val is deprecated.  Use mower_map-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteMowingAreaSrv-request>) ostream)
  "Serializes a message object of type '<DeleteMowingAreaSrv-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteMowingAreaSrv-request>) istream)
  "Deserializes a message object of type '<DeleteMowingAreaSrv-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteMowingAreaSrv-request>)))
  "Returns string type for a service object of type '<DeleteMowingAreaSrv-request>"
  "mower_map/DeleteMowingAreaSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteMowingAreaSrv-request)))
  "Returns string type for a service object of type 'DeleteMowingAreaSrv-request"
  "mower_map/DeleteMowingAreaSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteMowingAreaSrv-request>)))
  "Returns md5sum for a message object of type '<DeleteMowingAreaSrv-request>"
  "ad7b979103dbd563a352ef5270716728")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteMowingAreaSrv-request)))
  "Returns md5sum for a message object of type 'DeleteMowingAreaSrv-request"
  "ad7b979103dbd563a352ef5270716728")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteMowingAreaSrv-request>)))
  "Returns full string definition for message of type '<DeleteMowingAreaSrv-request>"
  (cl:format cl:nil "uint32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteMowingAreaSrv-request)))
  "Returns full string definition for message of type 'DeleteMowingAreaSrv-request"
  (cl:format cl:nil "uint32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteMowingAreaSrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteMowingAreaSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteMowingAreaSrv-request
    (cl:cons ':index (index msg))
))
;//! \htmlinclude DeleteMowingAreaSrv-response.msg.html

(cl:defclass <DeleteMowingAreaSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DeleteMowingAreaSrv-response (<DeleteMowingAreaSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteMowingAreaSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteMowingAreaSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<DeleteMowingAreaSrv-response> is deprecated: use mower_map-srv:DeleteMowingAreaSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteMowingAreaSrv-response>) ostream)
  "Serializes a message object of type '<DeleteMowingAreaSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteMowingAreaSrv-response>) istream)
  "Deserializes a message object of type '<DeleteMowingAreaSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteMowingAreaSrv-response>)))
  "Returns string type for a service object of type '<DeleteMowingAreaSrv-response>"
  "mower_map/DeleteMowingAreaSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteMowingAreaSrv-response)))
  "Returns string type for a service object of type 'DeleteMowingAreaSrv-response"
  "mower_map/DeleteMowingAreaSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteMowingAreaSrv-response>)))
  "Returns md5sum for a message object of type '<DeleteMowingAreaSrv-response>"
  "ad7b979103dbd563a352ef5270716728")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteMowingAreaSrv-response)))
  "Returns md5sum for a message object of type 'DeleteMowingAreaSrv-response"
  "ad7b979103dbd563a352ef5270716728")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteMowingAreaSrv-response>)))
  "Returns full string definition for message of type '<DeleteMowingAreaSrv-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteMowingAreaSrv-response)))
  "Returns full string definition for message of type 'DeleteMowingAreaSrv-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteMowingAreaSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteMowingAreaSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteMowingAreaSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteMowingAreaSrv)))
  'DeleteMowingAreaSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteMowingAreaSrv)))
  'DeleteMowingAreaSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteMowingAreaSrv)))
  "Returns string type for a service object of type '<DeleteMowingAreaSrv>"
  "mower_map/DeleteMowingAreaSrv")