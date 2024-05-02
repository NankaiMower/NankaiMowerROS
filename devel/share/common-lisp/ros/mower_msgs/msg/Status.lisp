; Auto-generated. Do not edit!


(cl:in-package mower_msgs-msg)


;//! \htmlinclude Status.msg.html

(cl:defclass <Status> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (mower_status
    :reader mower_status
    :initarg :mower_status
    :type cl:fixnum
    :initform 0)
   (raspberry_pi_power
    :reader raspberry_pi_power
    :initarg :raspberry_pi_power
    :type cl:boolean
    :initform cl:nil)
   (gps_power
    :reader gps_power
    :initarg :gps_power
    :type cl:boolean
    :initform cl:nil)
   (esc_power
    :reader esc_power
    :initarg :esc_power
    :type cl:boolean
    :initform cl:nil)
   (rain_detected
    :reader rain_detected
    :initarg :rain_detected
    :type cl:boolean
    :initform cl:nil)
   (sound_module_available
    :reader sound_module_available
    :initarg :sound_module_available
    :type cl:boolean
    :initform cl:nil)
   (sound_module_busy
    :reader sound_module_busy
    :initarg :sound_module_busy
    :type cl:boolean
    :initform cl:nil)
   (ui_board_available
    :reader ui_board_available
    :initarg :ui_board_available
    :type cl:boolean
    :initform cl:nil)
   (ultrasonic_ranges
    :reader ultrasonic_ranges
    :initarg :ultrasonic_ranges
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0))
   (emergency
    :reader emergency
    :initarg :emergency
    :type cl:boolean
    :initform cl:nil)
   (v_charge
    :reader v_charge
    :initarg :v_charge
    :type cl:float
    :initform 0.0)
   (v_battery
    :reader v_battery
    :initarg :v_battery
    :type cl:float
    :initform 0.0)
   (charge_current
    :reader charge_current
    :initarg :charge_current
    :type cl:float
    :initform 0.0)
   (left_esc_status
    :reader left_esc_status
    :initarg :left_esc_status
    :type mower_msgs-msg:ESCStatus
    :initform (cl:make-instance 'mower_msgs-msg:ESCStatus))
   (right_esc_status
    :reader right_esc_status
    :initarg :right_esc_status
    :type mower_msgs-msg:ESCStatus
    :initform (cl:make-instance 'mower_msgs-msg:ESCStatus))
   (mow_esc_status
    :reader mow_esc_status
    :initarg :mow_esc_status
    :type mower_msgs-msg:ESCStatus
    :initform (cl:make-instance 'mower_msgs-msg:ESCStatus)))
)

(cl:defclass Status (<Status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mower_msgs-msg:<Status> is deprecated: use mower_msgs-msg:Status instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:stamp-val is deprecated.  Use mower_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'mower_status-val :lambda-list '(m))
(cl:defmethod mower_status-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:mower_status-val is deprecated.  Use mower_msgs-msg:mower_status instead.")
  (mower_status m))

(cl:ensure-generic-function 'raspberry_pi_power-val :lambda-list '(m))
(cl:defmethod raspberry_pi_power-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:raspberry_pi_power-val is deprecated.  Use mower_msgs-msg:raspberry_pi_power instead.")
  (raspberry_pi_power m))

(cl:ensure-generic-function 'gps_power-val :lambda-list '(m))
(cl:defmethod gps_power-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:gps_power-val is deprecated.  Use mower_msgs-msg:gps_power instead.")
  (gps_power m))

(cl:ensure-generic-function 'esc_power-val :lambda-list '(m))
(cl:defmethod esc_power-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:esc_power-val is deprecated.  Use mower_msgs-msg:esc_power instead.")
  (esc_power m))

(cl:ensure-generic-function 'rain_detected-val :lambda-list '(m))
(cl:defmethod rain_detected-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:rain_detected-val is deprecated.  Use mower_msgs-msg:rain_detected instead.")
  (rain_detected m))

(cl:ensure-generic-function 'sound_module_available-val :lambda-list '(m))
(cl:defmethod sound_module_available-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:sound_module_available-val is deprecated.  Use mower_msgs-msg:sound_module_available instead.")
  (sound_module_available m))

(cl:ensure-generic-function 'sound_module_busy-val :lambda-list '(m))
(cl:defmethod sound_module_busy-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:sound_module_busy-val is deprecated.  Use mower_msgs-msg:sound_module_busy instead.")
  (sound_module_busy m))

(cl:ensure-generic-function 'ui_board_available-val :lambda-list '(m))
(cl:defmethod ui_board_available-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:ui_board_available-val is deprecated.  Use mower_msgs-msg:ui_board_available instead.")
  (ui_board_available m))

(cl:ensure-generic-function 'ultrasonic_ranges-val :lambda-list '(m))
(cl:defmethod ultrasonic_ranges-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:ultrasonic_ranges-val is deprecated.  Use mower_msgs-msg:ultrasonic_ranges instead.")
  (ultrasonic_ranges m))

(cl:ensure-generic-function 'emergency-val :lambda-list '(m))
(cl:defmethod emergency-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:emergency-val is deprecated.  Use mower_msgs-msg:emergency instead.")
  (emergency m))

(cl:ensure-generic-function 'v_charge-val :lambda-list '(m))
(cl:defmethod v_charge-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:v_charge-val is deprecated.  Use mower_msgs-msg:v_charge instead.")
  (v_charge m))

(cl:ensure-generic-function 'v_battery-val :lambda-list '(m))
(cl:defmethod v_battery-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:v_battery-val is deprecated.  Use mower_msgs-msg:v_battery instead.")
  (v_battery m))

(cl:ensure-generic-function 'charge_current-val :lambda-list '(m))
(cl:defmethod charge_current-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:charge_current-val is deprecated.  Use mower_msgs-msg:charge_current instead.")
  (charge_current m))

(cl:ensure-generic-function 'left_esc_status-val :lambda-list '(m))
(cl:defmethod left_esc_status-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:left_esc_status-val is deprecated.  Use mower_msgs-msg:left_esc_status instead.")
  (left_esc_status m))

(cl:ensure-generic-function 'right_esc_status-val :lambda-list '(m))
(cl:defmethod right_esc_status-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:right_esc_status-val is deprecated.  Use mower_msgs-msg:right_esc_status instead.")
  (right_esc_status m))

(cl:ensure-generic-function 'mow_esc_status-val :lambda-list '(m))
(cl:defmethod mow_esc_status-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mower_msgs-msg:mow_esc_status-val is deprecated.  Use mower_msgs-msg:mow_esc_status instead.")
  (mow_esc_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Status>)))
    "Constants for message type '<Status>"
  '((:MOWER_STATUS_INITIALIZING . 0)
    (:MOWER_STATUS_OK . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Status)))
    "Constants for message type 'Status"
  '((:MOWER_STATUS_INITIALIZING . 0)
    (:MOWER_STATUS_OK . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Status>) ostream)
  "Serializes a message object of type '<Status>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mower_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'raspberry_pi_power) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps_power) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'esc_power) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rain_detected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sound_module_available) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sound_module_busy) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ui_board_available) 1 0)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ultrasonic_ranges))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_charge))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_battery))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'charge_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_esc_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_esc_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mow_esc_status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Status>) istream)
  "Deserializes a message object of type '<Status>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mower_status)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'raspberry_pi_power) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gps_power) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'esc_power) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rain_detected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sound_module_available) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sound_module_busy) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ui_board_available) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'ultrasonic_ranges) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'ultrasonic_ranges)))
    (cl:dotimes (i 5)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:setf (cl:slot-value msg 'emergency) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_charge) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_battery) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'charge_current) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_esc_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_esc_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mow_esc_status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Status>)))
  "Returns string type for a message object of type '<Status>"
  "mower_msgs/Status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Status)))
  "Returns string type for a message object of type 'Status"
  "mower_msgs/Status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Status>)))
  "Returns md5sum for a message object of type '<Status>"
  "33cd1b298baa54308c3c9343754a34fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Status)))
  "Returns md5sum for a message object of type 'Status"
  "33cd1b298baa54308c3c9343754a34fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Status>)))
  "Returns full string definition for message of type '<Status>"
  (cl:format cl:nil "uint8 MOWER_STATUS_INITIALIZING=0~%uint8 MOWER_STATUS_OK=255~%~%~%~%time stamp~%# Low level stuff~%# Initialized or not~%uint8 mower_status~%bool raspberry_pi_power~%bool gps_power~%bool esc_power~%bool rain_detected~%bool sound_module_available~%bool sound_module_busy~%bool ui_board_available~%float32[5] ultrasonic_ranges~%bool emergency~%float32 v_charge~%float32 v_battery~%float32 charge_current~%~%# ESC stuff~%ESCStatus left_esc_status~%ESCStatus right_esc_status~%ESCStatus mow_esc_status~%~%~%================================================================================~%MSG: mower_msgs/ESCStatus~%uint8 ESC_STATUS_DISCONNECTED=99~%uint8 ESC_STATUS_ERROR=100~%uint8 ESC_STATUS_STALLED=150~%uint8 ESC_STATUS_OK=200~%uint8 ESC_STATUS_RUNNING=201~%~%uint8 status~%float32 current~%uint32 tacho~%float32 temperature_motor~%float32 temperature_pcb~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Status)))
  "Returns full string definition for message of type 'Status"
  (cl:format cl:nil "uint8 MOWER_STATUS_INITIALIZING=0~%uint8 MOWER_STATUS_OK=255~%~%~%~%time stamp~%# Low level stuff~%# Initialized or not~%uint8 mower_status~%bool raspberry_pi_power~%bool gps_power~%bool esc_power~%bool rain_detected~%bool sound_module_available~%bool sound_module_busy~%bool ui_board_available~%float32[5] ultrasonic_ranges~%bool emergency~%float32 v_charge~%float32 v_battery~%float32 charge_current~%~%# ESC stuff~%ESCStatus left_esc_status~%ESCStatus right_esc_status~%ESCStatus mow_esc_status~%~%~%================================================================================~%MSG: mower_msgs/ESCStatus~%uint8 ESC_STATUS_DISCONNECTED=99~%uint8 ESC_STATUS_ERROR=100~%uint8 ESC_STATUS_STALLED=150~%uint8 ESC_STATUS_OK=200~%uint8 ESC_STATUS_RUNNING=201~%~%uint8 status~%float32 current~%uint32 tacho~%float32 temperature_motor~%float32 temperature_pcb~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Status>))
  (cl:+ 0
     8
     1
     1
     1
     1
     1
     1
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ultrasonic_ranges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_esc_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_esc_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mow_esc_status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Status>))
  "Converts a ROS message object to a list"
  (cl:list 'Status
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':mower_status (mower_status msg))
    (cl:cons ':raspberry_pi_power (raspberry_pi_power msg))
    (cl:cons ':gps_power (gps_power msg))
    (cl:cons ':esc_power (esc_power msg))
    (cl:cons ':rain_detected (rain_detected msg))
    (cl:cons ':sound_module_available (sound_module_available msg))
    (cl:cons ':sound_module_busy (sound_module_busy msg))
    (cl:cons ':ui_board_available (ui_board_available msg))
    (cl:cons ':ultrasonic_ranges (ultrasonic_ranges msg))
    (cl:cons ':emergency (emergency msg))
    (cl:cons ':v_charge (v_charge msg))
    (cl:cons ':v_battery (v_battery msg))
    (cl:cons ':charge_current (charge_current msg))
    (cl:cons ':left_esc_status (left_esc_status msg))
    (cl:cons ':right_esc_status (right_esc_status msg))
    (cl:cons ':mow_esc_status (mow_esc_status msg))
))
