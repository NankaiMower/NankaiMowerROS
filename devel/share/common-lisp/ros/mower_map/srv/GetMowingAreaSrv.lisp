; Auto-generated. Do not edit!


(cl:in-package mower_map-srv)


;//! \htmlinclude GetMowingAreaSrv-request.msg.html

(cl:defclass <GetMowingAreaSrv-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass GetMowingAreaSrv-request (<GetMowingAreaSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMowingAreaSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMowingAreaSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<GetMowingAreaSrv-request> is deprecated: use mower_map-srv:GetMowingAreaSrv-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <GetMowingAreaSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_map-srv:index-val is deprecated.  Use mower_map-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMowingAreaSrv-request>) ostream)
  "Serializes a message object of type '<GetMowingAreaSrv-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMowingAreaSrv-request>) istream)
  "Deserializes a message object of type '<GetMowingAreaSrv-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMowingAreaSrv-request>)))
  "Returns string type for a service object of type '<GetMowingAreaSrv-request>"
  "mower_map/GetMowingAreaSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMowingAreaSrv-request)))
  "Returns string type for a service object of type 'GetMowingAreaSrv-request"
  "mower_map/GetMowingAreaSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMowingAreaSrv-request>)))
  "Returns md5sum for a message object of type '<GetMowingAreaSrv-request>"
  "01fc7e5fc49bba1c034cae41a19bf174")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMowingAreaSrv-request)))
  "Returns md5sum for a message object of type 'GetMowingAreaSrv-request"
  "01fc7e5fc49bba1c034cae41a19bf174")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMowingAreaSrv-request>)))
  "Returns full string definition for message of type '<GetMowingAreaSrv-request>"
  (cl:format cl:nil "uint32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMowingAreaSrv-request)))
  "Returns full string definition for message of type 'GetMowingAreaSrv-request"
  (cl:format cl:nil "uint32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMowingAreaSrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMowingAreaSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMowingAreaSrv-request
    (cl:cons ':index (index msg))
))
;//! \htmlinclude GetMowingAreaSrv-response.msg.html

(cl:defclass <GetMowingAreaSrv-response> (roslisp-msg-protocol:ros-message)
  ((area
    :reader area
    :initarg :area
    :type mower_map-msg:MapArea
    :initform (cl:make-instance 'mower_map-msg:MapArea)))
)

(cl:defclass GetMowingAreaSrv-response (<GetMowingAreaSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMowingAreaSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMowingAreaSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-srv:<GetMowingAreaSrv-response> is deprecated: use mower_map-srv:GetMowingAreaSrv-response instead.")))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <GetMowingAreaSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_map-srv:area-val is deprecated.  Use mower_map-srv:area instead.")
  (area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMowingAreaSrv-response>) ostream)
  "Serializes a message object of type '<GetMowingAreaSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'area) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMowingAreaSrv-response>) istream)
  "Deserializes a message object of type '<GetMowingAreaSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'area) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMowingAreaSrv-response>)))
  "Returns string type for a service object of type '<GetMowingAreaSrv-response>"
  "mower_map/GetMowingAreaSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMowingAreaSrv-response)))
  "Returns string type for a service object of type 'GetMowingAreaSrv-response"
  "mower_map/GetMowingAreaSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMowingAreaSrv-response>)))
  "Returns md5sum for a message object of type '<GetMowingAreaSrv-response>"
  "01fc7e5fc49bba1c034cae41a19bf174")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMowingAreaSrv-response)))
  "Returns md5sum for a message object of type 'GetMowingAreaSrv-response"
  "01fc7e5fc49bba1c034cae41a19bf174")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMowingAreaSrv-response>)))
  "Returns full string definition for message of type '<GetMowingAreaSrv-response>"
  (cl:format cl:nil "MapArea area~%~%================================================================================~%MSG: mower_map/MapArea~%string name~%geometry_msgs/Polygon area~%geometry_msgs/Polygon[] obstacles~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMowingAreaSrv-response)))
  "Returns full string definition for message of type 'GetMowingAreaSrv-response"
  (cl:format cl:nil "MapArea area~%~%================================================================================~%MSG: mower_map/MapArea~%string name~%geometry_msgs/Polygon area~%geometry_msgs/Polygon[] obstacles~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMowingAreaSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'area))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMowingAreaSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMowingAreaSrv-response
    (cl:cons ':area (area msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMowingAreaSrv)))
  'GetMowingAreaSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMowingAreaSrv)))
  'GetMowingAreaSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMowingAreaSrv)))
  "Returns string type for a service object of type '<GetMowingAreaSrv>"
  "mower_map/GetMowingAreaSrv")