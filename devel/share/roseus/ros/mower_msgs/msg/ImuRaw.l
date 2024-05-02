;; Auto-generated. Do not edit!


(when (boundp 'mower_msgs::ImuRaw)
  (if (not (find-package "MOWER_MSGS"))
    (make-package "MOWER_MSGS"))
  (shadow 'ImuRaw (find-package "MOWER_MSGS")))
(unless (find-package "MOWER_MSGS::IMURAW")
  (make-package "MOWER_MSGS::IMURAW"))

(in-package "ROS")
;;//! \htmlinclude ImuRaw.msg.html


(defclass mower_msgs::ImuRaw
  :super ros::object
  :slots (_dt _ax _ay _az _gx _gy _gz _mx _my _mz ))

(defmethod mower_msgs::ImuRaw
  (:init
   (&key
    ((:dt __dt) 0)
    ((:ax __ax) 0.0)
    ((:ay __ay) 0.0)
    ((:az __az) 0.0)
    ((:gx __gx) 0.0)
    ((:gy __gy) 0.0)
    ((:gz __gz) 0.0)
    ((:mx __mx) 0.0)
    ((:my __my) 0.0)
    ((:mz __mz) 0.0)
    )
   (send-super :init)
   (setq _dt (round __dt))
   (setq _ax (float __ax))
   (setq _ay (float __ay))
   (setq _az (float __az))
   (setq _gx (float __gx))
   (setq _gy (float __gy))
   (setq _gz (float __gz))
   (setq _mx (float __mx))
   (setq _my (float __my))
   (setq _mz (float __mz))
   self)
  (:dt
   (&optional __dt)
   (if __dt (setq _dt __dt)) _dt)
  (:ax
   (&optional __ax)
   (if __ax (setq _ax __ax)) _ax)
  (:ay
   (&optional __ay)
   (if __ay (setq _ay __ay)) _ay)
  (:az
   (&optional __az)
   (if __az (setq _az __az)) _az)
  (:gx
   (&optional __gx)
   (if __gx (setq _gx __gx)) _gx)
  (:gy
   (&optional __gy)
   (if __gy (setq _gy __gy)) _gy)
  (:gz
   (&optional __gz)
   (if __gz (setq _gz __gz)) _gz)
  (:mx
   (&optional __mx)
   (if __mx (setq _mx __mx)) _mx)
  (:my
   (&optional __my)
   (if __my (setq _my __my)) _my)
  (:mz
   (&optional __mz)
   (if __mz (setq _mz __mz)) _mz)
  (:serialization-length
   ()
   (+
    ;; uint16 _dt
    2
    ;; float64 _ax
    8
    ;; float64 _ay
    8
    ;; float64 _az
    8
    ;; float64 _gx
    8
    ;; float64 _gy
    8
    ;; float64 _gz
    8
    ;; float64 _mx
    8
    ;; float64 _my
    8
    ;; float64 _mz
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _dt
       (write-word _dt s)
     ;; float64 _ax
       (sys::poke _ax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ay
       (sys::poke _ay (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _az
       (sys::poke _az (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gx
       (sys::poke _gx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gy
       (sys::poke _gy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gz
       (sys::poke _gz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mx
       (sys::poke _mx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _my
       (sys::poke _my (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mz
       (sys::poke _mz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _dt
     (setq _dt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _ax
     (setq _ax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ay
     (setq _ay (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _az
     (setq _az (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gx
     (setq _gx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gy
     (setq _gy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gz
     (setq _gz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mx
     (setq _mx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _my
     (setq _my (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mz
     (setq _mz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mower_msgs::ImuRaw :md5sum-) "0352b07cbe7d2a21d2573179fd87547d")
(setf (get mower_msgs::ImuRaw :datatype-) "mower_msgs/ImuRaw")
(setf (get mower_msgs::ImuRaw :definition-)
      "uint16  dt           # dt in milliseconds
float64 ax           # The linear acceleration in the X direction [m/s^2]
float64 ay           # The linear acceleration in the Y direction [m/s^2]
float64 az           # The linear acceleration in the Z direction [m/s^2]
float64 gx           # The angular velocity about the X axis [rad/s]
float64 gy           # The angular velocity about the Y axis [rad/s]
float64 gz           # The angular velocity about the Z axis [rad/s]
float64 mx           # The magnetic field strength in the X direction [uT]
float64 my           # The magnetic field strength in the Y direction [uT]
float64 mz           # The magnetic field strength in the Z direction [uT]
")



(provide :mower_msgs/ImuRaw "0352b07cbe7d2a21d2573179fd87547d")


