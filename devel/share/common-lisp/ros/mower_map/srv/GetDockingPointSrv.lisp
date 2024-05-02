; Auto-generated. Do not edit!


(cl:in-package mower_map-srv)


;//! \htmlinclude GetDockingPointSrv-request.msg.html

(cl:defclass <GetDockingPointSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDockingPointSrv-request (<GetDockingPointSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDockingPointSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDockingPointSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<GetDockingPointSrv-request> is deprecated: use mower_map-srv:GetDockingPointSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDockingPointSrv-request>) ostream)
  "Serializes a message object of type '<GetDockingPointSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDockingPointSrv-request>) istream)
  "Deserializes a message object of type '<GetDockingPointSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDockingPointSrv-request>)))
  "Returns string type for a service object of type '<GetDockingPointSrv-request>"
  "mower_map/GetDockingPointSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDockingPointSrv-request)))
  "Returns string type for a service object of type 'GetDockingPointSrv-request"
  "mower_map/GetDockingPointSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDockingPointSrv-request>)))
  "Returns md5sum for a message object of type '<GetDockingPointSrv-request>"
  "082f2ff1dbfba9861dd424f93f126a35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDockingPointSrv-request)))
  "Returns md5sum for a message object of type 'GetDockingPointSrv-request"
  "082f2ff1dbfba9861dd424f93f126a35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDockingPointSrv-request>)))
  "Returns full string definition for message of type '<GetDockingPointSrv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDockingPointSrv-request)))
  "Returns full string definition for message of type 'GetDockingPointSrv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDockingPointSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDockingPointSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDockingPointSrv-request
))
;//! \htmlinclude GetDockingPointSrv-response.msg.html

(cl:defclass <GetDockingPointSrv-response> (roslisp-msg-protocol:ros-message)
  ((docking_pose
    :reader docking_pose
    :initarg :docking_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass GetDockingPointSrv-response (<GetDockingPointSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDockingPointSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDockingPointSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<GetDockingPointSrv-response> is deprecated: use mower_map-srv:GetDockingPointSrv-response instead.")))

(cl:ensure-generic-function 'docking_pose-val :lambda-list '(m))
(cl:defmethod docking_pose-val ((m <GetDockingPointSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_map-srv:docking_pose-val is deprecated.  Use mower_map-srv:docking_pose instead.")
  (docking_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDockingPointSrv-response>) ostream)
  "Serializes a message object of type '<GetDockingPointSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'docking_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDockingPointSrv-response>) istream)
  "Deserializes a message object of type '<GetDockingPointSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'docking_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDockingPointSrv-response>)))
  "Returns string type for a service object of type '<GetDockingPointSrv-response>"
  "mower_map/GetDockingPointSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDockingPointSrv-response)))
  "Returns string type for a service object of type 'GetDockingPointSrv-response"
  "mower_map/GetDockingPointSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDockingPointSrv-response>)))
  "Returns md5sum for a message object of type '<GetDockingPointSrv-response>"
  "082f2ff1dbfba9861dd424f93f126a35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDockingPointSrv-response)))
  "Returns md5sum for a message object of type 'GetDockingPointSrv-response"
  "082f2ff1dbfba9861dd424f93f126a35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDockingPointSrv-response>)))
  "Returns full string definition for message of type '<GetDockingPointSrv-response>"
  (cl:format cl:nil "geometry_msgs/Pose docking_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDockingPointSrv-response)))
  "Returns full string definition for message of type 'GetDockingPointSrv-response"
  (cl:format cl:nil "geometry_msgs/Pose docking_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDockingPointSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'docking_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDockingPointSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDockingPointSrv-response
    (cl:cons ':docking_pose (docking_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDockingPointSrv)))
  'GetDockingPointSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDockingPointSrv)))
  'GetDockingPointSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDockingPointSrv)))
  "Returns string type for a service object of type '<GetDockingPointSrv>"
  "mower_map/GetDockingPointSrv")