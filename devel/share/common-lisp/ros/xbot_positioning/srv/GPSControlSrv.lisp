; Auto-generated. Do not edit!


(cl:in-package xbot_positioning-srv)


;//! \htmlinclude GPSControlSrv-request.msg.html

(cl:defclass <GPSControlSrv-request> (roslisp-msg-protocol:ros-message)
  ((gps_enabled
    :reader gps_enabled
    :initarg :gps_enabled
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GPSControlSrv-request (<GPSControlSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPSControlSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPSControlSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xbot_positioning-srv:<GPSControlSrv-request> is deprecated: use xbot_positioning-srv:GPSControlSrv-request instead.")))

(cl:ensure-generic-function 'gps_enabled-val :lambda-list '(m))
(cl:defmethod gps_enabled-val ((m <GPSControlSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_positioning-srv:gps_enabled-val is deprecated.  Use xbot_positioning-srv:gps_enabled instead.")
  (gps_enabled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPSControlSrv-request>) ostream)
  "Serializes a message object of type '<GPSControlSrv-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_enabled)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPSControlSrv-request>) istream)
  "Deserializes a message object of type '<GPSControlSrv-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_enabled)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPSControlSrv-request>)))
  "Returns string type for a service object of type '<GPSControlSrv-request>"
  "xbot_positioning/GPSControlSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPSControlSrv-request)))
  "Returns string type for a service object of type 'GPSControlSrv-request"
  "xbot_positioning/GPSControlSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPSControlSrv-request>)))
  "Returns md5sum for a message object of type '<GPSControlSrv-request>"
  "d9982cf964c37d45435cd4a8d34d8df4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPSControlSrv-request)))
  "Returns md5sum for a message object of type 'GPSControlSrv-request"
  "d9982cf964c37d45435cd4a8d34d8df4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPSControlSrv-request>)))
  "Returns full string definition for message of type '<GPSControlSrv-request>"
  (cl:format cl:nil "uint8 gps_enabled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPSControlSrv-request)))
  "Returns full string definition for message of type 'GPSControlSrv-request"
  (cl:format cl:nil "uint8 gps_enabled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPSControlSrv-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPSControlSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GPSControlSrv-request
    (cl:cons ':gps_enabled (gps_enabled msg))
))
;//! \htmlinclude GPSControlSrv-response.msg.html

(cl:defclass <GPSControlSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GPSControlSrv-response (<GPSControlSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPSControlSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPSControlSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xbot_positioning-srv:<GPSControlSrv-response> is deprecated: use xbot_positioning-srv:GPSControlSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPSControlSrv-response>) ostream)
  "Serializes a message object of type '<GPSControlSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPSControlSrv-response>) istream)
  "Deserializes a message object of type '<GPSControlSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPSControlSrv-response>)))
  "Returns string type for a service object of type '<GPSControlSrv-response>"
  "xbot_positioning/GPSControlSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPSControlSrv-response)))
  "Returns string type for a service object of type 'GPSControlSrv-response"
  "xbot_positioning/GPSControlSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPSControlSrv-response>)))
  "Returns md5sum for a message object of type '<GPSControlSrv-response>"
  "d9982cf964c37d45435cd4a8d34d8df4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPSControlSrv-response)))
  "Returns md5sum for a message object of type 'GPSControlSrv-response"
  "d9982cf964c37d45435cd4a8d34d8df4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPSControlSrv-response>)))
  "Returns full string definition for message of type '<GPSControlSrv-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPSControlSrv-response)))
  "Returns full string definition for message of type 'GPSControlSrv-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPSControlSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPSControlSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GPSControlSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GPSControlSrv)))
  'GPSControlSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GPSControlSrv)))
  'GPSControlSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPSControlSrv)))
  "Returns string type for a service object of type '<GPSControlSrv>"
  "xbot_positioning/GPSControlSrv")