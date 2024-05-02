; Auto-generated. Do not edit!


(cl:in-package xesc_msgs-msg)


;//! \htmlinclude XescState.msg.html

(cl:defclass <XescState> (roslisp-msg-protocol:ros-message)
  ((connection_state
    :reader connection_state
    :initarg :connection_state
    :type cl:fixnum
    :initform 0)
   (fw_major
    :reader fw_major
    :initarg :fw_major
    :type cl:fixnum
    :initform 0)
   (fw_minor
    :reader fw_minor
    :initarg :fw_minor
    :type cl:fixnum
    :initform 0)
   (voltage_input
    :reader voltage_input
    :initarg :voltage_input
    :type cl:float
    :initform 0.0)
   (temperature_pcb
    :reader temperature_pcb
    :initarg :temperature_pcb
    :type cl:float
    :initform 0.0)
   (temperature_motor
    :reader temperature_motor
    :initarg :temperature_motor
    :type cl:float
    :initform 0.0)
   (current_input
    :reader current_input
    :initarg :current_input
    :type cl:float
    :initform 0.0)
   (duty_cycle
    :reader duty_cycle
    :initarg :duty_cycle
    :type cl:float
    :initform 0.0)
   (tacho
    :reader tacho
    :initarg :tacho
    :type cl:integer
    :initform 0)
   (fault_code
    :reader fault_code
    :initarg :fault_code
    :type cl:integer
    :initform 0)
   (tacho_absolute
    :reader tacho_absolute
    :initarg :tacho_absolute
    :type cl:integer
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0))
)

(cl:defclass XescState (<XescState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XescState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XescState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xesc_msgs-msg:<XescState> is deprecated: use xesc_msgs-msg:XescState instead.")))

(cl:ensure-generic-function 'connection_state-val :lambda-list '(m))
(cl:defmethod connection_state-val ((m <XescState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xesc_msgs-msg:connection_state-val is deprecated.  Use xesc_msgs-msg:connection_state instead.")
  (connection_state m))

(cl:ensure-generic-function 'fw_major-val :lambda-list '(m))
(cl:defmethod fw_major-val ((m <XescState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xesc_msgs-msg:fw_major-val is deprecated.  Use xesc_msgs-msg:fw_major instead.")
  (fw_major m))

(cl:ensure-generic-function 'fw_minor-val :lambda-list '(m))
(cl:defmethod fw_minor-val ((m <XescState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xesc_msgs-msg:fw_minor-val is deprecated.  Use xesc_msgs-msg:fw_minor instead.")
  (fw_minor m))

(cl:ensure-generic-function 'voltage_input-val :lambda-list '(m))
(cl:defmethod voltage_input-val ((m <XescState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xesc_msgs-msg:voltage_input-val is deprecated.  Use xesc_msgs-msg:voltage_input instead.")
  (voltage_input m))

(cl:ensure-generic-function 'temperature_pcb-val :lambda-list '(m))
(cl:defmethod temperature_pcb-val ((m <XescState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xesc_msgs-msg:temperature_pcb-val is deprecated.  Use xesc_msgs-msg:temperature_pcb instead.")
  (temperature_pcb m))

(cl:ensure-generic-function 'temperature_motor-val :lambda-list '(m))
(cl:defmethod temperature_motor-val ((m <XescState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xesc_msgs-msg:temperature_motor-val is deprecated.  Use xesc_msgs-msg:temperature_motor instead.")
  (temperature_motor m))

(cl:ensure-generic-function 'current_input-val :lambda-list '(m))
(cl:defmethod current_input-val ((m <XescState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xesc_msgs-msg:current_input-val is deprecated.  Use xesc_msgs-msg:current_input instead.")
  (current_input m))

(cl:ensure-generic-function 'duty_cycle-val :lambda-list '(m))
(cl:defmethod duty_cycle-val ((m <XescState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xesc_msgs-msg:duty_cycle-val is deprecated.  Use xesc_msgs-msg:duty_cycle instead.")
  (duty_cycle m))

(cl:ensure-generic-function 'tacho-val :lambda-list '(m))
(cl:defmethod tacho-val ((m <XescState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xesc_msgs-msg:tacho-val is deprecated.  Use xesc_msgs-msg:tacho instead.")
  (tacho m))

(cl:ensure-generic-function 'fault_code-val :lambda-list '(m))
(cl:defmethod fault_code-val ((m <XescState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xesc_msgs-msg:fault_code-val is deprecated.  Use xesc_msgs-msg:fault_code instead.")
  (fault_code m))

(cl:ensure-generic-function 'tacho_absolute-val :lambda-list '(m))
(cl:defmethod tacho_absolute-val ((m <XescState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xesc_msgs-msg:tacho_absolute-val is deprecated.  Use xesc_msgs-msg:tacho_absolute instead.")
  (tacho_absolute m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <XescState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xesc_msgs-msg:direction-val is deprecated.  Use xesc_msgs-msg:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<XescState>)))
    "Constants for message type '<XescState>"
  '((:XESC_FAULT_UNINITIALIZED . 1)
    (:XESC_FAULT_WATCHDOG . 2)
    (:XESC_FAULT_UNDERVOLTAGE . 4)
    (:XESC_FAULT_OVERVOLTAGE . 8)
    (:XESC_FAULT_OVERCURRENT . 16)
    (:XESC_FAULT_OVERTEMP_MOTOR . 32)
    (:XESC_FAULT_OVERTEMP_PCB . 64)
    (:XESC_FAULT_INVALID_HALL . 128)
    (:XESC_CONNECTION_STATE_DISCONNECTED . 0)
    (:XESC_CONNECTION_STATE_WAITING_FOR_FW . 1)
    (:XESC_CONNECTION_STATE_CONNECTED_INCOMPATIBLE_FW . 2)
    (:XESC_CONNECTION_STATE_CONNECTED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'XescState)))
    "Constants for message type 'XescState"
  '((:XESC_FAULT_UNINITIALIZED . 1)
    (:XESC_FAULT_WATCHDOG . 2)
    (:XESC_FAULT_UNDERVOLTAGE . 4)
    (:XESC_FAULT_OVERVOLTAGE . 8)
    (:XESC_FAULT_OVERCURRENT . 16)
    (:XESC_FAULT_OVERTEMP_MOTOR . 32)
    (:XESC_FAULT_OVERTEMP_PCB . 64)
    (:XESC_FAULT_INVALID_HALL . 128)
    (:XESC_CONNECTION_STATE_DISCONNECTED . 0)
    (:XESC_CONNECTION_STATE_WAITING_FOR_FW . 1)
    (:XESC_CONNECTION_STATE_CONNECTED_INCOMPATIBLE_FW . 2)
    (:XESC_CONNECTION_STATE_CONNECTED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XescState>) ostream)
  "Serializes a message object of type '<XescState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connection_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fw_major)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fw_minor)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'voltage_input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'temperature_pcb))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'temperature_motor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'duty_cycle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tacho)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tacho)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tacho)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tacho)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fault_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fault_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fault_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tacho_absolute)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tacho_absolute)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tacho_absolute)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tacho_absolute)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XescState>) istream)
  "Deserializes a message object of type '<XescState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connection_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fw_major)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fw_minor)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage_input) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature_pcb) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature_motor) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_input) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duty_cycle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tacho)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tacho)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tacho)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tacho)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fault_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fault_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fault_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tacho_absolute)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tacho_absolute)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tacho_absolute)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tacho_absolute)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XescState>)))
  "Returns string type for a message object of type '<XescState>"
  "xesc_msgs/XescState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XescState)))
  "Returns string type for a message object of type 'XescState"
  "xesc_msgs/XescState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XescState>)))
  "Returns md5sum for a message object of type '<XescState>"
  "e52a8de7d3e288b9cd7995cffce72a93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XescState)))
  "Returns md5sum for a message object of type 'XescState"
  "e52a8de7d3e288b9cd7995cffce72a93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XescState>)))
  "Returns full string definition for message of type '<XescState>"
  (cl:format cl:nil "# fault codes~%uint32 XESC_FAULT_UNINITIALIZED=1~%uint32 XESC_FAULT_WATCHDOG=2~%uint32 XESC_FAULT_UNDERVOLTAGE=4~%uint32 XESC_FAULT_OVERVOLTAGE=8~%uint32 XESC_FAULT_OVERCURRENT=16~%uint32 XESC_FAULT_OVERTEMP_MOTOR=32~%uint32 XESC_FAULT_OVERTEMP_PCB=64~%uint32 XESC_FAULT_INVALID_HALL=128~%~%# connection states~%uint8 XESC_CONNECTION_STATE_DISCONNECTED=0~%uint8 XESC_CONNECTION_STATE_WAITING_FOR_FW=1~%uint8 XESC_CONNECTION_STATE_CONNECTED_INCOMPATIBLE_FW=2~%uint8 XESC_CONNECTION_STATE_CONNECTED=3~%~%uint8   connection_state~%uint8   fw_major~%uint8   fw_minor~%float64 voltage_input        # input voltage (volt)~%float64 temperature_pcb      # temperature of printed circuit board (degrees Celsius)~%float64 temperature_motor    # temperature of connected motor (degrees Celsius)~%float64 current_input        # input current (ampere)~%float64 duty_cycle           # duty cycle (0 to 1)~%uint32 tacho                 # wheel ticks~%uint32   fault_code~%uint32 tacho_absolute        # wheel ticks absolute~%uint8 direction              # current direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XescState)))
  "Returns full string definition for message of type 'XescState"
  (cl:format cl:nil "# fault codes~%uint32 XESC_FAULT_UNINITIALIZED=1~%uint32 XESC_FAULT_WATCHDOG=2~%uint32 XESC_FAULT_UNDERVOLTAGE=4~%uint32 XESC_FAULT_OVERVOLTAGE=8~%uint32 XESC_FAULT_OVERCURRENT=16~%uint32 XESC_FAULT_OVERTEMP_MOTOR=32~%uint32 XESC_FAULT_OVERTEMP_PCB=64~%uint32 XESC_FAULT_INVALID_HALL=128~%~%# connection states~%uint8 XESC_CONNECTION_STATE_DISCONNECTED=0~%uint8 XESC_CONNECTION_STATE_WAITING_FOR_FW=1~%uint8 XESC_CONNECTION_STATE_CONNECTED_INCOMPATIBLE_FW=2~%uint8 XESC_CONNECTION_STATE_CONNECTED=3~%~%uint8   connection_state~%uint8   fw_major~%uint8   fw_minor~%float64 voltage_input        # input voltage (volt)~%float64 temperature_pcb      # temperature of printed circuit board (degrees Celsius)~%float64 temperature_motor    # temperature of connected motor (degrees Celsius)~%float64 current_input        # input current (ampere)~%float64 duty_cycle           # duty cycle (0 to 1)~%uint32 tacho                 # wheel ticks~%uint32   fault_code~%uint32 tacho_absolute        # wheel ticks absolute~%uint8 direction              # current direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XescState>))
  (cl:+ 0
     1
     1
     1
     8
     8
     8
     8
     8
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XescState>))
  "Converts a ROS message object to a list"
  (cl:list 'XescState
    (cl:cons ':connection_state (connection_state msg))
    (cl:cons ':fw_major (fw_major msg))
    (cl:cons ':fw_minor (fw_minor msg))
    (cl:cons ':voltage_input (voltage_input msg))
    (cl:cons ':temperature_pcb (temperature_pcb msg))
    (cl:cons ':temperature_motor (temperature_motor msg))
    (cl:cons ':current_input (current_input msg))
    (cl:cons ':duty_cycle (duty_cycle msg))
    (cl:cons ':tacho (tacho msg))
    (cl:cons ':fault_code (fault_code msg))
    (cl:cons ':tacho_absolute (tacho_absolute msg))
    (cl:cons ':direction (direction msg))
))
