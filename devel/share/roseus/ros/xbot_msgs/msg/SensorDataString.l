;; Auto-generated. Do not edit!


(when (boundp 'xbot_msgs::SensorDataString)
  (if (not (find-package "XBOT_MSGS"))
    (make-package "XBOT_MSGS"))
  (shadow 'SensorDataString (find-package "XBOT_MSGS")))
(unless (find-package "XBOT_MSGS::SENSORDATASTRING")
  (make-package "XBOT_MSGS::SENSORDATASTRING"))

(in-package "ROS")
;;//! \htmlinclude SensorDataString.msg.html


(defclass xbot_msgs::SensorDataString
  :super ros::object
  :slots (_stamp _data ))

(defmethod xbot_msgs::SensorDataString
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:data __data) "")
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data (string __data))
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
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get xbot_msgs::SensorDataString :md5sum-) "37670eed6af64f24a40b9b9fc1cb861e")
(setf (get xbot_msgs::SensorDataString :datatype-) "xbot_msgs/SensorDataString")
(setf (get xbot_msgs::SensorDataString :definition-)
      "time    stamp
string  data

")



(provide :xbot_msgs/SensorDataString "37670eed6af64f24a40b9b9fc1cb861e")


