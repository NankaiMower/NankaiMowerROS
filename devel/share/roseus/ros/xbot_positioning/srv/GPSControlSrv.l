;; Auto-generated. Do not edit!


(when (boundp 'xbot_positioning::GPSControlSrv)
  (if (not (find-package "XBOT_POSITIONING"))
    (make-package "XBOT_POSITIONING"))
  (shadow 'GPSControlSrv (find-package "XBOT_POSITIONING")))
(unless (find-package "XBOT_POSITIONING::GPSCONTROLSRV")
  (make-package "XBOT_POSITIONING::GPSCONTROLSRV"))
(unless (find-package "XBOT_POSITIONING::GPSCONTROLSRVREQUEST")
  (make-package "XBOT_POSITIONING::GPSCONTROLSRVREQUEST"))
(unless (find-package "XBOT_POSITIONING::GPSCONTROLSRVRESPONSE")
  (make-package "XBOT_POSITIONING::GPSCONTROLSRVRESPONSE"))

(in-package "ROS")





(defclass xbot_positioning::GPSControlSrvRequest
  :super ros::object
  :slots (_gps_enabled ))

(defmethod xbot_positioning::GPSControlSrvRequest
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

(defclass xbot_positioning::GPSControlSrvResponse
  :super ros::object
  :slots ())

(defmethod xbot_positioning::GPSControlSrvResponse
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

(defclass xbot_positioning::GPSControlSrv
  :super ros::object
  :slots ())

(setf (get xbot_positioning::GPSControlSrv :md5sum-) "d9982cf964c37d45435cd4a8d34d8df4")
(setf (get xbot_positioning::GPSControlSrv :datatype-) "xbot_positioning/GPSControlSrv")
(setf (get xbot_positioning::GPSControlSrv :request) xbot_positioning::GPSControlSrvRequest)
(setf (get xbot_positioning::GPSControlSrv :response) xbot_positioning::GPSControlSrvResponse)

(defmethod xbot_positioning::GPSControlSrvRequest
  (:response () (instance xbot_positioning::GPSControlSrvResponse :init)))

(setf (get xbot_positioning::GPSControlSrvRequest :md5sum-) "d9982cf964c37d45435cd4a8d34d8df4")
(setf (get xbot_positioning::GPSControlSrvRequest :datatype-) "xbot_positioning/GPSControlSrvRequest")
(setf (get xbot_positioning::GPSControlSrvRequest :definition-)
      "uint8 gps_enabled
---
")

(setf (get xbot_positioning::GPSControlSrvResponse :md5sum-) "d9982cf964c37d45435cd4a8d34d8df4")
(setf (get xbot_positioning::GPSControlSrvResponse :datatype-) "xbot_positioning/GPSControlSrvResponse")
(setf (get xbot_positioning::GPSControlSrvResponse :definition-)
      "uint8 gps_enabled
---
")



(provide :xbot_positioning/GPSControlSrv "d9982cf964c37d45435cd4a8d34d8df4")


