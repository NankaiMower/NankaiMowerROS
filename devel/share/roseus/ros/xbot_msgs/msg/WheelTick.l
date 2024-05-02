;; Auto-generated. Do not edit!


(when (boundp 'xbot_msgs::WheelTick)
  (if (not (find-package "XBOT_MSGS"))
    (make-package "XBOT_MSGS"))
  (shadow 'WheelTick (find-package "XBOT_MSGS")))
(unless (find-package "XBOT_MSGS::WHEELTICK")
  (make-package "XBOT_MSGS::WHEELTICK"))

(in-package "ROS")
;;//! \htmlinclude WheelTick.msg.html


(intern "*WHEEL_VALID_FL*" (find-package "XBOT_MSGS::WHEELTICK"))
(shadow '*WHEEL_VALID_FL* (find-package "XBOT_MSGS::WHEELTICK"))
(defconstant xbot_msgs::WheelTick::*WHEEL_VALID_FL* 1)
(intern "*WHEEL_VALID_FR*" (find-package "XBOT_MSGS::WHEELTICK"))
(shadow '*WHEEL_VALID_FR* (find-package "XBOT_MSGS::WHEELTICK"))
(defconstant xbot_msgs::WheelTick::*WHEEL_VALID_FR* 2)
(intern "*WHEEL_VALID_RL*" (find-package "XBOT_MSGS::WHEELTICK"))
(shadow '*WHEEL_VALID_RL* (find-package "XBOT_MSGS::WHEELTICK"))
(defconstant xbot_msgs::WheelTick::*WHEEL_VALID_RL* 4)
(intern "*WHEEL_VALID_RR*" (find-package "XBOT_MSGS::WHEELTICK"))
(shadow '*WHEEL_VALID_RR* (find-package "XBOT_MSGS::WHEELTICK"))
(defconstant xbot_msgs::WheelTick::*WHEEL_VALID_RR* 8)

(defun xbot_msgs::WheelTick-to-symbol (const)
  (cond
        ((= const 1) 'xbot_msgs::WheelTick::*WHEEL_VALID_FL*)
        ((= const 2) 'xbot_msgs::WheelTick::*WHEEL_VALID_FR*)
        ((= const 4) 'xbot_msgs::WheelTick::*WHEEL_VALID_RL*)
        ((= const 8) 'xbot_msgs::WheelTick::*WHEEL_VALID_RR*)
        (t nil)))

(defclass xbot_msgs::WheelTick
  :super ros::object
  :slots (_stamp _wheel_tick_factor _valid_wheels _wheel_direction_fl _wheel_ticks_fl _wheel_direction_fr _wheel_ticks_fr _wheel_direction_rl _wheel_ticks_rl _wheel_direction_rr _wheel_ticks_rr ))

(defmethod xbot_msgs::WheelTick
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:wheel_tick_factor __wheel_tick_factor) 0)
    ((:valid_wheels __valid_wheels) 0)
    ((:wheel_direction_fl __wheel_direction_fl) 0)
    ((:wheel_ticks_fl __wheel_ticks_fl) 0)
    ((:wheel_direction_fr __wheel_direction_fr) 0)
    ((:wheel_ticks_fr __wheel_ticks_fr) 0)
    ((:wheel_direction_rl __wheel_direction_rl) 0)
    ((:wheel_ticks_rl __wheel_ticks_rl) 0)
    ((:wheel_direction_rr __wheel_direction_rr) 0)
    ((:wheel_ticks_rr __wheel_ticks_rr) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _wheel_tick_factor (round __wheel_tick_factor))
   (setq _valid_wheels (round __valid_wheels))
   (setq _wheel_direction_fl (round __wheel_direction_fl))
   (setq _wheel_ticks_fl (round __wheel_ticks_fl))
   (setq _wheel_direction_fr (round __wheel_direction_fr))
   (setq _wheel_ticks_fr (round __wheel_ticks_fr))
   (setq _wheel_direction_rl (round __wheel_direction_rl))
   (setq _wheel_ticks_rl (round __wheel_ticks_rl))
   (setq _wheel_direction_rr (round __wheel_direction_rr))
   (setq _wheel_ticks_rr (round __wheel_ticks_rr))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:wheel_tick_factor
   (&optional __wheel_tick_factor)
   (if __wheel_tick_factor (setq _wheel_tick_factor __wheel_tick_factor)) _wheel_tick_factor)
  (:valid_wheels
   (&optional __valid_wheels)
   (if __valid_wheels (setq _valid_wheels __valid_wheels)) _valid_wheels)
  (:wheel_direction_fl
   (&optional __wheel_direction_fl)
   (if __wheel_direction_fl (setq _wheel_direction_fl __wheel_direction_fl)) _wheel_direction_fl)
  (:wheel_ticks_fl
   (&optional __wheel_ticks_fl)
   (if __wheel_ticks_fl (setq _wheel_ticks_fl __wheel_ticks_fl)) _wheel_ticks_fl)
  (:wheel_direction_fr
   (&optional __wheel_direction_fr)
   (if __wheel_direction_fr (setq _wheel_direction_fr __wheel_direction_fr)) _wheel_direction_fr)
  (:wheel_ticks_fr
   (&optional __wheel_ticks_fr)
   (if __wheel_ticks_fr (setq _wheel_ticks_fr __wheel_ticks_fr)) _wheel_ticks_fr)
  (:wheel_direction_rl
   (&optional __wheel_direction_rl)
   (if __wheel_direction_rl (setq _wheel_direction_rl __wheel_direction_rl)) _wheel_direction_rl)
  (:wheel_ticks_rl
   (&optional __wheel_ticks_rl)
   (if __wheel_ticks_rl (setq _wheel_ticks_rl __wheel_ticks_rl)) _wheel_ticks_rl)
  (:wheel_direction_rr
   (&optional __wheel_direction_rr)
   (if __wheel_direction_rr (setq _wheel_direction_rr __wheel_direction_rr)) _wheel_direction_rr)
  (:wheel_ticks_rr
   (&optional __wheel_ticks_rr)
   (if __wheel_ticks_rr (setq _wheel_ticks_rr __wheel_ticks_rr)) _wheel_ticks_rr)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint32 _wheel_tick_factor
    4
    ;; uint8 _valid_wheels
    1
    ;; uint8 _wheel_direction_fl
    1
    ;; uint32 _wheel_ticks_fl
    4
    ;; uint8 _wheel_direction_fr
    1
    ;; uint32 _wheel_ticks_fr
    4
    ;; uint8 _wheel_direction_rl
    1
    ;; uint32 _wheel_ticks_rl
    4
    ;; uint8 _wheel_direction_rr
    1
    ;; uint32 _wheel_ticks_rr
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint32 _wheel_tick_factor
       (write-long _wheel_tick_factor s)
     ;; uint8 _valid_wheels
       (write-byte _valid_wheels s)
     ;; uint8 _wheel_direction_fl
       (write-byte _wheel_direction_fl s)
     ;; uint32 _wheel_ticks_fl
       (write-long _wheel_ticks_fl s)
     ;; uint8 _wheel_direction_fr
       (write-byte _wheel_direction_fr s)
     ;; uint32 _wheel_ticks_fr
       (write-long _wheel_ticks_fr s)
     ;; uint8 _wheel_direction_rl
       (write-byte _wheel_direction_rl s)
     ;; uint32 _wheel_ticks_rl
       (write-long _wheel_ticks_rl s)
     ;; uint8 _wheel_direction_rr
       (write-byte _wheel_direction_rr s)
     ;; uint32 _wheel_ticks_rr
       (write-long _wheel_ticks_rr s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _wheel_tick_factor
     (setq _wheel_tick_factor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _valid_wheels
     (setq _valid_wheels (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _wheel_direction_fl
     (setq _wheel_direction_fl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _wheel_ticks_fl
     (setq _wheel_ticks_fl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _wheel_direction_fr
     (setq _wheel_direction_fr (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _wheel_ticks_fr
     (setq _wheel_ticks_fr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _wheel_direction_rl
     (setq _wheel_direction_rl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _wheel_ticks_rl
     (setq _wheel_ticks_rl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _wheel_direction_rr
     (setq _wheel_direction_rr (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _wheel_ticks_rr
     (setq _wheel_ticks_rr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get xbot_msgs::WheelTick :md5sum-) "de995dcce338bea62571dd7895d4e0e2")
(setf (get xbot_msgs::WheelTick :datatype-) "xbot_msgs/WheelTick")
(setf (get xbot_msgs::WheelTick :definition-)
      "# This message is used to count the wheel ticks for our robot.
# It supports up to four wheels, if there are only two in use, use WHEEL_RL and WHEEL_RR
# Ticks should always count independent of the wheel rotation. Use the direction to show wheel spin rotation

uint8   WHEEL_VALID_FL=1
uint8   WHEEL_VALID_FR=2
uint8   WHEEL_VALID_RL=4
uint8   WHEEL_VALID_RR=8

time stamp
uint32 wheel_tick_factor    # factor to use to convert wheel ticks to m
uint8  valid_wheels         # Bitfield to show which ticks are valid
uint8 wheel_direction_fl    # wheel direction front left
uint32 wheel_ticks_fl       # wheel ticks front left
uint8 wheel_direction_fr    # wheel direction front right
uint32 wheel_ticks_fr       # wheel ticks front right
uint8 wheel_direction_rl    # wheel direction rear left
uint32 wheel_ticks_rl       # wheel ticks rear left
uint8 wheel_direction_rr    # wheel direction rear right
uint32 wheel_ticks_rr       # wheel ticks rear right

")



(provide :xbot_msgs/WheelTick "de995dcce338bea62571dd7895d4e0e2")


