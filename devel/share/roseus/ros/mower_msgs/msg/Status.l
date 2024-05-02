;; Auto-generated. Do not edit!


(when (boundp 'mower_msgs::Status)
  (if (not (find-package "MOWER_MSGS"))
    (make-package "MOWER_MSGS"))
  (shadow 'Status (find-package "MOWER_MSGS")))
(unless (find-package "MOWER_MSGS::STATUS")
  (make-package "MOWER_MSGS::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html


(intern "*MOWER_STATUS_INITIALIZING*" (find-package "MOWER_MSGS::STATUS"))
(shadow '*MOWER_STATUS_INITIALIZING* (find-package "MOWER_MSGS::STATUS"))
(defconstant mower_msgs::Status::*MOWER_STATUS_INITIALIZING* 0)
(intern "*MOWER_STATUS_OK*" (find-package "MOWER_MSGS::STATUS"))
(shadow '*MOWER_STATUS_OK* (find-package "MOWER_MSGS::STATUS"))
(defconstant mower_msgs::Status::*MOWER_STATUS_OK* 255)

(defun mower_msgs::Status-to-symbol (const)
  (cond
        ((= const 0) 'mower_msgs::Status::*MOWER_STATUS_INITIALIZING*)
        ((= const 255) 'mower_msgs::Status::*MOWER_STATUS_OK*)
        (t nil)))

(defclass mower_msgs::Status
  :super ros::object
  :slots (_stamp _mower_status _raspberry_pi_power _gps_power _esc_power _rain_detected _sound_module_available _sound_module_busy _ui_board_available _ultrasonic_ranges _emergency _v_charge _v_battery _charge_current _left_esc_status _right_esc_status _mow_esc_status ))

(defmethod mower_msgs::Status
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:mower_status __mower_status) 0)
    ((:raspberry_pi_power __raspberry_pi_power) nil)
    ((:gps_power __gps_power) nil)
    ((:esc_power __esc_power) nil)
    ((:rain_detected __rain_detected) nil)
    ((:sound_module_available __sound_module_available) nil)
    ((:sound_module_busy __sound_module_busy) nil)
    ((:ui_board_available __ui_board_available) nil)
    ((:ultrasonic_ranges __ultrasonic_ranges) (make-array 5 :initial-element 0.0 :element-type :float))
    ((:emergency __emergency) nil)
    ((:v_charge __v_charge) 0.0)
    ((:v_battery __v_battery) 0.0)
    ((:charge_current __charge_current) 0.0)
    ((:left_esc_status __left_esc_status) (instance mower_msgs::ESCStatus :init))
    ((:right_esc_status __right_esc_status) (instance mower_msgs::ESCStatus :init))
    ((:mow_esc_status __mow_esc_status) (instance mower_msgs::ESCStatus :init))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _mower_status (round __mower_status))
   (setq _raspberry_pi_power __raspberry_pi_power)
   (setq _gps_power __gps_power)
   (setq _esc_power __esc_power)
   (setq _rain_detected __rain_detected)
   (setq _sound_module_available __sound_module_available)
   (setq _sound_module_busy __sound_module_busy)
   (setq _ui_board_available __ui_board_available)
   (setq _ultrasonic_ranges __ultrasonic_ranges)
   (setq _emergency __emergency)
   (setq _v_charge (float __v_charge))
   (setq _v_battery (float __v_battery))
   (setq _charge_current (float __charge_current))
   (setq _left_esc_status __left_esc_status)
   (setq _right_esc_status __right_esc_status)
   (setq _mow_esc_status __mow_esc_status)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:mower_status
   (&optional __mower_status)
   (if __mower_status (setq _mower_status __mower_status)) _mower_status)
  (:raspberry_pi_power
   (&optional (__raspberry_pi_power :null))
   (if (not (eq __raspberry_pi_power :null)) (setq _raspberry_pi_power __raspberry_pi_power)) _raspberry_pi_power)
  (:gps_power
   (&optional (__gps_power :null))
   (if (not (eq __gps_power :null)) (setq _gps_power __gps_power)) _gps_power)
  (:esc_power
   (&optional (__esc_power :null))
   (if (not (eq __esc_power :null)) (setq _esc_power __esc_power)) _esc_power)
  (:rain_detected
   (&optional (__rain_detected :null))
   (if (not (eq __rain_detected :null)) (setq _rain_detected __rain_detected)) _rain_detected)
  (:sound_module_available
   (&optional (__sound_module_available :null))
   (if (not (eq __sound_module_available :null)) (setq _sound_module_available __sound_module_available)) _sound_module_available)
  (:sound_module_busy
   (&optional (__sound_module_busy :null))
   (if (not (eq __sound_module_busy :null)) (setq _sound_module_busy __sound_module_busy)) _sound_module_busy)
  (:ui_board_available
   (&optional (__ui_board_available :null))
   (if (not (eq __ui_board_available :null)) (setq _ui_board_available __ui_board_available)) _ui_board_available)
  (:ultrasonic_ranges
   (&optional __ultrasonic_ranges)
   (if __ultrasonic_ranges (setq _ultrasonic_ranges __ultrasonic_ranges)) _ultrasonic_ranges)
  (:emergency
   (&optional (__emergency :null))
   (if (not (eq __emergency :null)) (setq _emergency __emergency)) _emergency)
  (:v_charge
   (&optional __v_charge)
   (if __v_charge (setq _v_charge __v_charge)) _v_charge)
  (:v_battery
   (&optional __v_battery)
   (if __v_battery (setq _v_battery __v_battery)) _v_battery)
  (:charge_current
   (&optional __charge_current)
   (if __charge_current (setq _charge_current __charge_current)) _charge_current)
  (:left_esc_status
   (&rest __left_esc_status)
   (if (keywordp (car __left_esc_status))
       (send* _left_esc_status __left_esc_status)
     (progn
       (if __left_esc_status (setq _left_esc_status (car __left_esc_status)))
       _left_esc_status)))
  (:right_esc_status
   (&rest __right_esc_status)
   (if (keywordp (car __right_esc_status))
       (send* _right_esc_status __right_esc_status)
     (progn
       (if __right_esc_status (setq _right_esc_status (car __right_esc_status)))
       _right_esc_status)))
  (:mow_esc_status
   (&rest __mow_esc_status)
   (if (keywordp (car __mow_esc_status))
       (send* _mow_esc_status __mow_esc_status)
     (progn
       (if __mow_esc_status (setq _mow_esc_status (car __mow_esc_status)))
       _mow_esc_status)))
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint8 _mower_status
    1
    ;; bool _raspberry_pi_power
    1
    ;; bool _gps_power
    1
    ;; bool _esc_power
    1
    ;; bool _rain_detected
    1
    ;; bool _sound_module_available
    1
    ;; bool _sound_module_busy
    1
    ;; bool _ui_board_available
    1
    ;; float32[5] _ultrasonic_ranges
    (* 4    5)
    ;; bool _emergency
    1
    ;; float32 _v_charge
    4
    ;; float32 _v_battery
    4
    ;; float32 _charge_current
    4
    ;; mower_msgs/ESCStatus _left_esc_status
    (send _left_esc_status :serialization-length)
    ;; mower_msgs/ESCStatus _right_esc_status
    (send _right_esc_status :serialization-length)
    ;; mower_msgs/ESCStatus _mow_esc_status
    (send _mow_esc_status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint8 _mower_status
       (write-byte _mower_status s)
     ;; bool _raspberry_pi_power
       (if _raspberry_pi_power (write-byte -1 s) (write-byte 0 s))
     ;; bool _gps_power
       (if _gps_power (write-byte -1 s) (write-byte 0 s))
     ;; bool _esc_power
       (if _esc_power (write-byte -1 s) (write-byte 0 s))
     ;; bool _rain_detected
       (if _rain_detected (write-byte -1 s) (write-byte 0 s))
     ;; bool _sound_module_available
       (if _sound_module_available (write-byte -1 s) (write-byte 0 s))
     ;; bool _sound_module_busy
       (if _sound_module_busy (write-byte -1 s) (write-byte 0 s))
     ;; bool _ui_board_available
       (if _ui_board_available (write-byte -1 s) (write-byte 0 s))
     ;; float32[5] _ultrasonic_ranges
     (dotimes (i 5)
       (sys::poke (elt _ultrasonic_ranges i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _emergency
       (if _emergency (write-byte -1 s) (write-byte 0 s))
     ;; float32 _v_charge
       (sys::poke _v_charge (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_battery
       (sys::poke _v_battery (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _charge_current
       (sys::poke _charge_current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; mower_msgs/ESCStatus _left_esc_status
       (send _left_esc_status :serialize s)
     ;; mower_msgs/ESCStatus _right_esc_status
       (send _right_esc_status :serialize s)
     ;; mower_msgs/ESCStatus _mow_esc_status
       (send _mow_esc_status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _mower_status
     (setq _mower_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _raspberry_pi_power
     (setq _raspberry_pi_power (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gps_power
     (setq _gps_power (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _esc_power
     (setq _esc_power (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rain_detected
     (setq _rain_detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sound_module_available
     (setq _sound_module_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sound_module_busy
     (setq _sound_module_busy (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ui_board_available
     (setq _ui_board_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[5] _ultrasonic_ranges
   (dotimes (i (length _ultrasonic_ranges))
     (setf (elt _ultrasonic_ranges i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; bool _emergency
     (setq _emergency (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _v_charge
     (setq _v_charge (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_battery
     (setq _v_battery (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _charge_current
     (setq _charge_current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; mower_msgs/ESCStatus _left_esc_status
     (send _left_esc_status :deserialize buf ptr-) (incf ptr- (send _left_esc_status :serialization-length))
   ;; mower_msgs/ESCStatus _right_esc_status
     (send _right_esc_status :deserialize buf ptr-) (incf ptr- (send _right_esc_status :serialization-length))
   ;; mower_msgs/ESCStatus _mow_esc_status
     (send _mow_esc_status :deserialize buf ptr-) (incf ptr- (send _mow_esc_status :serialization-length))
   ;;
   self)
  )

(setf (get mower_msgs::Status :md5sum-) "33cd1b298baa54308c3c9343754a34fc")
(setf (get mower_msgs::Status :datatype-) "mower_msgs/Status")
(setf (get mower_msgs::Status :definition-)
      "uint8 MOWER_STATUS_INITIALIZING=0
uint8 MOWER_STATUS_OK=255



time stamp
# Low level stuff
# Initialized or not
uint8 mower_status
bool raspberry_pi_power
bool gps_power
bool esc_power
bool rain_detected
bool sound_module_available
bool sound_module_busy
bool ui_board_available
float32[5] ultrasonic_ranges
bool emergency
float32 v_charge
float32 v_battery
float32 charge_current

# ESC stuff
ESCStatus left_esc_status
ESCStatus right_esc_status
ESCStatus mow_esc_status


================================================================================
MSG: mower_msgs/ESCStatus
uint8 ESC_STATUS_DISCONNECTED=99
uint8 ESC_STATUS_ERROR=100
uint8 ESC_STATUS_STALLED=150
uint8 ESC_STATUS_OK=200
uint8 ESC_STATUS_RUNNING=201

uint8 status
float32 current
uint32 tacho
float32 temperature_motor
float32 temperature_pcb
")



(provide :mower_msgs/Status "33cd1b298baa54308c3c9343754a34fc")


