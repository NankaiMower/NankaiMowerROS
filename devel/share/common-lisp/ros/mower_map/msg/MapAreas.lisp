; Auto-generated. Do not edit!


(cl:in-package mower_map-msg)


;//! \htmlinclude MapAreas.msg.html

(cl:defclass <MapAreas> (roslisp-msg-protocol:ros-message)
  ((mapWidth
    :reader mapWidth
    :initarg :mapWidth
    :type cl:float
    :initform 0.0)
   (mapHeight
    :reader mapHeight
    :initarg :mapHeight
    :type cl:float
    :initform 0.0)
   (mapCenterX
    :reader mapCenterX
    :initarg :mapCenterX
    :type cl:float
    :initform 0.0)
   (mapCenterY
    :reader mapCenterY
    :initarg :mapCenterY
    :type cl:float
    :initform 0.0)
   (navigationAreas
    :reader navigationAreas
    :initarg :navigationAreas
    :type (cl:vector mower_map-msg:MapArea)
   :initform (cl:make-array 0 :element-type 'mower_map-msg:MapArea :initial-element (cl:make-instance 'mower_map-msg:MapArea)))
   (mowingAreas
    :reader mowingAreas
    :initarg :mowingAreas
    :type (cl:vector mower_map-msg:MapArea)
   :initform (cl:make-array 0 :element-type 'mower_map-msg:MapArea :initial-element (cl:make-instance 'mower_map-msg:MapArea))))
)

(cl:defclass MapAreas (<MapAreas>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapAreas>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapAreas)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_map-msg:<MapAreas> is deprecated: use mower_map-msg:MapAreas instead.")))

(cl:ensure-generic-function 'mapWidth-val :lambda-list '(m))
(cl:defmethod mapWidth-val ((m <MapAreas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_map-msg:mapWidth-val is deprecated.  Use mower_map-msg:mapWidth instead.")
  (mapWidth m))

(cl:ensure-generic-function 'mapHeight-val :lambda-list '(m))
(cl:defmethod mapHeight-val ((m <MapAreas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_map-msg:mapHeight-val is deprecated.  Use mower_map-msg:mapHeight instead.")
  (mapHeight m))

(cl:ensure-generic-function 'mapCenterX-val :lambda-list '(m))
(cl:defmethod mapCenterX-val ((m <MapAreas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_map-msg:mapCenterX-val is deprecated.  Use mower_map-msg:mapCenterX instead.")
  (mapCenterX m))

(cl:ensure-generic-function 'mapCenterY-val :lambda-list '(m))
(cl:defmethod mapCenterY-val ((m <MapAreas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_map-msg:mapCenterY-val is deprecated.  Use mower_map-msg:mapCenterY instead.")
  (mapCenterY m))

(cl:ensure-generic-function 'navigationAreas-val :lambda-list '(m))
(cl:defmethod navigationAreas-val ((m <MapAreas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_map-msg:navigationAreas-val is deprecated.  Use mower_map-msg:navigationAreas instead.")
  (navigationAreas m))

(cl:ensure-generic-function 'mowingAreas-val :lambda-list '(m))
(cl:defmethod mowingAreas-val ((m <MapAreas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_map-msg:mowingAreas-val is deprecated.  Use mower_map-msg:mowingAreas instead.")
  (mowingAreas m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapAreas>) ostream)
  "Serializes a message object of type '<MapAreas>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mapWidth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mapHeight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mapCenterX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mapCenterY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'navigationAreas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'navigationAreas))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mowingAreas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'mowingAreas))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapAreas>) istream)
  "Deserializes a message object of type '<MapAreas>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mapWidth) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mapHeight) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mapCenterX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mapCenterY) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'navigationAreas) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'navigationAreas)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mower_map-msg:MapArea))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mowingAreas) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mowingAreas)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mower_map-msg:MapArea))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapAreas>)))
  "Returns string type for a message object of type '<MapAreas>"
  "mower_map/MapAreas")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapAreas)))
  "Returns string type for a message object of type 'MapAreas"
  "mower_map/MapAreas")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapAreas>)))
  "Returns md5sum for a message object of type '<MapAreas>"
  "d3c611e824aac319a11694c960ef24a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapAreas)))
  "Returns md5sum for a message object of type 'MapAreas"
  "d3c611e824aac319a11694c960ef24a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapAreas>)))
  "Returns full string definition for message of type '<MapAreas>"
  (cl:format cl:nil "float64 mapWidth~%float64 mapHeight~%float64 mapCenterX~%float64 mapCenterY~%mower_map/MapArea[] navigationAreas~%mower_map/MapArea[] mowingAreas~%================================================================================~%MSG: mower_map/MapArea~%string name~%geometry_msgs/Polygon area~%geometry_msgs/Polygon[] obstacles~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapAreas)))
  "Returns full string definition for message of type 'MapAreas"
  (cl:format cl:nil "float64 mapWidth~%float64 mapHeight~%float64 mapCenterX~%float64 mapCenterY~%mower_map/MapArea[] navigationAreas~%mower_map/MapArea[] mowingAreas~%================================================================================~%MSG: mower_map/MapArea~%string name~%geometry_msgs/Polygon area~%geometry_msgs/Polygon[] obstacles~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapAreas>))
  (cl:+ 0
     8
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'navigationAreas) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mowingAreas) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapAreas>))
  "Converts a ROS message object to a list"
  (cl:list 'MapAreas
    (cl:cons ':mapWidth (mapWidth msg))
    (cl:cons ':mapHeight (mapHeight msg))
    (cl:cons ':mapCenterX (mapCenterX msg))
    (cl:cons ':mapCenterY (mapCenterY msg))
    (cl:cons ':navigationAreas (navigationAreas msg))
    (cl:cons ':mowingAreas (mowingAreas msg))
))
