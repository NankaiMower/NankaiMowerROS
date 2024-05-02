;; Auto-generated. Do not edit!


(when (boundp 'xesc_msgs::XescStateStamped)
  (if (not (find-package "XESC_MSGS"))
    (make-package "XESC_MSGS"))
  (shadow 'XescStateStamped (find-package "XESC_MSGS")))
(unless (find-package "XESC_MSGS::XESCSTATESTAMPED")
  (make-package "XESC_MSGS::XESCSTATESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude XescStateStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass xesc_msgs::XescStateStamped
  :super ros::object
  :slots (_header _state ))

(defmethod xesc_msgs::XescStateStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) (instance xesc_msgs::XescState :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _state __state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; xesc_msgs/XescState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; xesc_msgs/XescState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; xesc_msgs/XescState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(setf (get xesc_msgs::XescStateStamped :md5sum-) "3021998c642e2ed9f8e4dc66b5fc2c57")
(setf (get xesc_msgs::XescStateStamped :datatype-) "xesc_msgs/XescStateStamped")
(setf (get xesc_msgs::XescStateStamped :definition-)
      "Header  header
XescState state
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: xesc_msgs/XescState
# fault codes
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



(provide :xesc_msgs/XescStateStamped "3021998c642e2ed9f8e4dc66b5fc2c57")


