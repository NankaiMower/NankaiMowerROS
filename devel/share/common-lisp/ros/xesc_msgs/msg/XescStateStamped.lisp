; Auto-generated. Do not edit!


(cl:in-package xesc_msgs-msg)


;//! \htmlinclude XescStateStamped.msg.html

(cl:defclass <XescStateStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type xesc_msgs-msg:XescState
    :initform (cl:make-instance 'xesc_msgs-msg:XescState)))
)

(cl:defclass XescStateStamped (<XescStateStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XescStateStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XescStateStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xesc_msgs-msg:<XescStateStamped> is deprecated: use xesc_msgs-msg:XescStateStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <XescStateStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xesc_msgs-msg:header-val is deprecated.  Use xesc_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <XescStateStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xesc_msgs-msg:state-val is deprecated.  Use xesc_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XescStateStamped>) ostream)
  "Serializes a message object of type '<XescStateStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XescStateStamped>) istream)
  "Deserializes a message object of type '<XescStateStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XescStateStamped>)))
  "Returns string type for a message object of type '<XescStateStamped>"
  "xesc_msgs/XescStateStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XescStateStamped)))
  "Returns string type for a message object of type 'XescStateStamped"
  "xesc_msgs/XescStateStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XescStateStamped>)))
  "Returns md5sum for a message object of type '<XescStateStamped>"
  "3021998c642e2ed9f8e4dc66b5fc2c57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XescStateStamped)))
  "Returns md5sum for a message object of type 'XescStateStamped"
  "3021998c642e2ed9f8e4dc66b5fc2c57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XescStateStamped>)))
  "Returns full string definition for message of type '<XescStateStamped>"
  (cl:format cl:nil "Header  header~%XescState state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: xesc_msgs/XescState~%# fault codes~%uint32 XESC_FAULT_UNINITIALIZED=1~%uint32 XESC_FAULT_WATCHDOG=2~%uint32 XESC_FAULT_UNDERVOLTAGE=4~%uint32 XESC_FAULT_OVERVOLTAGE=8~%uint32 XESC_FAULT_OVERCURRENT=16~%uint32 XESC_FAULT_OVERTEMP_MOTOR=32~%uint32 XESC_FAULT_OVERTEMP_PCB=64~%uint32 XESC_FAULT_INVALID_HALL=128~%~%# connection states~%uint8 XESC_CONNECTION_STATE_DISCONNECTED=0~%uint8 XESC_CONNECTION_STATE_WAITING_FOR_FW=1~%uint8 XESC_CONNECTION_STATE_CONNECTED_INCOMPATIBLE_FW=2~%uint8 XESC_CONNECTION_STATE_CONNECTED=3~%~%uint8   connection_state~%uint8   fw_major~%uint8   fw_minor~%float64 voltage_input        # input voltage (volt)~%float64 temperature_pcb      # temperature of printed circuit board (degrees Celsius)~%float64 temperature_motor    # temperature of connected motor (degrees Celsius)~%float64 current_input        # input current (ampere)~%float64 duty_cycle           # duty cycle (0 to 1)~%uint32 tacho                 # wheel ticks~%uint32   fault_code~%uint32 tacho_absolute        # wheel ticks absolute~%uint8 direction              # current direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XescStateStamped)))
  "Returns full string definition for message of type 'XescStateStamped"
  (cl:format cl:nil "Header  header~%XescState state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: xesc_msgs/XescState~%# fault codes~%uint32 XESC_FAULT_UNINITIALIZED=1~%uint32 XESC_FAULT_WATCHDOG=2~%uint32 XESC_FAULT_UNDERVOLTAGE=4~%uint32 XESC_FAULT_OVERVOLTAGE=8~%uint32 XESC_FAULT_OVERCURRENT=16~%uint32 XESC_FAULT_OVERTEMP_MOTOR=32~%uint32 XESC_FAULT_OVERTEMP_PCB=64~%uint32 XESC_FAULT_INVALID_HALL=128~%~%# connection states~%uint8 XESC_CONNECTION_STATE_DISCONNECTED=0~%uint8 XESC_CONNECTION_STATE_WAITING_FOR_FW=1~%uint8 XESC_CONNECTION_STATE_CONNECTED_INCOMPATIBLE_FW=2~%uint8 XESC_CONNECTION_STATE_CONNECTED=3~%~%uint8   connection_state~%uint8   fw_major~%uint8   fw_minor~%float64 voltage_input        # input voltage (volt)~%float64 temperature_pcb      # temperature of printed circuit board (degrees Celsius)~%float64 temperature_motor    # temperature of connected motor (degrees Celsius)~%float64 current_input        # input current (ampere)~%float64 duty_cycle           # duty cycle (0 to 1)~%uint32 tacho                 # wheel ticks~%uint32   fault_code~%uint32 tacho_absolute        # wheel ticks absolute~%uint8 direction              # current direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XescStateStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XescStateStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'XescStateStamped
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
