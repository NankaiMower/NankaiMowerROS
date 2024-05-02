; Auto-generated. Do not edit!


(cl:in-package ftc_local_planner-srv)


;//! \htmlinclude PlannerGetProgress-request.msg.html

(cl:defclass <PlannerGetProgress-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PlannerGetProgress-request (<PlannerGetProgress-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerGetProgress-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerGetProgress-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ftc_local_planner-srv:<PlannerGetProgress-request> is deprecated: use ftc_local_planner-srv:PlannerGetProgress-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerGetProgress-request>) ostream)
  "Serializes a message object of type '<PlannerGetProgress-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerGetProgress-request>) istream)
  "Deserializes a message object of type '<PlannerGetProgress-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerGetProgress-request>)))
  "Returns string type for a service object of type '<PlannerGetProgress-request>"
  "ftc_local_planner/PlannerGetProgressRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerGetProgress-request)))
  "Returns string type for a service object of type 'PlannerGetProgress-request"
  "ftc_local_planner/PlannerGetProgressRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerGetProgress-request>)))
  "Returns md5sum for a message object of type '<PlannerGetProgress-request>"
  "ad7b979103dbd563a352ef5270716728")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerGetProgress-request)))
  "Returns md5sum for a message object of type 'PlannerGetProgress-request"
  "ad7b979103dbd563a352ef5270716728")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerGetProgress-request>)))
  "Returns full string definition for message of type '<PlannerGetProgress-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerGetProgress-request)))
  "Returns full string definition for message of type 'PlannerGetProgress-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerGetProgress-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerGetProgress-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerGetProgress-request
))
;//! \htmlinclude PlannerGetProgress-response.msg.html

(cl:defclass <PlannerGetProgress-response> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass PlannerGetProgress-response (<PlannerGetProgress-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerGetProgress-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerGetProgress-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ftc_local_planner-srv:<PlannerGetProgress-response> is deprecated: use ftc_local_planner-srv:PlannerGetProgress-response instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <PlannerGetProgress-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ftc_local_planner-srv:index-val is deprecated.  Use ftc_local_planner-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerGetProgress-response>) ostream)
  "Serializes a message object of type '<PlannerGetProgress-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerGetProgress-response>) istream)
  "Deserializes a message object of type '<PlannerGetProgress-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerGetProgress-response>)))
  "Returns string type for a service object of type '<PlannerGetProgress-response>"
  "ftc_local_planner/PlannerGetProgressResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerGetProgress-response)))
  "Returns string type for a service object of type 'PlannerGetProgress-response"
  "ftc_local_planner/PlannerGetProgressResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerGetProgress-response>)))
  "Returns md5sum for a message object of type '<PlannerGetProgress-response>"
  "ad7b979103dbd563a352ef5270716728")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerGetProgress-response)))
  "Returns md5sum for a message object of type 'PlannerGetProgress-response"
  "ad7b979103dbd563a352ef5270716728")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerGetProgress-response>)))
  "Returns full string definition for message of type '<PlannerGetProgress-response>"
  (cl:format cl:nil "uint32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerGetProgress-response)))
  "Returns full string definition for message of type 'PlannerGetProgress-response"
  (cl:format cl:nil "uint32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerGetProgress-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerGetProgress-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerGetProgress-response
    (cl:cons ':index (index msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlannerGetProgress)))
  'PlannerGetProgress-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlannerGetProgress)))
  'PlannerGetProgress-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerGetProgress)))
  "Returns string type for a service object of type '<PlannerGetProgress>"
  "ftc_local_planner/PlannerGetProgress")