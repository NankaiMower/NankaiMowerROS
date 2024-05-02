; Auto-generated. Do not edit!


(cl:in-package mower_msgs-msg)


;//! \htmlinclude ESCStatus.msg.html

(cl:defclass <ESCStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (current
    :reader current
    :initarg :current
    :type cl:float
    :initform 0.0)
   (tacho
    :reader tacho
    :initarg :tacho
    :type cl:integer
    :initform 0)
   (temperature_motor
    :reader temperature_motor
    :initarg :temperature_motor
    :type cl:float
    :initform 0.0)
   (temperature_pcb
    :reader temperature_pcb
    :initarg :temperature_pcb
    :type cl:float
    :initform 0.0))
)

(cl:defclass ESCStatus (<ESCStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ESCStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ESCStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_msgs-msg:<ESCStatus> is deprecated: use mower_msgs-msg:ESCStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ESCStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:status-val is deprecated.  Use mower_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <ESCStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:current-val is deprecated.  Use mower_msgs-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'tacho-val :lambda-list '(m))
(cl:defmethod tacho-val ((m <ESCStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:tacho-val is deprecated.  Use mower_msgs-msg:tacho instead.")
  (tacho m))

(cl:ensure-generic-function 'temperature_motor-val :lambda-list '(m))
(cl:defmethod temperature_motor-val ((m <ESCStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:temperature_motor-val is deprecated.  Use mower_msgs-msg:temperature_motor instead.")
  (temperature_motor m))

(cl:ensure-generic-function 'temperature_pcb-val :lambda-list '(m))
(cl:defmethod temperature_pcb-val ((m <ESCStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:temperature_pcb-val is deprecated.  Use mower_msgs-msg:temperature_pcb instead.")
  (temperature_pcb m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ESCStatus>)))
    "Constants for message type '<ESCStatus>"
  '((:ESC_STATUS_DISCONNECTED . 99)
    (:ESC_STATUS_ERROR . 100)
    (:ESC_STATUS_STALLED . 150)
    (:ESC_STATUS_OK . 200)
    (:ESC_STATUS_RUNNING . 201))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ESCStatus)))
    "Constants for message type 'ESCStatus"
  '((:ESC_STATUS_DISCONNECTED . 99)
    (:ESC_STATUS_ERROR . 100)
    (:ESC_STATUS_STALLED . 150)
    (:ESC_STATUS_OK . 200)
    (:ESC_STATUS_RUNNING . 201))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ESCStatus>) ostream)
  "Serializes a message object of type '<ESCStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tacho)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tacho)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tacho)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tacho)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature_motor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature_pcb))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ESCStatus>) istream)
  "Deserializes a message object of type '<ESCStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tacho)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tacho)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tacho)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tacho)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature_motor) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature_pcb) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ESCStatus>)))
  "Returns string type for a message object of type '<ESCStatus>"
  "mower_msgs/ESCStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ESCStatus)))
  "Returns string type for a message object of type 'ESCStatus"
  "mower_msgs/ESCStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ESCStatus>)))
  "Returns md5sum for a message object of type '<ESCStatus>"
  "076a91f0c3f76fb0d32fd787c7167fec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ESCStatus)))
  "Returns md5sum for a message object of type 'ESCStatus"
  "076a91f0c3f76fb0d32fd787c7167fec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ESCStatus>)))
  "Returns full string definition for message of type '<ESCStatus>"
  (cl:format cl:nil "uint8 ESC_STATUS_DISCONNECTED=99~%uint8 ESC_STATUS_ERROR=100~%uint8 ESC_STATUS_STALLED=150~%uint8 ESC_STATUS_OK=200~%uint8 ESC_STATUS_RUNNING=201~%~%uint8 status~%float32 current~%uint32 tacho~%float32 temperature_motor~%float32 temperature_pcb~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ESCStatus)))
  "Returns full string definition for message of type 'ESCStatus"
  (cl:format cl:nil "uint8 ESC_STATUS_DISCONNECTED=99~%uint8 ESC_STATUS_ERROR=100~%uint8 ESC_STATUS_STALLED=150~%uint8 ESC_STATUS_OK=200~%uint8 ESC_STATUS_RUNNING=201~%~%uint8 status~%float32 current~%uint32 tacho~%float32 temperature_motor~%float32 temperature_pcb~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ESCStatus>))
  (cl:+ 0
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ESCStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ESCStatus
    (cl:cons ':status (status msg))
    (cl:cons ':current (current msg))
    (cl:cons ':tacho (tacho msg))
    (cl:cons ':temperature_motor (temperature_motor msg))
    (cl:cons ':temperature_pcb (temperature_pcb msg))
))
