; Auto-generated. Do not edit!


(cl:in-package mower_map-srv)


;//! \htmlinclude SetNavPointSrv-request.msg.html

(cl:defclass <SetNavPointSrv-request> (roslisp-msg-protocol:ros-message)
  ((nav_pose
    :reader nav_pose
    :initarg :nav_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass SetNavPointSrv-request (<SetNavPointSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNavPointSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNavPointSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<SetNavPointSrv-request> is deprecated: use mower_map-srv:SetNavPointSrv-request instead.")))

(cl:ensure-generic-function 'nav_pose-val :lambda-list '(m))
(cl:defmethod nav_pose-val ((m <SetNavPointSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_map-srv:nav_pose-val is deprecated.  Use mower_map-srv:nav_pose instead.")
  (nav_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNavPointSrv-request>) ostream)
  "Serializes a message object of type '<SetNavPointSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nav_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNavPointSrv-request>) istream)
  "Deserializes a message object of type '<SetNavPointSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nav_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNavPointSrv-request>)))
  "Returns string type for a service object of type '<SetNavPointSrv-request>"
  "mower_map/SetNavPointSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNavPointSrv-request)))
  "Returns string type for a service object of type 'SetNavPointSrv-request"
  "mower_map/SetNavPointSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNavPointSrv-request>)))
  "Returns md5sum for a message object of type '<SetNavPointSrv-request>"
  "57762a01338710861d6dcc49f7745df2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNavPointSrv-request)))
  "Returns md5sum for a message object of type 'SetNavPointSrv-request"
  "57762a01338710861d6dcc49f7745df2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNavPointSrv-request>)))
  "Returns full string definition for message of type '<SetNavPointSrv-request>"
  (cl:format cl:nil "geometry_msgs/Pose nav_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNavPointSrv-request)))
  "Returns full string definition for message of type 'SetNavPointSrv-request"
  (cl:format cl:nil "geometry_msgs/Pose nav_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNavPointSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nav_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNavPointSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNavPointSrv-request
    (cl:cons ':nav_pose (nav_pose msg))
))
;//! \htmlinclude SetNavPointSrv-response.msg.html

(cl:defclass <SetNavPointSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetNavPointSrv-response (<SetNavPointSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNavPointSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNavPointSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<SetNavPointSrv-response> is deprecated: use mower_map-srv:SetNavPointSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNavPointSrv-response>) ostream)
  "Serializes a message object of type '<SetNavPointSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNavPointSrv-response>) istream)
  "Deserializes a message object of type '<SetNavPointSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNavPointSrv-response>)))
  "Returns string type for a service object of type '<SetNavPointSrv-response>"
  "mower_map/SetNavPointSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNavPointSrv-response)))
  "Returns string type for a service object of type 'SetNavPointSrv-response"
  "mower_map/SetNavPointSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNavPointSrv-response>)))
  "Returns md5sum for a message object of type '<SetNavPointSrv-response>"
  "57762a01338710861d6dcc49f7745df2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNavPointSrv-response)))
  "Returns md5sum for a message object of type 'SetNavPointSrv-response"
  "57762a01338710861d6dcc49f7745df2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNavPointSrv-response>)))
  "Returns full string definition for message of type '<SetNavPointSrv-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNavPointSrv-response)))
  "Returns full string definition for message of type 'SetNavPointSrv-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNavPointSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNavPointSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNavPointSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetNavPointSrv)))
  'SetNavPointSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetNavPointSrv)))
  'SetNavPointSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNavPointSrv)))
  "Returns string type for a service object of type '<SetNavPointSrv>"
  "mower_map/SetNavPointSrv")