; Auto-generated. Do not edit!


(cl:in-package xbot_positioning-srv)


;//! \htmlinclude SetPoseSrv-request.msg.html

(cl:defclass <SetPoseSrv-request> (roslisp-msg-protocol:ros-message)
  ((robot_pose
    :reader robot_pose
    :initarg :robot_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass SetPoseSrv-request (<SetPoseSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPoseSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPoseSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xbot_positioning-srv:<SetPoseSrv-request> is deprecated: use xbot_positioning-srv:SetPoseSrv-request instead.")))

(cl:ensure-generic-function 'robot_pose-val :lambda-list '(m))
(cl:defmethod robot_pose-val ((m <SetPoseSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_positioning-srv:robot_pose-val is deprecated.  Use xbot_positioning-srv:robot_pose instead.")
  (robot_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPoseSrv-request>) ostream)
  "Serializes a message object of type '<SetPoseSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPoseSrv-request>) istream)
  "Deserializes a message object of type '<SetPoseSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPoseSrv-request>)))
  "Returns string type for a service object of type '<SetPoseSrv-request>"
  "xbot_positioning/SetPoseSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPoseSrv-request)))
  "Returns string type for a service object of type 'SetPoseSrv-request"
  "xbot_positioning/SetPoseSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPoseSrv-request>)))
  "Returns md5sum for a message object of type '<SetPoseSrv-request>"
  "a1e8e42f88161a7bc7869c4cb33b8e1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPoseSrv-request)))
  "Returns md5sum for a message object of type 'SetPoseSrv-request"
  "a1e8e42f88161a7bc7869c4cb33b8e1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPoseSrv-request>)))
  "Returns full string definition for message of type '<SetPoseSrv-request>"
  (cl:format cl:nil "geometry_msgs/Pose robot_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPoseSrv-request)))
  "Returns full string definition for message of type 'SetPoseSrv-request"
  (cl:format cl:nil "geometry_msgs/Pose robot_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPoseSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPoseSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPoseSrv-request
    (cl:cons ':robot_pose (robot_pose msg))
))
;//! \htmlinclude SetPoseSrv-response.msg.html

(cl:defclass <SetPoseSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetPoseSrv-response (<SetPoseSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPoseSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPoseSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xbot_positioning-srv:<SetPoseSrv-response> is deprecated: use xbot_positioning-srv:SetPoseSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPoseSrv-response>) ostream)
  "Serializes a message object of type '<SetPoseSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPoseSrv-response>) istream)
  "Deserializes a message object of type '<SetPoseSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPoseSrv-response>)))
  "Returns string type for a service object of type '<SetPoseSrv-response>"
  "xbot_positioning/SetPoseSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPoseSrv-response)))
  "Returns string type for a service object of type 'SetPoseSrv-response"
  "xbot_positioning/SetPoseSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPoseSrv-response>)))
  "Returns md5sum for a message object of type '<SetPoseSrv-response>"
  "a1e8e42f88161a7bc7869c4cb33b8e1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPoseSrv-response)))
  "Returns md5sum for a message object of type 'SetPoseSrv-response"
  "a1e8e42f88161a7bc7869c4cb33b8e1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPoseSrv-response>)))
  "Returns full string definition for message of type '<SetPoseSrv-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPoseSrv-response)))
  "Returns full string definition for message of type 'SetPoseSrv-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPoseSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPoseSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPoseSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPoseSrv)))
  'SetPoseSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPoseSrv)))
  'SetPoseSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPoseSrv)))
  "Returns string type for a service object of type '<SetPoseSrv>"
  "xbot_positioning/SetPoseSrv")