;; Auto-generated. Do not edit!


(when (boundp 'mower_msgs::EmergencyStopSrv)
  (if (not (find-package "MOWER_MSGS"))
    (make-package "MOWER_MSGS"))
  (shadow 'EmergencyStopSrv (find-package "MOWER_MSGS")))
(unless (find-package "MOWER_MSGS::EMERGENCYSTOPSRV")
  (make-package "MOWER_MSGS::EMERGENCYSTOPSRV"))
(unless (find-package "MOWER_MSGS::EMERGENCYSTOPSRVREQUEST")
  (make-package "MOWER_MSGS::EMERGENCYSTOPSRVREQUEST"))
(unless (find-package "MOWER_MSGS::EMERGENCYSTOPSRVRESPONSE")
  (make-package "MOWER_MSGS::EMERGENCYSTOPSRVRESPONSE"))

(in-package "ROS")





(defclass mower_msgs::EmergencyStopSrvRequest
  :super ros::object
  :slots (_emergency ))

(defmethod mower_msgs::EmergencyStopSrvRequest
  (:init
   (&key
    ((:emergency __emergency) 0)
    )
   (send-super :init)
   (setq _emergency (round __emergency))
   self)
  (:emergency
   (&optional __emergency)
   (if __emergency (setq _emergency __emergency)) _emergency)
  (:serialization-length
   ()
   (+
    ;; uint8 _emergency
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _emergency
       (write-byte _emergency s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _emergency
     (setq _emergency (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass mower_msgs::EmergencyStopSrvResponse
  :super ros::object
  :slots ())

(defmethod mower_msgs::EmergencyStopSrvResponse
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

(defclass mower_msgs::EmergencyStopSrv
  :super ros::object
  :slots ())

(setf (get mower_msgs::EmergencyStopSrv :md5sum-) "00b85207f5d294f8ce1433699fc5397c")
(setf (get mower_msgs::EmergencyStopSrv :datatype-) "mower_msgs/EmergencyStopSrv")
(setf (get mower_msgs::EmergencyStopSrv :request) mower_msgs::EmergencyStopSrvRequest)
(setf (get mower_msgs::EmergencyStopSrv :response) mower_msgs::EmergencyStopSrvResponse)

(defmethod mower_msgs::EmergencyStopSrvRequest
  (:response () (instance mower_msgs::EmergencyStopSrvResponse :init)))

(setf (get mower_msgs::EmergencyStopSrvRequest :md5sum-) "00b85207f5d294f8ce1433699fc5397c")
(setf (get mower_msgs::EmergencyStopSrvRequest :datatype-) "mower_msgs/EmergencyStopSrvRequest")
(setf (get mower_msgs::EmergencyStopSrvRequest :definition-)
      "uint8 emergency
---
")

(setf (get mower_msgs::EmergencyStopSrvResponse :md5sum-) "00b85207f5d294f8ce1433699fc5397c")
(setf (get mower_msgs::EmergencyStopSrvResponse :datatype-) "mower_msgs/EmergencyStopSrvResponse")
(setf (get mower_msgs::EmergencyStopSrvResponse :definition-)
      "uint8 emergency
---
")



(provide :mower_msgs/EmergencyStopSrv "00b85207f5d294f8ce1433699fc5397c")


