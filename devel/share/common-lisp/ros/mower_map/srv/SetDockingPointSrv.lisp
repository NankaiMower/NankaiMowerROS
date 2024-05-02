; Auto-generated. Do not edit!


(cl:in-package mower_map-srv)


;//! \htmlinclude SetDockingPointSrv-request.msg.html

(cl:defclass <SetDockingPointSrv-request> (roslisp-msg-protocol:ros-message)
  ((docking_pose
    :reader docking_pose
    :initarg :docking_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass SetDockingPointSrv-request (<SetDockingPointSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDockingPointSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDockingPointSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<SetDockingPointSrv-request> is deprecated: use mower_map-srv:SetDockingPointSrv-request instead.")))

(cl:ensure-generic-function 'docking_pose-val :lambda-list '(m))
(cl:defmethod docking_pose-val ((m <SetDockingPointSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_map-srv:docking_pose-val is deprecated.  Use mower_map-srv:docking_pose instead.")
  (docking_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDockingPointSrv-request>) ostream)
  "Serializes a message object of type '<SetDockingPointSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'docking_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDockingPointSrv-request>) istream)
  "Deserializes a message object of type '<SetDockingPointSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'docking_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDockingPointSrv-request>)))
  "Returns string type for a service object of type '<SetDockingPointSrv-request>"
  "mower_map/SetDockingPointSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDockingPointSrv-request)))
  "Returns string type for a service object of type 'SetDockingPointSrv-request"
  "mower_map/SetDockingPointSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDockingPointSrv-request>)))
  "Returns md5sum for a message object of type '<SetDockingPointSrv-request>"
  "082f2ff1dbfba9861dd424f93f126a35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDockingPointSrv-request)))
  "Returns md5sum for a message object of type 'SetDockingPointSrv-request"
  "082f2ff1dbfba9861dd424f93f126a35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDockingPointSrv-request>)))
  "Returns full string definition for message of type '<SetDockingPointSrv-request>"
  (cl:format cl:nil "geometry_msgs/Pose docking_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDockingPointSrv-request)))
  "Returns full string definition for message of type 'SetDockingPointSrv-request"
  (cl:format cl:nil "geometry_msgs/Pose docking_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDockingPointSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'docking_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDockingPointSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDockingPointSrv-request
    (cl:cons ':docking_pose (docking_pose msg))
))
;//! \htmlinclude SetDockingPointSrv-response.msg.html

(cl:defclass <SetDockingPointSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetDockingPointSrv-response (<SetDockingPointSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDockingPointSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDockingPointSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<SetDockingPointSrv-response> is deprecated: use mower_map-srv:SetDockingPointSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDockingPointSrv-response>) ostream)
  "Serializes a message object of type '<SetDockingPointSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDockingPointSrv-response>) istream)
  "Deserializes a message object of type '<SetDockingPointSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDockingPointSrv-response>)))
  "Returns string type for a service object of type '<SetDockingPointSrv-response>"
  "mower_map/SetDockingPointSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDockingPointSrv-response)))
  "Returns string type for a service object of type 'SetDockingPointSrv-response"
  "mower_map/SetDockingPointSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDockingPointSrv-response>)))
  "Returns md5sum for a message object of type '<SetDockingPointSrv-response>"
  "082f2ff1dbfba9861dd424f93f126a35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDockingPointSrv-response)))
  "Returns md5sum for a message object of type 'SetDockingPointSrv-response"
  "082f2ff1dbfba9861dd424f93f126a35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDockingPointSrv-response>)))
  "Returns full string definition for message of type '<SetDockingPointSrv-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDockingPointSrv-response)))
  "Returns full string definition for message of type 'SetDockingPointSrv-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDockingPointSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDockingPointSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDockingPointSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDockingPointSrv)))
  'SetDockingPointSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDockingPointSrv)))
  'SetDockingPointSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDockingPointSrv)))
  "Returns string type for a service object of type '<SetDockingPointSrv>"
  "mower_map/SetDockingPointSrv")