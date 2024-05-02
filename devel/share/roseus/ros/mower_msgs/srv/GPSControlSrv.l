;; Auto-generated. Do not edit!


(when (boundp 'mower_msgs::GPSControlSrv)
  (if (not (find-package "MOWER_MSGS"))
    (make-package "MOWER_MSGS"))
  (shadow 'GPSControlSrv (find-package "MOWER_MSGS")))
(unless (find-package "MOWER_MSGS::GPSCONTROLSRV")
  (make-package "MOWER_MSGS::GPSCONTROLSRV"))
(unless (find-package "MOWER_MSGS::GPSCONTROLSRVREQUEST")
  (make-package "MOWER_MSGS::GPSCONTROLSRVREQUEST"))
(unless (find-package "MOWER_MSGS::GPSCONTROLSRVRESPONSE")
  (make-package "MOWER_MSGS::GPSCONTROLSRVRESPONSE"))

(in-package "ROS")





(defclass mower_msgs::GPSControlSrvRequest
  :super ros::object
  :slots (_gps_enabled ))

(defmethod mower_msgs::GPSControlSrvRequest
  (:init
   (&key
    ((:gps_enabled __gps_enabled) 0)
    )
   (send-super :init)
   (setq _gps_enabled (round __gps_enabled))
   self)
  (:gps_enabled
   (&optional __gps_enabled)
   (if __gps_enabled (setq _gps_enabled __gps_enabled)) _gps_enabled)
  (:serialization-length
   ()
   (+
    ;; uint8 _gps_enabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _gps_enabled
       (write-byte _gps_enabled s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _gps_enabled
     (setq _gps_enabled (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass mower_msgs::GPSControlSrvResponse
  :super ros::object
  :slots ())

(defmethod mower_msgs::GPSControlSrvResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mower_msgs::GPSControlSrv
  :super ros::object
  :slots ())

(setf (get mower_msgs::GPSControlSrv :md5sum-) "d9982cf964c37d45435cd4a8d34d8df4")
(setf (get mower_msgs::GPSControlSrv :datatype-) "mower_msgs/GPSControlSrv")
(setf (get mower_msgs::GPSControlSrv :request) mower_msgs::GPSControlSrvRequest)
(setf (get mower_msgs::GPSControlSrv :response) mower_msgs::GPSControlSrvResponse)

(defmethod mower_msgs::GPSControlSrvRequest
  (:response () (instance mower_msgs::GPSControlSrvResponse :init)))

(setf (get mower_msgs::GPSControlSrvRequest :md5sum-) "d9982cf964c37d45435cd4a8d34d8df4")
(setf (get mower_msgs::GPSControlSrvRequest :datatype-) "mower_msgs/GPSControlSrvRequest")
(setf (get mower_msgs::GPSControlSrvRequest :definition-)
      "uint8 gps_enabled
---
")

(setf (get mower_msgs::GPSControlSrvResponse :md5sum-) "d9982cf964c37d45435cd4a8d34d8df4")
(setf (get mower_msgs::GPSControlSrvResponse :datatype-) "mower_msgs/GPSControlSrvResponse")
(setf (get mower_msgs::GPSControlSrvResponse :definition-)
      "uint8 gps_enabled
---
")



(provide :mower_msgs/GPSControlSrv "d9982cf964c37d45435cd4a8d34d8df4")


