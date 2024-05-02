; Auto-generated. Do not edit!


(cl:in-package xbot_msgs-msg)


;//! \htmlinclude MapOverlayPolygon.msg.html

(cl:defclass <MapOverlayPolygon> (roslisp-msg-protocol:ros-message)
  ((polygon
    :reader polygon
    :initarg :polygon
    :type geometry_msgs-msg:Polygon
    :initform (cl:make-instance 'geometry_msgs-msg:Polygon))
   (color
    :reader color
    :initarg :color
    :type cl:string
    :initform "")
   (closed
    :reader closed
    :initarg :closed
    :type cl:boolean
    :initform cl:nil)
   (line_width
    :reader line_width
    :initarg :line_width
    :type cl:float
    :initform 0.0))
)

(cl:defclass MapOverlayPolygon (<MapOverlayPolygon>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapOverlayPolygon>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapOverlayPolygon)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xbot_msgs-msg:<MapOverlayPolygon> is deprecated: use xbot_msgs-msg:MapOverlayPolygon instead.")))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <MapOverlayPolygon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:polygon-val is deprecated.  Use xbot_msgs-msg:polygon instead.")
  (polygon m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <MapOverlayPolygon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:color-val is deprecated.  Use xbot_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'closed-val :lambda-list '(m))
(cl:defmethod closed-val ((m <MapOverlayPolygon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:closed-val is deprecated.  Use xbot_msgs-msg:closed instead.")
  (closed m))

(cl:ensure-generic-function 'line_width-val :lambda-list '(m))
(cl:defmethod line_width-val ((m <MapOverlayPolygon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:line_width-val is deprecated.  Use xbot_msgs-msg:line_width instead.")
  (line_width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapOverlayPolygon>) ostream)
  "Serializes a message object of type '<MapOverlayPolygon>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygon) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'closed) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'line_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapOverlayPolygon>) istream)
  "Deserializes a message object of type '<MapOverlayPolygon>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygon) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'closed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'line_width) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapOverlayPolygon>)))
  "Returns string type for a message object of type '<MapOverlayPolygon>"
  "xbot_msgs/MapOverlayPolygon")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapOverlayPolygon)))
  "Returns string type for a message object of type 'MapOverlayPolygon"
  "xbot_msgs/MapOverlayPolygon")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapOverlayPolygon>)))
  "Returns md5sum for a message object of type '<MapOverlayPolygon>"
  "120b1776b75dc17ea7f8c81f08a7abe3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapOverlayPolygon)))
  "Returns md5sum for a message object of type 'MapOverlayPolygon"
  "120b1776b75dc17ea7f8c81f08a7abe3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapOverlayPolygon>)))
  "Returns full string definition for message of type '<MapOverlayPolygon>"
  (cl:format cl:nil "geometry_msgs/Polygon polygon~%string color~%bool closed~%float32 line_width~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapOverlayPolygon)))
  "Returns full string definition for message of type 'MapOverlayPolygon"
  (cl:format cl:nil "geometry_msgs/Polygon polygon~%string color~%bool closed~%float32 line_width~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapOverlayPolygon>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygon))
     4 (cl:length (cl:slot-value msg 'color))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapOverlayPolygon>))
  "Converts a ROS message object to a list"
  (cl:list 'MapOverlayPolygon
    (cl:cons ':polygon (polygon msg))
    (cl:cons ':color (color msg))
    (cl:cons ':closed (closed msg))
    (cl:cons ':line_width (line_width msg))
))
