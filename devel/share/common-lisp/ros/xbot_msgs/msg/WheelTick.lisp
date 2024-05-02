; Auto-generated. Do not edit!


(cl:in-package xbot_msgs-msg)


;//! \htmlinclude WheelTick.msg.html

(cl:defclass <WheelTick> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (wheel_tick_factor
    :reader wheel_tick_factor
    :initarg :wheel_tick_factor
    :type cl:integer
    :initform 0)
   (valid_wheels
    :reader valid_wheels
    :initarg :valid_wheels
    :type cl:fixnum
    :initform 0)
   (wheel_direction_fl
    :reader wheel_direction_fl
    :initarg :wheel_direction_fl
    :type cl:fixnum
    :initform 0)
   (wheel_ticks_fl
    :reader wheel_ticks_fl
    :initarg :wheel_ticks_fl
    :type cl:integer
    :initform 0)
   (wheel_direction_fr
    :reader wheel_direction_fr
    :initarg :wheel_direction_fr
    :type cl:fixnum
    :initform 0)
   (wheel_ticks_fr
    :reader wheel_ticks_fr
    :initarg :wheel_ticks_fr
    :type cl:integer
    :initform 0)
   (wheel_direction_rl
    :reader wheel_direction_rl
    :initarg :wheel_direction_rl
    :type cl:fixnum
    :initform 0)
   (wheel_ticks_rl
    :reader wheel_ticks_rl
    :initarg :wheel_ticks_rl
    :type cl:integer
    :initform 0)
   (wheel_direction_rr
    :reader wheel_direction_rr
    :initarg :wheel_direction_rr
    :type cl:fixnum
    :initform 0)
   (wheel_ticks_rr
    :reader wheel_ticks_rr
    :initarg :wheel_ticks_rr
    :type cl:integer
    :initform 0))
)

(cl:defclass WheelTick (<WheelTick>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelTick>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelTick)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xbot_msgs-msg:<WheelTick> is deprecated: use xbot_msgs-msg:WheelTick instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <WheelTick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:stamp-val is deprecated.  Use xbot_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'wheel_tick_factor-val :lambda-list '(m))
(cl:defmethod wheel_tick_factor-val ((m <WheelTick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:wheel_tick_factor-val is deprecated.  Use xbot_msgs-msg:wheel_tick_factor instead.")
  (wheel_tick_factor m))

(cl:ensure-generic-function 'valid_wheels-val :lambda-list '(m))
(cl:defmethod valid_wheels-val ((m <WheelTick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:valid_wheels-val is deprecated.  Use xbot_msgs-msg:valid_wheels instead.")
  (valid_wheels m))

(cl:ensure-generic-function 'wheel_direction_fl-val :lambda-list '(m))
(cl:defmethod wheel_direction_fl-val ((m <WheelTick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:wheel_direction_fl-val is deprecated.  Use xbot_msgs-msg:wheel_direction_fl instead.")
  (wheel_direction_fl m))

(cl:ensure-generic-function 'wheel_ticks_fl-val :lambda-list '(m))
(cl:defmethod wheel_ticks_fl-val ((m <WheelTick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:wheel_ticks_fl-val is deprecated.  Use xbot_msgs-msg:wheel_ticks_fl instead.")
  (wheel_ticks_fl m))

(cl:ensure-generic-function 'wheel_direction_fr-val :lambda-list '(m))
(cl:defmethod wheel_direction_fr-val ((m <WheelTick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:wheel_direction_fr-val is deprecated.  Use xbot_msgs-msg:wheel_direction_fr instead.")
  (wheel_direction_fr m))

(cl:ensure-generic-function 'wheel_ticks_fr-val :lambda-list '(m))
(cl:defmethod wheel_ticks_fr-val ((m <WheelTick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:wheel_ticks_fr-val is deprecated.  Use xbot_msgs-msg:wheel_ticks_fr instead.")
  (wheel_ticks_fr m))

(cl:ensure-generic-function 'wheel_direction_rl-val :lambda-list '(m))
(cl:defmethod wheel_direction_rl-val ((m <WheelTick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:wheel_direction_rl-val is deprecated.  Use xbot_msgs-msg:wheel_direction_rl instead.")
  (wheel_direction_rl m))

(cl:ensure-generic-function 'wheel_ticks_rl-val :lambda-list '(m))
(cl:defmethod wheel_ticks_rl-val ((m <WheelTick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:wheel_ticks_rl-val is deprecated.  Use xbot_msgs-msg:wheel_ticks_rl instead.")
  (wheel_ticks_rl m))

(cl:ensure-generic-function 'wheel_direction_rr-val :lambda-list '(m))
(cl:defmethod wheel_direction_rr-val ((m <WheelTick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:wheel_direction_rr-val is deprecated.  Use xbot_msgs-msg:wheel_direction_rr instead.")
  (wheel_direction_rr m))

(cl:ensure-generic-function 'wheel_ticks_rr-val :lambda-list '(m))
(cl:defmethod wheel_ticks_rr-val ((m <WheelTick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbot_msgs-msg:wheel_ticks_rr-val is deprecated.  Use xbot_msgs-msg:wheel_ticks_rr instead.")
  (wheel_ticks_rr m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WheelTick>)))
    "Constants for message type '<WheelTick>"
  '((:WHEEL_VALID_FL . 1)
    (:WHEEL_VALID_FR . 2)
    (:WHEEL_VALID_RL . 4)
    (:WHEEL_VALID_RR . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WheelTick)))
    "Constants for message type 'WheelTick"
  '((:WHEEL_VALID_FL . 1)
    (:WHEEL_VALID_FR . 2)
    (:WHEEL_VALID_RL . 4)
    (:WHEEL_VALID_RR . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelTick>) ostream)
  "Serializes a message object of type '<WheelTick>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_tick_factor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_tick_factor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wheel_tick_factor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wheel_tick_factor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid_wheels)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_direction_fl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_ticks_fl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_ticks_fl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wheel_ticks_fl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wheel_ticks_fl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_direction_fr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_ticks_fr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_ticks_fr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wheel_ticks_fr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wheel_ticks_fr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_direction_rl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_ticks_rl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_ticks_rl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wheel_ticks_rl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wheel_ticks_rl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_direction_rr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_ticks_rr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_ticks_rr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wheel_ticks_rr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wheel_ticks_rr)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelTick>) istream)
  "Deserializes a message object of type '<WheelTick>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_tick_factor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_tick_factor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wheel_tick_factor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wheel_tick_factor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid_wheels)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_direction_fl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_ticks_fl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_ticks_fl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wheel_ticks_fl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wheel_ticks_fl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_direction_fr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_ticks_fr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_ticks_fr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wheel_ticks_fr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wheel_ticks_fr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_direction_rl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_ticks_rl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_ticks_rl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wheel_ticks_rl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wheel_ticks_rl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_direction_rr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_ticks_rr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_ticks_rr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wheel_ticks_rr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wheel_ticks_rr)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelTick>)))
  "Returns string type for a message object of type '<WheelTick>"
  "xbot_msgs/WheelTick")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelTick)))
  "Returns string type for a message object of type 'WheelTick"
  "xbot_msgs/WheelTick")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelTick>)))
  "Returns md5sum for a message object of type '<WheelTick>"
  "de995dcce338bea62571dd7895d4e0e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelTick)))
  "Returns md5sum for a message object of type 'WheelTick"
  "de995dcce338bea62571dd7895d4e0e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelTick>)))
  "Returns full string definition for message of type '<WheelTick>"
  (cl:format cl:nil "# This message is used to count the wheel ticks for our robot.~%# It supports up to four wheels, if there are only two in use, use WHEEL_RL and WHEEL_RR~%# Ticks should always count independent of the wheel rotation. Use the direction to show wheel spin rotation~%~%uint8   WHEEL_VALID_FL=1~%uint8   WHEEL_VALID_FR=2~%uint8   WHEEL_VALID_RL=4~%uint8   WHEEL_VALID_RR=8~%~%time stamp~%uint32 wheel_tick_factor    # factor to use to convert wheel ticks to m~%uint8  valid_wheels         # Bitfield to show which ticks are valid~%uint8 wheel_direction_fl    # wheel direction front left~%uint32 wheel_ticks_fl       # wheel ticks front left~%uint8 wheel_direction_fr    # wheel direction front right~%uint32 wheel_ticks_fr       # wheel ticks front right~%uint8 wheel_direction_rl    # wheel direction rear left~%uint32 wheel_ticks_rl       # wheel ticks rear left~%uint8 wheel_direction_rr    # wheel direction rear right~%uint32 wheel_ticks_rr       # wheel ticks rear right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelTick)))
  "Returns full string definition for message of type 'WheelTick"
  (cl:format cl:nil "# This message is used to count the wheel ticks for our robot.~%# It supports up to four wheels, if there are only two in use, use WHEEL_RL and WHEEL_RR~%# Ticks should always count independent of the wheel rotation. Use the direction to show wheel spin rotation~%~%uint8   WHEEL_VALID_FL=1~%uint8   WHEEL_VALID_FR=2~%uint8   WHEEL_VALID_RL=4~%uint8   WHEEL_VALID_RR=8~%~%time stamp~%uint32 wheel_tick_factor    # factor to use to convert wheel ticks to m~%uint8  valid_wheels         # Bitfield to show which ticks are valid~%uint8 wheel_direction_fl    # wheel direction front left~%uint32 wheel_ticks_fl       # wheel ticks front left~%uint8 wheel_direction_fr    # wheel direction front right~%uint32 wheel_ticks_fr       # wheel ticks front right~%uint8 wheel_direction_rl    # wheel direction rear left~%uint32 wheel_ticks_rl       # wheel ticks rear left~%uint8 wheel_direction_rr    # wheel direction rear right~%uint32 wheel_ticks_rr       # wheel ticks rear right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelTick>))
  (cl:+ 0
     8
     4
     1
     1
     4
     1
     4
     1
     4
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelTick>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelTick
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':wheel_tick_factor (wheel_tick_factor msg))
    (cl:cons ':valid_wheels (valid_wheels msg))
    (cl:cons ':wheel_direction_fl (wheel_direction_fl msg))
    (cl:cons ':wheel_ticks_fl (wheel_ticks_fl msg))
    (cl:cons ':wheel_direction_fr (wheel_direction_fr msg))
    (cl:cons ':wheel_ticks_fr (wheel_ticks_fr msg))
    (cl:cons ':wheel_direction_rl (wheel_direction_rl msg))
    (cl:cons ':wheel_ticks_rl (wheel_ticks_rl msg))
    (cl:cons ':wheel_direction_rr (wheel_direction_rr msg))
    (cl:cons ':wheel_ticks_rr (wheel_ticks_rr msg))
))
