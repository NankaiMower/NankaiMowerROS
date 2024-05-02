;; Auto-generated. Do not edit!


(when (boundp 'xbot_msgs::SensorDataDouble)
  (if (not (find-package "XBOT_MSGS"))
    (make-package "XBOT_MSGS"))
  (shadow 'SensorDataDouble (find-package "XBOT_MSGS")))
(unless (find-package "XBOT_MSGS::SENSORDATADOUBLE")
  (make-package "XBOT_MSGS::SENSORDATADOUBLE"))

(in-package "ROS")
;;//! \htmlinclude SensorDataDouble.msg.html


(defclass xbot_msgs::SensorDataDouble
  :super ros::object
  :slots (_stamp _data ))

(defmethod xbot_msgs::SensorDataDouble
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data (float __data))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float64 _data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get xbot_msgs::SensorDataDouble :md5sum-) "176463c696aec75591f61a77cde70a71")
(setf (get xbot_msgs::SensorDataDouble :datatype-) "xbot_msgs/SensorDataDouble")
(setf (get xbot_msgs::SensorDataDouble :definition-)
      "time    stamp
float64  data

")



(provide :xbot_msgs/SensorDataDouble "176463c696aec75591f61a77cde70a71")


