;; Auto-generated. Do not edit!


(when (boundp 'mower_msgs::MowerControlSrv)
  (if (not (find-package "MOWER_MSGS"))
    (make-package "MOWER_MSGS"))
  (shadow 'MowerControlSrv (find-package "MOWER_MSGS")))
(unless (find-package "MOWER_MSGS::MOWERCONTROLSRV")
  (make-package "MOWER_MSGS::MOWERCONTROLSRV"))
(unless (find-package "MOWER_MSGS::MOWERCONTROLSRVREQUEST")
  (make-package "MOWER_MSGS::MOWERCONTROLSRVREQUEST"))
(unless (find-package "MOWER_MSGS::MOWERCONTROLSRVRESPONSE")
  (make-package "MOWER_MSGS::MOWERCONTROLSRVRESPONSE"))

(in-package "ROS")





(defclass mower_msgs::MowerControlSrvRequest
  :super ros::object
  :slots (_mow_enabled ))

(defmethod mower_msgs::MowerControlSrvRequest
  (:init
   (&key
    ((:mow_enabled __mow_enabled) 0)
    )
   (send-super :init)
   (setq _mow_enabled (round __mow_enabled))
   self)
  (:mow_enabled
   (&optional __mow_enabled)
   (if __mow_enabled (setq _mow_enabled __mow_enabled)) _mow_enabled)
  (:serialization-length
   ()
   (+
    ;; uint8 _mow_enabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mow_enabled
       (write-byte _mow_enabled s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mow_enabled
     (setq _mow_enabled (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass mower_msgs::MowerControlSrvResponse
  :super ros::object
  :slots ())

(defmethod mower_msgs::MowerControlSrvResponse
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

(defclass mower_msgs::MowerControlSrv
  :super ros::object
  :slots ())

(setf (get mower_msgs::MowerControlSrv :md5sum-) "988e36b225a99f2ee6894313fe1d90a3")
(setf (get mower_msgs::MowerControlSrv :datatype-) "mower_msgs/MowerControlSrv")
(setf (get mower_msgs::MowerControlSrv :request) mower_msgs::MowerControlSrvRequest)
(setf (get mower_msgs::MowerControlSrv :response) mower_msgs::MowerControlSrvResponse)

(defmethod mower_msgs::MowerControlSrvRequest
  (:response () (instance mower_msgs::MowerControlSrvResponse :init)))

(setf (get mower_msgs::MowerControlSrvRequest :md5sum-) "988e36b225a99f2ee6894313fe1d90a3")
(setf (get mower_msgs::MowerControlSrvRequest :datatype-) "mower_msgs/MowerControlSrvRequest")
(setf (get mower_msgs::MowerControlSrvRequest :definition-)
      "uint8 mow_enabled
---
")

(setf (get mower_msgs::MowerControlSrvResponse :md5sum-) "988e36b225a99f2ee6894313fe1d90a3")
(setf (get mower_msgs::MowerControlSrvResponse :datatype-) "mower_msgs/MowerControlSrvResponse")
(setf (get mower_msgs::MowerControlSrvResponse :definition-)
      "uint8 mow_enabled
---
")



(provide :mower_msgs/MowerControlSrv "988e36b225a99f2ee6894313fe1d90a3")


