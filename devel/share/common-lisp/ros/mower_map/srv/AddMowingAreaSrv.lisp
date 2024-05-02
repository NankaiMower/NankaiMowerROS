; Auto-generated. Do not edit!


(cl:in-package mower_map-srv)


;//! \htmlinclude AddMowingAreaSrv-request.msg.html

(cl:defclass <AddMowingAreaSrv-request> (roslisp-msg-protocol:ros-message)
  ((area
    :reader area
    :initarg :area
    :type mower_map-msg:MapArea
    :initform (cl:make-instance 'mower_map-msg:MapArea))
   (isNavigationArea
    :reader isNavigationArea
    :initarg :isNavigationArea
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AddMowingAreaSrv-request (<AddMowingAreaSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddMowingAreaSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddMowingAreaSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<AddMowingAreaSrv-request> is deprecated: use mower_map-srv:AddMowingAreaSrv-request instead.")))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <AddMowingAreaSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_map-srv:area-val is deprecated.  Use mower_map-srv:area instead.")
  (area m))

(cl:ensure-generic-function 'isNavigationArea-val :lambda-list '(m))
(cl:defmethod isNavigationArea-val ((m <AddMowingAreaSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_map-srv:isNavigationArea-val is deprecated.  Use mower_map-srv:isNavigationArea instead.")
  (isNavigationArea m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddMowingAreaSrv-request>) ostream)
  "Serializes a message object of type '<AddMowingAreaSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'area) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isNavigationArea) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddMowingAreaSrv-request>) istream)
  "Deserializes a message object of type '<AddMowingAreaSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'area) istream)
    (cl:setf (cl:slot-value msg 'isNavigationArea) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddMowingAreaSrv-request>)))
  "Returns string type for a service object of type '<AddMowingAreaSrv-request>"
  "mower_map/AddMowingAreaSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddMowingAreaSrv-request)))
  "Returns string type for a service object of type 'AddMowingAreaSrv-request"
  "mower_map/AddMowingAreaSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddMowingAreaSrv-request>)))
  "Returns md5sum for a message object of type '<AddMowingAreaSrv-request>"
  "b3ef56ffad622c37e65aec1dd5ae39a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddMowingAreaSrv-request)))
  "Returns md5sum for a message object of type 'AddMowingAreaSrv-request"
  "b3ef56ffad622c37e65aec1dd5ae39a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddMowingAreaSrv-request>)))
  "Returns full string definition for message of type '<AddMowingAreaSrv-request>"
  (cl:format cl:nil "MapArea area~%bool isNavigationArea~%~%================================================================================~%MSG: mower_map/MapArea~%string name~%geometry_msgs/Polygon area~%geometry_msgs/Polygon[] obstacles~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddMowingAreaSrv-request)))
  "Returns full string definition for message of type 'AddMowingAreaSrv-request"
  (cl:format cl:nil "MapArea area~%bool isNavigationArea~%~%================================================================================~%MSG: mower_map/MapArea~%string name~%geometry_msgs/Polygon area~%geometry_msgs/Polygon[] obstacles~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddMowingAreaSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'area))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddMowingAreaSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddMowingAreaSrv-request
    (cl:cons ':area (area msg))
    (cl:cons ':isNavigationArea (isNavigationArea msg))
))
;//! \htmlinclude AddMowingAreaSrv-response.msg.html

(cl:defclass <AddMowingAreaSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddMowingAreaSrv-response (<AddMowingAreaSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddMowingAreaSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddMowingAreaSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<AddMowingAreaSrv-response> is deprecated: use mower_map-srv:AddMowingAreaSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddMowingAreaSrv-response>) ostream)
  "Serializes a message object of type '<AddMowingAreaSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddMowingAreaSrv-response>) istream)
  "Deserializes a message object of type '<AddMowingAreaSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddMowingAreaSrv-response>)))
  "Returns string type for a service object of type '<AddMowingAreaSrv-response>"
  "mower_map/AddMowingAreaSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddMowingAreaSrv-response)))
  "Returns string type for a service object of type 'AddMowingAreaSrv-response"
  "mower_map/AddMowingAreaSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddMowingAreaSrv-response>)))
  "Returns md5sum for a message object of type '<AddMowingAreaSrv-response>"
  "b3ef56ffad622c37e65aec1dd5ae39a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddMowingAreaSrv-response)))
  "Returns md5sum for a message object of type 'AddMowingAreaSrv-response"
  "b3ef56ffad622c37e65aec1dd5ae39a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddMowingAreaSrv-response>)))
  "Returns full string definition for message of type '<AddMowingAreaSrv-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddMowingAreaSrv-response)))
  "Returns full string definition for message of type 'AddMowingAreaSrv-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddMowingAreaSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddMowingAreaSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddMowingAreaSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddMowingAreaSrv)))
  'AddMowingAreaSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddMowingAreaSrv)))
  'AddMowingAreaSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddMowingAreaSrv)))
  "Returns string type for a service object of type '<AddMowingAreaSrv>"
  "mower_map/AddMowingAreaSrv")