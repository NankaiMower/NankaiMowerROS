;; Auto-generated. Do not edit!


(when (boundp 'ftc_local_planner::PID)
  (if (not (find-package "FTC_LOCAL_PLANNER"))
    (make-package "FTC_LOCAL_PLANNER"))
  (shadow 'PID (find-package "FTC_LOCAL_PLANNER")))
(unless (find-package "FTC_LOCAL_PLANNER::PID")
  (make-package "FTC_LOCAL_PLANNER::PID"))

(in-package "ROS")
;;//! \htmlinclude PID.msg.html


(defclass ftc_local_planner::PID
  :super ros::object
  :slots (_stamp _kp_lon_set _kp_lat_set _kp_ang_set _ki_lon_set _ki_lat_set _ki_ang_set _kd_lon_set _kd_lat_set _kd_ang_set _lon_err _lat_err _ang_err _ang_speed _lin_speed ))

(defmethod ftc_local_planner::PID
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:kp_lon_set __kp_lon_set) 0.0)
    ((:kp_lat_set __kp_lat_set) 0.0)
    ((:kp_ang_set __kp_ang_set) 0.0)
    ((:ki_lon_set __ki_lon_set) 0.0)
    ((:ki_lat_set __ki_lat_set) 0.0)
    ((:ki_ang_set __ki_ang_set) 0.0)
    ((:kd_lon_set __kd_lon_set) 0.0)
    ((:kd_lat_set __kd_lat_set) 0.0)
    ((:kd_ang_set __kd_ang_set) 0.0)
    ((:lon_err __lon_err) 0.0)
    ((:lat_err __lat_err) 0.0)
    ((:ang_err __ang_err) 0.0)
    ((:ang_speed __ang_speed) 0.0)
    ((:lin_speed __lin_speed) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _kp_lon_set (float __kp_lon_set))
   (setq _kp_lat_set (float __kp_lat_set))
   (setq _kp_ang_set (float __kp_ang_set))
   (setq _ki_lon_set (float __ki_lon_set))
   (setq _ki_lat_set (float __ki_lat_set))
   (setq _ki_ang_set (float __ki_ang_set))
   (setq _kd_lon_set (float __kd_lon_set))
   (setq _kd_lat_set (float __kd_lat_set))
   (setq _kd_ang_set (float __kd_ang_set))
   (setq _lon_err (float __lon_err))
   (setq _lat_err (float __lat_err))
   (setq _ang_err (float __ang_err))
   (setq _ang_speed (float __ang_speed))
   (setq _lin_speed (float __lin_speed))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:kp_lon_set
   (&optional __kp_lon_set)
   (if __kp_lon_set (setq _kp_lon_set __kp_lon_set)) _kp_lon_set)
  (:kp_lat_set
   (&optional __kp_lat_set)
   (if __kp_lat_set (setq _kp_lat_set __kp_lat_set)) _kp_lat_set)
  (:kp_ang_set
   (&optional __kp_ang_set)
   (if __kp_ang_set (setq _kp_ang_set __kp_ang_set)) _kp_ang_set)
  (:ki_lon_set
   (&optional __ki_lon_set)
   (if __ki_lon_set (setq _ki_lon_set __ki_lon_set)) _ki_lon_set)
  (:ki_lat_set
   (&optional __ki_lat_set)
   (if __ki_lat_set (setq _ki_lat_set __ki_lat_set)) _ki_lat_set)
  (:ki_ang_set
   (&optional __ki_ang_set)
   (if __ki_ang_set (setq _ki_ang_set __ki_ang_set)) _ki_ang_set)
  (:kd_lon_set
   (&optional __kd_lon_set)
   (if __kd_lon_set (setq _kd_lon_set __kd_lon_set)) _kd_lon_set)
  (:kd_lat_set
   (&optional __kd_lat_set)
   (if __kd_lat_set (setq _kd_lat_set __kd_lat_set)) _kd_lat_set)
  (:kd_ang_set
   (&optional __kd_ang_set)
   (if __kd_ang_set (setq _kd_ang_set __kd_ang_set)) _kd_ang_set)
  (:lon_err
   (&optional __lon_err)
   (if __lon_err (setq _lon_err __lon_err)) _lon_err)
  (:lat_err
   (&optional __lat_err)
   (if __lat_err (setq _lat_err __lat_err)) _lat_err)
  (:ang_err
   (&optional __ang_err)
   (if __ang_err (setq _ang_err __ang_err)) _ang_err)
  (:ang_speed
   (&optional __ang_speed)
   (if __ang_speed (setq _ang_speed __ang_speed)) _ang_speed)
  (:lin_speed
   (&optional __lin_speed)
   (if __lin_speed (setq _lin_speed __lin_speed)) _lin_speed)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float32 _kp_lon_set
    4
    ;; float32 _kp_lat_set
    4
    ;; float32 _kp_ang_set
    4
    ;; float32 _ki_lon_set
    4
    ;; float32 _ki_lat_set
    4
    ;; float32 _ki_ang_set
    4
    ;; float32 _kd_lon_set
    4
    ;; float32 _kd_lat_set
    4
    ;; float32 _kd_ang_set
    4
    ;; float32 _lon_err
    4
    ;; float32 _lat_err
    4
    ;; float32 _ang_err
    4
    ;; float32 _ang_speed
    4
    ;; float32 _lin_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float32 _kp_lon_set
       (sys::poke _kp_lon_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _kp_lat_set
       (sys::poke _kp_lat_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _kp_ang_set
       (sys::poke _kp_ang_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ki_lon_set
       (sys::poke _ki_lon_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ki_lat_set
       (sys::poke _ki_lat_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ki_ang_set
       (sys::poke _ki_ang_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _kd_lon_set
       (sys::poke _kd_lon_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _kd_lat_set
       (sys::poke _kd_lat_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _kd_ang_set
       (sys::poke _kd_ang_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lon_err
       (sys::poke _lon_err (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lat_err
       (sys::poke _lat_err (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ang_err
       (sys::poke _ang_err (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ang_speed
       (sys::poke _ang_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lin_speed
       (sys::poke _lin_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _kp_lon_set
     (setq _kp_lon_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _kp_lat_set
     (setq _kp_lat_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _kp_ang_set
     (setq _kp_ang_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ki_lon_set
     (setq _ki_lon_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ki_lat_set
     (setq _ki_lat_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ki_ang_set
     (setq _ki_ang_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _kd_lon_set
     (setq _kd_lon_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _kd_lat_set
     (setq _kd_lat_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _kd_ang_set
     (setq _kd_ang_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lon_err
     (setq _lon_err (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lat_err
     (setq _lat_err (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ang_err
     (setq _ang_err (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ang_speed
     (setq _ang_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lin_speed
     (setq _lin_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ftc_local_planner::PID :md5sum-) "74a052c94d631fd9361aebcb670b5e39")
(setf (get ftc_local_planner::PID :datatype-) "ftc_local_planner/PID")
(setf (get ftc_local_planner::PID :definition-)
      "time stamp

# P set point
float32 kp_lon_set
float32 kp_lat_set
float32 kp_ang_set

# I set point
float32 ki_lon_set
float32 ki_lat_set
float32 ki_ang_set

# D set point
float32 kd_lon_set
float32 kd_lat_set
float32 kd_ang_set

# errors
float32 lon_err
float32 lat_err
float32 ang_err

# speeds
float32 ang_speed
float32 lin_speed
")



(provide :ftc_local_planner/PID "74a052c94d631fd9361aebcb670b5e39")


