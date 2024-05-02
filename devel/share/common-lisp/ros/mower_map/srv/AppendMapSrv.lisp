; Auto-generated. Do not edit!


(cl:in-package mower_map-srv)


;//! \htmlinclude AppendMapSrv-request.msg.html

(cl:defclass <AppendMapSrv-request> (roslisp-msg-protocol:ros-message)
  ((bagfile
    :reader bagfile
    :initarg :bagfile
    :type cl:string
    :initform ""))
)

(cl:defclass AppendMapSrv-request (<AppendMapSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AppendMapSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AppendMapSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<AppendMapSrv-request> is deprecated: use mower_map-srv:AppendMapSrv-request instead.")))

(cl:ensure-generic-function 'bagfile-val :lambda-list '(m))
(cl:defmethod bagfile-val ((m <AppendMapSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_map-srv:bagfile-val is deprecated.  Use mower_map-srv:bagfile instead.")
  (bagfile m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AppendMapSrv-request>) ostream)
  "Serializes a message object of type '<AppendMapSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bagfile))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bagfile))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AppendMapSrv-request>) istream)
  "Deserializes a message object of type '<AppendMapSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bagfile) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bagfile) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AppendMapSrv-request>)))
  "Returns string type for a service object of type '<AppendMapSrv-request>"
  "mower_map/AppendMapSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AppendMapSrv-request)))
  "Returns string type for a service object of type 'AppendMapSrv-request"
  "mower_map/AppendMapSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AppendMapSrv-request>)))
  "Returns md5sum for a message object of type '<AppendMapSrv-request>"
  "a935fd4be1d8c2e1777172fa15665bc9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AppendMapSrv-request)))
  "Returns md5sum for a message object of type 'AppendMapSrv-request"
  "a935fd4be1d8c2e1777172fa15665bc9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AppendMapSrv-request>)))
  "Returns full string definition for message of type '<AppendMapSrv-request>"
  (cl:format cl:nil "string bagfile~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AppendMapSrv-request)))
  "Returns full string definition for message of type 'AppendMapSrv-request"
  (cl:format cl:nil "string bagfile~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AppendMapSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'bagfile))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AppendMapSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AppendMapSrv-request
    (cl:cons ':bagfile (bagfile msg))
))
;//! \htmlinclude AppendMapSrv-response.msg.html

(cl:defclass <AppendMapSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AppendMapSrv-response (<AppendMapSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AppendMapSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AppendMapSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<AppendMapSrv-response> is deprecated: use mower_map-srv:AppendMapSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AppendMapSrv-response>) ostream)
  "Serializes a message object of type '<AppendMapSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AppendMapSrv-response>) istream)
  "Deserializes a message object of type '<AppendMapSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AppendMapSrv-response>)))
  "Returns string type for a service object of type '<AppendMapSrv-response>"
  "mower_map/AppendMapSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AppendMapSrv-response)))
  "Returns string type for a service object of type 'AppendMapSrv-response"
  "mower_map/AppendMapSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AppendMapSrv-response>)))
  "Returns md5sum for a message object of type '<AppendMapSrv-response>"
  "a935fd4be1d8c2e1777172fa15665bc9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AppendMapSrv-response)))
  "Returns md5sum for a message object of type 'AppendMapSrv-response"
  "a935fd4be1d8c2e1777172fa15665bc9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AppendMapSrv-response>)))
  "Returns full string definition for message of type '<AppendMapSrv-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AppendMapSrv-response)))
  "Returns full string definition for message of type 'AppendMapSrv-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AppendMapSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AppendMapSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AppendMapSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AppendMapSrv)))
  'AppendMapSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AppendMapSrv)))
  'AppendMapSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AppendMapSrv)))
  "Returns string type for a service object of type '<AppendMapSrv>"
  "mower_map/AppendMapSrv")