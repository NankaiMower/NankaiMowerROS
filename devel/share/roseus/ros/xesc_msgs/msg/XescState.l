;; Auto-generated. Do not edit!


(when (boundp 'xesc_msgs::XescState)
  (if (not (find-package "XESC_MSGS"))
    (make-package "XESC_MSGS"))
  (shadow 'XescState (find-package "XESC_MSGS")))
(unless (find-package "XESC_MSGS::XESCSTATE")
  (make-package "XESC_MSGS::XESCSTATE"))

(in-package "ROS")
;;//! \htmlinclude XescState.msg.html


(intern "*XESC_FAULT_UNINITIALIZED*" (find-package "XESC_MSGS::XESCSTATE"))
(shadow '*XESC_FAULT_UNINITIALIZED* (find-package "XESC_MSGS::XESCSTATE"))
(defconstant xesc_msgs::XescState::*XESC_FAULT_UNINITIALIZED* 1)
(intern "*XESC_FAULT_WATCHDOG*" (find-package "XESC_MSGS::XESCSTATE"))
(shadow '*XESC_FAULT_WATCHDOG* (find-package "XESC_MSGS::XESCSTATE"))
(defconstant xesc_msgs::XescState::*XESC_FAULT_WATCHDOG* 2)
(intern "*XESC_FAULT_UNDERVOLTAGE*" (find-package "XESC_MSGS::XESCSTATE"))
(shadow '*XESC_FAULT_UNDERVOLTAGE* (find-package "XESC_MSGS::XESCSTATE"))
(defconstant xesc_msgs::XescState::*XESC_FAULT_UNDERVOLTAGE* 4)
(intern "*XESC_FAULT_OVERVOLTAGE*" (find-package "XESC_MSGS::XESCSTATE"))
(shadow '*XESC_FAULT_OVERVOLTAGE* (find-package "XESC_MSGS::XESCSTATE"))
(defconstant xesc_msgs::XescState::*XESC_FAULT_OVERVOLTAGE* 8)
(intern "*XESC_FAULT_OVERCURRENT*" (find-package "XESC_MSGS::XESCSTATE"))
(shadow '*XESC_FAULT_OVERCURRENT* (find-package "XESC_MSGS::XESCSTATE"))
(defconstant xesc_msgs::XescState::*XESC_FAULT_OVERCURRENT* 16)
(intern "*XESC_FAULT_OVERTEMP_MOTOR*" (find-package "XESC_MSGS::XESCSTATE"))
(shadow '*XESC_FAULT_OVERTEMP_MOTOR* (find-package "XESC_MSGS::XESCSTATE"))
(defconstant xesc_msgs::XescState::*XESC_FAULT_OVERTEMP_MOTOR* 32)
(intern "*XESC_FAULT_OVERTEMP_PCB*" (find-package "XESC_MSGS::XESCSTATE"))
(shadow '*XESC_FAULT_OVERTEMP_PCB* (find-package "XESC_MSGS::XESCSTATE"))
(defconstant xesc_msgs::XescState::*XESC_FAULT_OVERTEMP_PCB* 64)
(intern "*XESC_FAULT_INVALID_HALL*" (find-package "XESC_MSGS::XESCSTATE"))
(shadow '*XESC_FAULT_INVALID_HALL* (find-package "XESC_MSGS::XESCSTATE"))
(defconstant xesc_msgs::XescState::*XESC_FAULT_INVALID_HALL* 128)
(intern "*XESC_CONNECTION_STATE_DISCONNECTED*" (find-package "XESC_MSGS::XESCSTATE"))
(shadow '*XESC_CONNECTION_STATE_DISCONNECTED* (find-package "XESC_MSGS::XESCSTATE"))
(defconstant xesc_msgs::XescState::*XESC_CONNECTION_STATE_DISCONNECTED* 0)
(intern "*XESC_CONNECTION_STATE_WAITING_FOR_FW*" (find-package "XESC_MSGS::XESCSTATE"))
(shadow '*XESC_CONNECTION_STATE_WAITING_FOR_FW* (find-package "XESC_MSGS::XESCSTATE"))
(defconstant xesc_msgs::XescState::*XESC_CONNECTION_STATE_WAITING_FOR_FW* 1)
(intern "*XESC_CONNECTION_STATE_CONNECTED_INCOMPATIBLE_FW*" (find-package "XESC_MSGS::XESCSTATE"))
(shadow '*XESC_CONNECTION_STATE_CONNECTED_INCOMPATIBLE_FW* (find-package "XESC_MSGS::XESCSTATE"))
(defconstant xesc_msgs::XescState::*XESC_CONNECTION_STATE_CONNECTED_INCOMPATIBLE_FW* 2)
(intern "*XESC_CONNECTION_STATE_CONNECTED*" (find-package "XESC_MSGS::XESCSTATE"))
(shadow '*XESC_CONNECTION_STATE_CONNECTED* (find-package "XESC_MSGS::XESCSTATE"))
(defconstant xesc_msgs::XescState::*XESC_CONNECTION_STATE_CONNECTED* 3)

(defun xesc_msgs::XescState-to-symbol (const)
  (cond
        ((= const 1) 'xesc_msgs::XescState::*XESC_FAULT_UNINITIALIZED*)
        ((= const 2) 'xesc_msgs::XescState::*XESC_FAULT_WATCHDOG*)
        ((= const 4) 'xesc_msgs::XescState::*XESC_FAULT_UNDERVOLTAGE*)
        ((= const 8) 'xesc_msgs::XescState::*XESC_FAULT_OVERVOLTAGE*)
        ((= const 16) 'xesc_msgs::XescState::*XESC_FAULT_OVERCURRENT*)
        ((= const 32) 'xesc_msgs::XescState::*XESC_FAULT_OVERTEMP_MOTOR*)
        ((= const 64) 'xesc_msgs::XescState::*XESC_FAULT_OVERTEMP_PCB*)
        ((= const 128) 'xesc_msgs::XescState::*XESC_FAULT_INVALID_HALL*)
        ((= const 0) 'xesc_msgs::XescState::*XESC_CONNECTION_STATE_DISCONNECTED*)
        ((= const 1) 'xesc_msgs::XescState::*XESC_CONNECTION_STATE_WAITING_FOR_FW*)
        ((= const 2) 'xesc_msgs::XescState::*XESC_CONNECTION_STATE_CONNECTED_INCOMPATIBLE_FW*)
        ((= const 3) 'xesc_msgs::XescState::*XESC_CONNECTION_STATE_CONNECTED*)
        (t nil)))

(defclass xesc_msgs::XescState
  :super ros::object
  :slots (_connection_state _fw_major _fw_minor _voltage_input _temperature_pcb _temperature_motor _current_input _duty_cycle _tacho _fault_code _tacho_absolute _direction ))

(defmethod xesc_msgs::XescState
  (:init
   (&key
    ((:connection_state __connection_state) 0)
    ((:fw_major __fw_major) 0)
    ((:fw_minor __fw_minor) 0)
    ((:voltage_input __voltage_input) 0.0)
    ((:temperature_pcb __temperature_pcb) 0.0)
    ((:temperature_motor __temperature_motor) 0.0)
    ((:current_input __current_input) 0.0)
    ((:duty_cycle __duty_cycle) 0.0)
    ((:tacho __tacho) 0)
    ((:fault_code __fault_code) 0)
    ((:tacho_absolute __tacho_absolute) 0)
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _connection_state (round __connection_state))
   (setq _fw_major (round __fw_major))
   (setq _fw_minor (round __fw_minor))
   (setq _voltage_input (float __voltage_input))
   (setq _temperature_pcb (float __temperature_pcb))
   (setq _temperature_motor (float __temperature_motor))
   (setq _current_input (float __current_input))
   (setq _duty_cycle (float __duty_cycle))
   (setq _tacho (round __tacho))
   (setq _fault_code (round __fault_code))
   (setq _tacho_absolute (round __tacho_absolute))
   (setq _direction (round __direction))
   self)
  (:connection_state
   (&optional __connection_state)
   (if __connection_state (setq _connection_state __connection_state)) _connection_state)
  (:fw_major
   (&optional __fw_major)
   (if __fw_major (setq _fw_major __fw_major)) _fw_major)
  (:fw_minor
   (&optional __fw_minor)
   (if __fw_minor (setq _fw_minor __fw_minor)) _fw_minor)
  (:voltage_input
   (&optional __voltage_input)
   (if __voltage_input (setq _voltage_input __voltage_input)) _voltage_input)
  (:temperature_pcb
   (&optional __temperature_pcb)
   (if __temperature_pcb (setq _temperature_pcb __temperature_pcb)) _temperature_pcb)
  (:temperature_motor
   (&optional __temperature_motor)
   (if __temperature_motor (setq _temperature_motor __temperature_motor)) _temperature_motor)
  (:current_input
   (&optional __current_input)
   (if __current_input (setq _current_input __current_input)) _current_input)
  (:duty_cycle
   (&optional __duty_cycle)
   (if __duty_cycle (setq _duty_cycle __duty_cycle)) _duty_cycle)
  (:tacho
   (&optional __tacho)
   (if __tacho (setq _tacho __tacho)) _tacho)
  (:fault_code
   (&optional __fault_code)
   (if __fault_code (setq _fault_code __fault_code)) _fault_code)
  (:tacho_absolute
   (&optional __tacho_absolute)
   (if __tacho_absolute (setq _tacho_absolute __tacho_absolute)) _tacho_absolute)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; uint8 _connection_state
    1
    ;; uint8 _fw_major
    1
    ;; uint8 _fw_minor
    1
    ;; float64 _voltage_input
    8
    ;; float64 _temperature_pcb
    8
    ;; float64 _temperature_motor
    8
    ;; float64 _current_input
    8
    ;; float64 _duty_cycle
    8
    ;; uint32 _tacho
    4
    ;; uint32 _fault_code
    4
    ;; uint32 _tacho_absolute
    4
    ;; uint8 _direction
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _connection_state
       (write-byte _connection_state s)
     ;; uint8 _fw_major
       (write-byte _fw_major s)
     ;; uint8 _fw_minor
       (write-byte _fw_minor s)
     ;; float64 _voltage_input
       (sys::poke _voltage_input (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _temperature_pcb
       (sys::poke _temperature_pcb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _temperature_motor
       (sys::poke _temperature_motor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_input
       (sys::poke _current_input (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duty_cycle
       (sys::poke _duty_cycle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _tacho
       (write-long _tacho s)
     ;; uint32 _fault_code
       (write-long _fault_code s)
     ;; uint32 _tacho_absolute
       (write-long _tacho_absolute s)
     ;; uint8 _direction
       (write-byte _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _connection_state
     (setq _connection_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _fw_major
     (setq _fw_major (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _fw_minor
     (setq _fw_minor (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _voltage_input
     (setq _voltage_input (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _temperature_pcb
     (setq _temperature_pcb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _temperature_motor
     (setq _temperature_motor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_input
     (setq _current_input (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duty_cycle
     (setq _duty_cycle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _tacho
     (setq _tacho (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _fault_code
     (setq _fault_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _tacho_absolute
     (setq _tacho_absolute (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get xesc_msgs::XescState :md5sum-) "e52a8de7d3e288b9cd7995cffce72a93")
(setf (get xesc_msgs::XescState :datatype-) "xesc_msgs/XescState")
(setf (get xesc_msgs::XescState :definition-)
      "# fault codes
uint32 XESC_FAULT_UNINITIALIZED=1
uint32 XESC_FAULT_WATCHDOG=2
uint32 XESC_FAULT_UNDERVOLTAGE=4
uint32 XESC_FAULT_OVERVOLTAGE=8
uint32 XESC_FAULT_OVERCURRENT=16
uint32 XESC_FAULT_OVERTEMP_MOTOR=32
uint32 XESC_FAULT_OVERTEMP_PCB=64
uint32 XESC_FAULT_INVALID_HALL=128

# connection states
uint8 XESC_CONNECTION_STATE_DISCONNECTED=0
uint8 XESC_CONNECTION_STATE_WAITING_FOR_FW=1
uint8 XESC_CONNECTION_STATE_CONNECTED_INCOMPATIBLE_FW=2
uint8 XESC_CONNECTION_STATE_CONNECTED=3

uint8   connection_state
uint8   fw_major
uint8   fw_minor
float64 voltage_input        # input voltage (volt)
float64 temperature_pcb      # temperature of printed circuit board (degrees Celsius)
float64 temperature_motor    # temperature of connected motor (degrees Celsius)
float64 current_input        # input current (ampere)
float64 duty_cycle           # duty cycle (0 to 1)
uint32 tacho                 # wheel ticks
uint32   fault_code
uint32 tacho_absolute        # wheel ticks absolute
uint8 direction              # current direction

")



(provide :xesc_msgs/XescState "e52a8de7d3e288b9cd7995cffce72a93")


