;; Auto-generated. Do not edit!


(when (boundp 'xbot_positioning::KalmanState)
  (if (not (find-package "XBOT_POSITIONING"))
    (make-package "XBOT_POSITIONING"))
  (shadow 'KalmanState (find-package "XBOT_POSITIONING")))
(unless (find-package "XBOT_POSITIONING::KALMANSTATE")
  (make-package "XBOT_POSITIONING::KALMANSTATE"))

(in-package "ROS")
;;//! \htmlinclude KalmanState.msg.html


(defclass xbot_positioning::KalmanState
  :super ros::object
  :slots (_x _y _theta _vx _vr ))

(defmethod xbot_positioning::KalmanState
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    ((:vx __vx) 0.0)
    ((:vr __vr) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   (setq _vx (float __vx))
   (setq _vr (float __vr))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vr
   (&optional __vr)
   (if __vr (setq _vr __vr)) _vr)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _theta
    8
    ;; float64 _vx
    8
    ;; float64 _vr
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vr
       (sys::poke _vr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vr
     (setq _vr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get xbot_positioning::KalmanState :md5sum-) "61df9a69cd63d907340181c20aa2d1c5")
(setf (get xbot_positioning::KalmanState :datatype-) "xbot_positioning/KalmanState")
(setf (get xbot_positioning::KalmanState :definition-)
      "# Publishes the current state of the kalman filter, intended for debug purposes

float64 x
float64 y
float64 theta
float64 vx
float64 vr



")



(provide :xbot_positioning/KalmanState "61df9a69cd63d907340181c20aa2d1c5")


