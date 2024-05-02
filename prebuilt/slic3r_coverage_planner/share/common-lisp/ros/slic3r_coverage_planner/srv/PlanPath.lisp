; Auto-generated. Do not edit!


(cl:in-package slic3r_coverage_planner-srv)


;//! \htmlinclude PlanPath-request.msg.html

(cl:defclass <PlanPath-request> (roslisp-msg-protocol:ros-message)
  ((fill_type
    :reader fill_type
    :initarg :fill_type
    :type cl:fixnum
    :initform 0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (outer_offset
    :reader outer_offset
    :initarg :outer_offset
    :type cl:float
    :initform 0.0)
   (outline_count
    :reader outline_count
    :initarg :outline_count
    :type cl:fixnum
    :initform 0)
   (outline
    :reader outline
    :initarg :outline
    :type geometry_msgs-msg:Polygon
    :initform (cl:make-instance 'geometry_msgs-msg:Polygon))
   (holes
    :reader holes
    :initarg :holes
    :type (cl:vector geometry_msgs-msg:Polygon)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Polygon :initial-element (cl:make-instance 'geometry_msgs-msg:Polygon))))
)

(cl:defclass PlanPath-request (<PlanPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slic3r_coverage_planner-srv:<PlanPath-request> is deprecated: use slic3r_coverage_planner-srv:PlanPath-request instead.")))

(cl:ensure-generic-function 'fill_type-val :lambda-list '(m))
(cl:defmethod fill_type-val ((m <PlanPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slic3r_coverage_planner-srv:fill_type-val is deprecated.  Use slic3r_coverage_planner-srv:fill_type instead.")
  (fill_type m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <PlanPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slic3r_coverage_planner-srv:angle-val is deprecated.  Use slic3r_coverage_planner-srv:angle instead.")
  (angle m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <PlanPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slic3r_coverage_planner-srv:distance-val is deprecated.  Use slic3r_coverage_planner-srv:distance instead.")
  (distance m))

(cl:ensure-generic-function 'outer_offset-val :lambda-list '(m))
(cl:defmethod outer_offset-val ((m <PlanPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slic3r_coverage_planner-srv:outer_offset-val is deprecated.  Use slic3r_coverage_planner-srv:outer_offset instead.")
  (outer_offset m))

(cl:ensure-generic-function 'outline_count-val :lambda-list '(m))
(cl:defmethod outline_count-val ((m <PlanPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slic3r_coverage_planner-srv:outline_count-val is deprecated.  Use slic3r_coverage_planner-srv:outline_count instead.")
  (outline_count m))

(cl:ensure-generic-function 'outline-val :lambda-list '(m))
(cl:defmethod outline-val ((m <PlanPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slic3r_coverage_planner-srv:outline-val is deprecated.  Use slic3r_coverage_planner-srv:outline instead.")
  (outline m))

(cl:ensure-generic-function 'holes-val :lambda-list '(m))
(cl:defmethod holes-val ((m <PlanPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slic3r_coverage_planner-srv:holes-val is deprecated.  Use slic3r_coverage_planner-srv:holes instead.")
  (holes m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PlanPath-request>)))
    "Constants for message type '<PlanPath-request>"
  '((:FILL_LINEAR . 0)
    (:FILL_CONCENTRIC . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PlanPath-request)))
    "Constants for message type 'PlanPath-request"
  '((:FILL_LINEAR . 0)
    (:FILL_CONCENTRIC . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanPath-request>) ostream)
  "Serializes a message object of type '<PlanPath-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fill_type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'outer_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'outline_count)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'outline) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'holes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'holes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanPath-request>) istream)
  "Deserializes a message object of type '<PlanPath-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fill_type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'outer_offset) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'outline_count)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'outline) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'holes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'holes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Polygon))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanPath-request>)))
  "Returns string type for a service object of type '<PlanPath-request>"
  "slic3r_coverage_planner/PlanPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanPath-request)))
  "Returns string type for a service object of type 'PlanPath-request"
  "slic3r_coverage_planner/PlanPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanPath-request>)))
  "Returns md5sum for a message object of type '<PlanPath-request>"
  "3c4028e4b5701ed40697e69000eb7d4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanPath-request)))
  "Returns md5sum for a message object of type 'PlanPath-request"
  "3c4028e4b5701ed40697e69000eb7d4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanPath-request>)))
  "Returns full string definition for message of type '<PlanPath-request>"
  (cl:format cl:nil "uint8 FILL_LINEAR=0~%uint8 FILL_CONCENTRIC=1~%uint8 fill_type~%float64 angle~%float64 distance~%float64 outer_offset~%uint8 outline_count~%geometry_msgs/Polygon outline~%geometry_msgs/Polygon[] holes~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanPath-request)))
  "Returns full string definition for message of type 'PlanPath-request"
  (cl:format cl:nil "uint8 FILL_LINEAR=0~%uint8 FILL_CONCENTRIC=1~%uint8 fill_type~%float64 angle~%float64 distance~%float64 outer_offset~%uint8 outline_count~%geometry_msgs/Polygon outline~%geometry_msgs/Polygon[] holes~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanPath-request>))
  (cl:+ 0
     1
     8
     8
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'outline))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'holes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanPath-request
    (cl:cons ':fill_type (fill_type msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':outer_offset (outer_offset msg))
    (cl:cons ':outline_count (outline_count msg))
    (cl:cons ':outline (outline msg))
    (cl:cons ':holes (holes msg))
))
;//! \htmlinclude PlanPath-response.msg.html

(cl:defclass <PlanPath-response> (roslisp-msg-protocol:ros-message)
  ((paths
    :reader paths
    :initarg :paths
    :type (cl:vector slic3r_coverage_planner-msg:Path)
   :initform (cl:make-array 0 :element-type 'slic3r_coverage_planner-msg:Path :initial-element (cl:make-instance 'slic3r_coverage_planner-msg:Path))))
)

(cl:defclass PlanPath-response (<PlanPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slic3r_coverage_planner-srv:<PlanPath-response> is deprecated: use slic3r_coverage_planner-srv:PlanPath-response instead.")))

(cl:ensure-generic-function 'paths-val :lambda-list '(m))
(cl:defmethod paths-val ((m <PlanPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slic3r_coverage_planner-srv:paths-val is deprecated.  Use slic3r_coverage_planner-srv:paths instead.")
  (paths m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanPath-response>) ostream)
  "Serializes a message object of type '<PlanPath-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'paths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'paths))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanPath-response>) istream)
  "Deserializes a message object of type '<PlanPath-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'paths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'paths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'slic3r_coverage_planner-msg:Path))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanPath-response>)))
  "Returns string type for a service object of type '<PlanPath-response>"
  "slic3r_coverage_planner/PlanPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanPath-response)))
  "Returns string type for a service object of type 'PlanPath-response"
  "slic3r_coverage_planner/PlanPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanPath-response>)))
  "Returns md5sum for a message object of type '<PlanPath-response>"
  "3c4028e4b5701ed40697e69000eb7d4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanPath-response)))
  "Returns md5sum for a message object of type 'PlanPath-response"
  "3c4028e4b5701ed40697e69000eb7d4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanPath-response>)))
  "Returns full string definition for message of type '<PlanPath-response>"
  (cl:format cl:nil "Path[] paths~%~%================================================================================~%MSG: slic3r_coverage_planner/Path~%uint8 is_outline~%nav_msgs/Path path~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanPath-response)))
  "Returns full string definition for message of type 'PlanPath-response"
  (cl:format cl:nil "Path[] paths~%~%================================================================================~%MSG: slic3r_coverage_planner/Path~%uint8 is_outline~%nav_msgs/Path path~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanPath-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanPath-response
    (cl:cons ':paths (paths msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlanPath)))
  'PlanPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlanPath)))
  'PlanPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanPath)))
  "Returns string type for a service object of type '<PlanPath>"
  "slic3r_coverage_planner/PlanPath")