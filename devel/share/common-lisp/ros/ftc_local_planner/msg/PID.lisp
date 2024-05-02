; Auto-generated. Do not edit!


(cl:in-package ftc_local_planner-msg)


;//! \htmlinclude PID.msg.html

(cl:defclass <PID> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (kp_lon_set
    :reader kp_lon_set
    :initarg :kp_lon_set
    :type cl:float
    :initform 0.0)
   (kp_lat_set
    :reader kp_lat_set
    :initarg :kp_lat_set
    :type cl:float
    :initform 0.0)
   (kp_ang_set
    :reader kp_ang_set
    :initarg :kp_ang_set
    :type cl:float
    :initform 0.0)
   (ki_lon_set
    :reader ki_lon_set
    :initarg :ki_lon_set
    :type cl:float
    :initform 0.0)
   (ki_lat_set
    :reader ki_lat_set
    :initarg :ki_lat_set
    :type cl:float
    :initform 0.0)
   (ki_ang_set
    :reader ki_ang_set
    :initarg :ki_ang_set
    :type cl:float
    :initform 0.0)
   (kd_lon_set
    :reader kd_lon_set
    :initarg :kd_lon_set
    :type cl:float
    :initform 0.0)
   (kd_lat_set
    :reader kd_lat_set
    :initarg :kd_lat_set
    :type cl:float
    :initform 0.0)
   (kd_ang_set
    :reader kd_ang_set
    :initarg :kd_ang_set
    :type cl:float
    :initform 0.0)
   (lon_err
    :reader lon_err
    :initarg :lon_err
    :type cl:float
    :initform 0.0)
   (lat_err
    :reader lat_err
    :initarg :lat_err
    :type cl:float
    :initform 0.0)
   (ang_err
    :reader ang_err
    :initarg :ang_err
    :type cl:float
    :initform 0.0)
   (ang_speed
    :reader ang_speed
    :initarg :ang_speed
    :type cl:float
    :initform 0.0)
   (lin_speed
    :reader lin_speed
    :initarg :lin_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass PID (<PID>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PID>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PID)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ftc_local_planner-msg:<PID> is deprecated: use ftc_local_planner-msg:PID instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <PID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ftc_local_planner-msg:stamp-val is deprecated.  Use ftc_local_planner-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'kp_lon_set-val :lambda-list '(m))
(cl:defmethod kp_lon_set-val ((m <PID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ftc_local_planner-msg:kp_lon_set-val is deprecated.  Use ftc_local_planner-msg:kp_lon_set instead.")
  (kp_lon_set m))

(cl:ensure-generic-function 'kp_lat_set-val :lambda-list '(m))
(cl:defmethod kp_lat_set-val ((m <PID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ftc_local_planner-msg:kp_lat_set-val is deprecated.  Use ftc_local_planner-msg:kp_lat_set instead.")
  (kp_lat_set m))

(cl:ensure-generic-function 'kp_ang_set-val :lambda-list '(m))
(cl:defmethod kp_ang_set-val ((m <PID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ftc_local_planner-msg:kp_ang_set-val is deprecated.  Use ftc_local_planner-msg:kp_ang_set instead.")
  (kp_ang_set m))

(cl:ensure-generic-function 'ki_lon_set-val :lambda-list '(m))
(cl:defmethod ki_lon_set-val ((m <PID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ftc_local_planner-msg:ki_lon_set-val is deprecated.  Use ftc_local_planner-msg:ki_lon_set instead.")
  (ki_lon_set m))

(cl:ensure-generic-function 'ki_lat_set-val :lambda-list '(m))
(cl:defmethod ki_lat_set-val ((m <PID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ftc_local_planner-msg:ki_lat_set-val is deprecated.  Use ftc_local_planner-msg:ki_lat_set instead.")
  (ki_lat_set m))

(cl:ensure-generic-function 'ki_ang_set-val :lambda-list '(m))
(cl:defmethod ki_ang_set-val ((m <PID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ftc_local_planner-msg:ki_ang_set-val is deprecated.  Use ftc_local_planner-msg:ki_ang_set instead.")
  (ki_ang_set m))

(cl:ensure-generic-function 'kd_lon_set-val :lambda-list '(m))
(cl:defmethod kd_lon_set-val ((m <PID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ftc_local_planner-msg:kd_lon_set-val is deprecated.  Use ftc_local_planner-msg:kd_lon_set instead.")
  (kd_lon_set m))

(cl:ensure-generic-function 'kd_lat_set-val :lambda-list '(m))
(cl:defmethod kd_lat_set-val ((m <PID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ftc_local_planner-msg:kd_lat_set-val is deprecated.  Use ftc_local_planner-msg:kd_lat_set instead.")
  (kd_lat_set m))

(cl:ensure-generic-function 'kd_ang_set-val :lambda-list '(m))
(cl:defmethod kd_ang_set-val ((m <PID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ftc_local_planner-msg:kd_ang_set-val is deprecated.  Use ftc_local_planner-msg:kd_ang_set instead.")
  (kd_ang_set m))

(cl:ensure-generic-function 'lon_err-val :lambda-list '(m))
(cl:defmethod lon_err-val ((m <PID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ftc_local_planner-msg:lon_err-val is deprecated.  Use ftc_local_planner-msg:lon_err instead.")
  (lon_err m))

(cl:ensure-generic-function 'lat_err-val :lambda-list '(m))
(cl:defmethod lat_err-val ((m <PID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ftc_local_planner-msg:lat_err-val is deprecated.  Use ftc_local_planner-msg:lat_err instead.")
  (lat_err m))

(cl:ensure-generic-function 'ang_err-val :lambda-list '(m))
(cl:defmethod ang_err-val ((m <PID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ftc_local_planner-msg:ang_err-val is deprecated.  Use ftc_local_planner-msg:ang_err instead.")
  (ang_err m))

(cl:ensure-generic-function 'ang_speed-val :lambda-list '(m))
(cl:defmethod ang_speed-val ((m <PID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ftc_local_planner-msg:ang_speed-val is deprecated.  Use ftc_local_planner-msg:ang_speed instead.")
  (ang_speed m))

(cl:ensure-generic-function 'lin_speed-val :lambda-list '(m))
(cl:defmethod lin_speed-val ((m <PID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ftc_local_planner-msg:lin_speed-val is deprecated.  Use ftc_local_planner-msg:lin_speed instead.")
  (lin_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PID>) ostream)
  "Serializes a message object of type '<PID>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'kp_lon_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'kp_lat_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'kp_ang_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ki_lon_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ki_lat_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ki_ang_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'kd_lon_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'kd_lat_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'kd_ang_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lon_err))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat_err))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ang_err))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ang_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lin_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PID>) istream)
  "Deserializes a message object of type '<PID>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kp_lon_set) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kp_lat_set) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kp_ang_set) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ki_lon_set) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ki_lat_set) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ki_ang_set) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kd_lon_set) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kd_lat_set) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kd_ang_set) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lon_err) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_err) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ang_err) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ang_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lin_speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PID>)))
  "Returns string type for a message object of type '<PID>"
  "ftc_local_planner/PID")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PID)))
  "Returns string type for a message object of type 'PID"
  "ftc_local_planner/PID")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PID>)))
  "Returns md5sum for a message object of type '<PID>"
  "74a052c94d631fd9361aebcb670b5e39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PID)))
  "Returns md5sum for a message object of type 'PID"
  "74a052c94d631fd9361aebcb670b5e39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PID>)))
  "Returns full string definition for message of type '<PID>"
  (cl:format cl:nil "time stamp~%~%# P set point~%float32 kp_lon_set~%float32 kp_lat_set~%float32 kp_ang_set~%~%# I set point~%float32 ki_lon_set~%float32 ki_lat_set~%float32 ki_ang_set~%~%# D set point~%float32 kd_lon_set~%float32 kd_lat_set~%float32 kd_ang_set~%~%# errors~%float32 lon_err~%float32 lat_err~%float32 ang_err~%~%# speeds~%float32 ang_speed~%float32 lin_speed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PID)))
  "Returns full string definition for message of type 'PID"
  (cl:format cl:nil "time stamp~%~%# P set point~%float32 kp_lon_set~%float32 kp_lat_set~%float32 kp_ang_set~%~%# I set point~%float32 ki_lon_set~%float32 ki_lat_set~%float32 ki_ang_set~%~%# D set point~%float32 kd_lon_set~%float32 kd_lat_set~%float32 kd_ang_set~%~%# errors~%float32 lon_err~%float32 lat_err~%float32 ang_err~%~%# speeds~%float32 ang_speed~%float32 lin_speed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PID>))
  (cl:+ 0
     8
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PID>))
  "Converts a ROS message object to a list"
  (cl:list 'PID
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':kp_lon_set (kp_lon_set msg))
    (cl:cons ':kp_lat_set (kp_lat_set msg))
    (cl:cons ':kp_ang_set (kp_ang_set msg))
    (cl:cons ':ki_lon_set (ki_lon_set msg))
    (cl:cons ':ki_lat_set (ki_lat_set msg))
    (cl:cons ':ki_ang_set (ki_ang_set msg))
    (cl:cons ':kd_lon_set (kd_lon_set msg))
    (cl:cons ':kd_lat_set (kd_lat_set msg))
    (cl:cons ':kd_ang_set (kd_ang_set msg))
    (cl:cons ':lon_err (lon_err msg))
    (cl:cons ':lat_err (lat_err msg))
    (cl:cons ':ang_err (ang_err msg))
    (cl:cons ':ang_speed (ang_speed msg))
    (cl:cons ':lin_speed (lin_speed msg))
))
