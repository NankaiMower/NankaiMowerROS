;; Auto-generated. Do not edit!


(when (boundp 'mower_msgs::HighLevelStatus)
  (if (not (find-package "MOWER_MSGS"))
    (make-package "MOWER_MSGS"))
  (shadow 'HighLevelStatus (find-package "MOWER_MSGS")))
(unless (find-package "MOWER_MSGS::HIGHLEVELSTATUS")
  (make-package "MOWER_MSGS::HIGHLEVELSTATUS"))

(in-package "ROS")
;;//! \htmlinclude HighLevelStatus.msg.html


(intern "*HIGH_LEVEL_STATE_NULL*" (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(shadow '*HIGH_LEVEL_STATE_NULL* (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(defconstant mower_msgs::HighLevelStatus::*HIGH_LEVEL_STATE_NULL* 0)
(intern "*HIGH_LEVEL_STATE_IDLE*" (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(shadow '*HIGH_LEVEL_STATE_IDLE* (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(defconstant mower_msgs::HighLevelStatus::*HIGH_LEVEL_STATE_IDLE* 1)
(intern "*HIGH_LEVEL_STATE_AUTONOMOUS*" (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(shadow '*HIGH_LEVEL_STATE_AUTONOMOUS* (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(defconstant mower_msgs::HighLevelStatus::*HIGH_LEVEL_STATE_AUTONOMOUS* 2)
(intern "*HIGH_LEVEL_STATE_RECORDING*" (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(shadow '*HIGH_LEVEL_STATE_RECORDING* (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(defconstant mower_msgs::HighLevelStatus::*HIGH_LEVEL_STATE_RECORDING* 3)
(intern "*SUBSTATE_1*" (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(shadow '*SUBSTATE_1* (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(defconstant mower_msgs::HighLevelStatus::*SUBSTATE_1* 0)
(intern "*SUBSTATE_2*" (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(shadow '*SUBSTATE_2* (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(defconstant mower_msgs::HighLevelStatus::*SUBSTATE_2* 1)
(intern "*SUBSTATE_3*" (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(shadow '*SUBSTATE_3* (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(defconstant mower_msgs::HighLevelStatus::*SUBSTATE_3* 2)
(intern "*SUBSTATE_4*" (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(shadow '*SUBSTATE_4* (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(defconstant mower_msgs::HighLevelStatus::*SUBSTATE_4* 3)
(intern "*SUBSTATE_SHIFT*" (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(shadow '*SUBSTATE_SHIFT* (find-package "MOWER_MSGS::HIGHLEVELSTATUS"))
(defconstant mower_msgs::HighLevelStatus::*SUBSTATE_SHIFT* 6)

(defun mower_msgs::HighLevelStatus-to-symbol (const)
  (cond
        ((= const 0) 'mower_msgs::HighLevelStatus::*HIGH_LEVEL_STATE_NULL*)
        ((= const 1) 'mower_msgs::HighLevelStatus::*HIGH_LEVEL_STATE_IDLE*)
        ((= const 2) 'mower_msgs::HighLevelStatus::*HIGH_LEVEL_STATE_AUTONOMOUS*)
        ((= const 3) 'mower_msgs::HighLevelStatus::*HIGH_LEVEL_STATE_RECORDING*)
        ((= const 0) 'mower_msgs::HighLevelStatus::*SUBSTATE_1*)
        ((= const 1) 'mower_msgs::HighLevelStatus::*SUBSTATE_2*)
        ((= const 2) 'mower_msgs::HighLevelStatus::*SUBSTATE_3*)
        ((= const 3) 'mower_msgs::HighLevelStatus::*SUBSTATE_4*)
        ((= const 6) 'mower_msgs::HighLevelStatus::*SUBSTATE_SHIFT*)
        (t nil)))

(defclass mower_msgs::HighLevelStatus
  :super ros::object
  :slots (_state _state_name _sub_state_name _gps_quality_percent _battery_percent _is_charging _emergency ))

(defmethod mower_msgs::HighLevelStatus
  (:init
   (&key
    ((:state __state) 0)
    ((:state_name __state_name) "")
    ((:sub_state_name __sub_state_name) "")
    ((:gps_quality_percent __gps_quality_percent) 0.0)
    ((:battery_percent __battery_percent) 0.0)
    ((:is_charging __is_charging) nil)
    ((:emergency __emergency) nil)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _state_name (string __state_name))
   (setq _sub_state_name (string __sub_state_name))
   (setq _gps_quality_percent (float __gps_quality_percent))
   (setq _battery_percent (float __battery_percent))
   (setq _is_charging __is_charging)
   (setq _emergency __emergency)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:state_name
   (&optional __state_name)
   (if __state_name (setq _state_name __state_name)) _state_name)
  (:sub_state_name
   (&optional __sub_state_name)
   (if __sub_state_name (setq _sub_state_name __sub_state_name)) _sub_state_name)
  (:gps_quality_percent
   (&optional __gps_quality_percent)
   (if __gps_quality_percent (setq _gps_quality_percent __gps_quality_percent)) _gps_quality_percent)
  (:battery_percent
   (&optional __battery_percent)
   (if __battery_percent (setq _battery_percent __battery_percent)) _battery_percent)
  (:is_charging
   (&optional (__is_charging :null))
   (if (not (eq __is_charging :null)) (setq _is_charging __is_charging)) _is_charging)
  (:emergency
   (&optional (__emergency :null))
   (if (not (eq __emergency :null)) (setq _emergency __emergency)) _emergency)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ;; string _state_name
    4 (length _state_name)
    ;; string _sub_state_name
    4 (length _sub_state_name)
    ;; float32 _gps_quality_percent
    4
    ;; float32 _battery_percent
    4
    ;; bool _is_charging
    1
    ;; bool _emergency
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;; string _state_name
       (write-long (length _state_name) s) (princ _state_name s)
     ;; string _sub_state_name
       (write-long (length _sub_state_name) s) (princ _sub_state_name s)
     ;; float32 _gps_quality_percent
       (sys::poke _gps_quality_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_percent
       (sys::poke _battery_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_charging
       (if _is_charging (write-byte -1 s) (write-byte 0 s))
     ;; bool _emergency
       (if _emergency (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _state_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _sub_state_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sub_state_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _gps_quality_percent
     (setq _gps_quality_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_percent
     (setq _battery_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_charging
     (setq _is_charging (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _emergency
     (setq _emergency (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mower_msgs::HighLevelStatus :md5sum-) "db5c3531ba581d4c594cc4da6f89eb3f")
(setf (get mower_msgs::HighLevelStatus :datatype-) "mower_msgs/HighLevelStatus")
(setf (get mower_msgs::HighLevelStatus :definition-)
      "uint8 HIGH_LEVEL_STATE_NULL=0
uint8 HIGH_LEVEL_STATE_IDLE=1
uint8 HIGH_LEVEL_STATE_AUTONOMOUS=2
uint8 HIGH_LEVEL_STATE_RECORDING=3

uint8 SUBSTATE_1=0
uint8 SUBSTATE_2=1
uint8 SUBSTATE_3=2
uint8 SUBSTATE_4=3
uint8 SUBSTATE_SHIFT=6

uint8 state
string state_name
string sub_state_name
float32 gps_quality_percent
float32 battery_percent
bool is_charging
bool emergency

")



(provide :mower_msgs/HighLevelStatus "db5c3531ba581d4c594cc4da6f89eb3f")


