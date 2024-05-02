; Auto-generated. Do not edit!


(cl:in-package xbot_msgs-msg)


;//! \htmlinclude MapOverlay.msg.html

(cl:defclass <MapOverlay> (roslisp-msg-protocol:ros-message)
  ((polygons
    :reader polygons
    :initarg :polygons
    :type (cl:vector xbot_msgs-msg:MapOverlayPolygon)
   :initform (cl:make-array 0 :element-type 'xbot_msgs-msg:MapOverlayPolygon :initial-element (cl:make-instance 'xbot_msgs-msg:MapOverlayPolygon))))
)

(cl:defclass MapOverlay (<MapOverlay>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapOverlay>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapOverlay)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xbot_msgs-msg:<MapOverlay> is deprecated: use xbot_msgs-msg:MapOverlay instead.")))

(cl:ensure-generic-function 'polygons-val :lambda-list '(m))
(cl:defmethod polygons-val ((m <MapOverlay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:polygons-val is deprecated.  Use xbot_msgs-msg:polygons instead.")
  (polygons m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapOverlay>) ostream)
  "Serializes a message object of type '<MapOverlay>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygons))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapOverlay>) istream)
  "Deserializes a message object of type '<MapOverlay>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'xbot_msgs-msg:MapOverlayPolygon))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapOverlay>)))
  "Returns string type for a message object of type '<MapOverlay>"
  "xbot_msgs/MapOverlay")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapOverlay)))
  "Returns string type for a message object of type 'MapOverlay"
  "xbot_msgs/MapOverlay")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapOverlay>)))
  "Returns md5sum for a message object of type '<MapOverlay>"
  "6a3c1f3fd7ad5b5122b909dfbaf6cefa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapOverlay)))
  "Returns md5sum for a message object of type 'MapOverlay"
  "6a3c1f3fd7ad5b5122b909dfbaf6cefa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapOverlay>)))
  "Returns full string definition for message of type '<MapOverlay>"
  (cl:format cl:nil "MapOverlayPolygon[] polygons~%~%================================================================================~%MSG: xbot_msgs/MapOverlayPolygon~%geometry_msgs/Polygon polygon~%string color~%bool closed~%float32 line_width~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapOverlay)))
  "Returns full string definition for message of type 'MapOverlay"
  (cl:format cl:nil "MapOverlayPolygon[] polygons~%~%================================================================================~%MSG: xbot_msgs/MapOverlayPolygon~%geometry_msgs/Polygon polygon~%string color~%bool closed~%float32 line_width~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapOverlay>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapOverlay>))
  "Converts a ROS message object to a list"
  (cl:list 'MapOverlay
    (cl:cons ':polygons (polygons msg))
))
