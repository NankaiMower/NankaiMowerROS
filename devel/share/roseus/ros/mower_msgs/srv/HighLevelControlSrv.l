;; Auto-generated. Do not edit!


(when (boundp 'mower_msgs::HighLevelControlSrv)
  (if (not (find-package "MOWER_MSGS"))
    (make-package "MOWER_MSGS"))
  (shadow 'HighLevelControlSrv (find-package "MOWER_MSGS")))
(unless (find-package "MOWER_MSGS::HIGHLEVELCONTROLSRV")
  (make-package "MOWER_MSGS::HIGHLEVELCONTROLSRV"))
(unless (find-package "MOWER_MSGS::HIGHLEVELCONTROLSRVREQUEST")
  (make-package "MOWER_MSGS::HIGHLEVELCONTROLSRVREQUEST"))
(unless (find-package "MOWER_MSGS::HIGHLEVELCONTROLSRVRESPONSE")
  (make-package "MOWER_MSGS::HIGHLEVELCONTROLSRVRESPONSE"))

(in-package "ROS")





(intern "*COMMAND_START*" (find-package "MOWER_MSGS::HIGHLEVELCONTROLSRVREQUEST"))
(shadow '*COMMAND_START* (find-package "MOWER_MSGS::HIGHLEVELCONTROLSRVREQUEST"))
(defconstant mower_msgs::HighLevelControlSrvRequest::*COMMAND_START* 1)
(intern "*COMMAND_HOME*" (find-package "MOWER_MSGS::HIGHLEVELCONTROLSRVREQUEST"))
(shadow '*COMMAND_HOME* (find-package "MOWER_MSGS::HIGHLEVELCONTROLSRVREQUEST"))
(defconstant mower_msgs::HighLevelControlSrvRequest::*COMMAND_HOME* 2)
(intern "*COMMAND_S1*" (find-package "MOWER_MSGS::HIGHLEVELCONTROLSRVREQUEST"))
(shadow '*COMMAND_S1* (find-package "MOWER_MSGS::HIGHLEVELCONTROLSRVREQUEST"))
(defconstant mower_msgs::HighLevelControlSrvRequest::*COMMAND_S1* 3)
(intern "*COMMAND_S2*" (find-package "MOWER_MSGS::HIGHLEVELCONTROLSRVREQUEST"))
(shadow '*COMMAND_S2* (find-package "MOWER_MSGS::HIGHLEVELCONTROLSRVREQUEST"))
(defconstant mower_msgs::HighLevelControlSrvRequest::*COMMAND_S2* 4)
(intern "*COMMAND_RESET_EMERGENCY*" (find-package "MOWER_MSGS::HIGHLEVELCONTROLSRVREQUEST"))
(shadow '*COMMAND_RESET_EMERGENCY* (find-package "MOWER_MSGS::HIGHLEVELCONTROLSRVREQUEST"))
(defconstant mower_msgs::HighLevelControlSrvRequest::*COMMAND_RESET_EMERGENCY* 254)
(intern "*COMMAND_DELETE_MAPS*" (find-package "MOWER_MSGS::HIGHLEVELCONTROLSRVREQUEST"))
(shadow '*COMMAND_DELETE_MAPS* (find-package "MOWER_MSGS::HIGHLEVELCONTROLSRVREQUEST"))
(defconstant mower_msgs::HighLevelControlSrvRequest::*COMMAND_DELETE_MAPS* 255)

(defun mower_msgs::HighLevelControlSrvRequest-to-symbol (const)
  (cond
        ((= const 1) 'mower_msgs::HighLevelControlSrvRequest::*COMMAND_START*)
        ((= const 2) 'mower_msgs::HighLevelControlSrvRequest::*COMMAND_HOME*)
        ((= const 3) 'mower_msgs::HighLevelControlSrvRequest::*COMMAND_S1*)
        ((= const 4) 'mower_msgs::HighLevelControlSrvRequest::*COMMAND_S2*)
        ((= const 254) 'mower_msgs::HighLevelControlSrvRequest::*COMMAND_RESET_EMERGENCY*)
        ((= const 255) 'mower_msgs::HighLevelControlSrvRequest::*COMMAND_DELETE_MAPS*)
        (t nil)))

(defclass mower_msgs::HighLevelControlSrvRequest
  :super ros::object
  :slots (_command ))

(defmethod mower_msgs::HighLevelControlSrvRequest
  (:init
   (&key
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass mower_msgs::HighLevelControlSrvResponse
  :super ros::object
  :slots ())

(defmethod mower_msgs::HighLevelControlSrvResponse
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

(defclass mower_msgs::HighLevelControlSrv
  :super ros::object
  :slots ())

(setf (get mower_msgs::HighLevelControlSrv :md5sum-) "0c9afcf75aa7a3bc23f835cf875e0cde")
(setf (get mower_msgs::HighLevelControlSrv :datatype-) "mower_msgs/HighLevelControlSrv")
(setf (get mower_msgs::HighLevelControlSrv :request) mower_msgs::HighLevelControlSrvRequest)
(setf (get mower_msgs::HighLevelControlSrv :response) mower_msgs::HighLevelControlSrvResponse)

(defmethod mower_msgs::HighLevelControlSrvRequest
  (:response () (instance mower_msgs::HighLevelControlSrvResponse :init)))

(setf (get mower_msgs::HighLevelControlSrvRequest :md5sum-) "0c9afcf75aa7a3bc23f835cf875e0cde")
(setf (get mower_msgs::HighLevelControlSrvRequest :datatype-) "mower_msgs/HighLevelControlSrvRequest")
(setf (get mower_msgs::HighLevelControlSrvRequest :definition-)
      "uint8 COMMAND_START=1
uint8 COMMAND_HOME=2
uint8 COMMAND_S1=3
uint8 COMMAND_S2=4
uint8 COMMAND_RESET_EMERGENCY=254
uint8 COMMAND_DELETE_MAPS=255

uint8 command
---
")

(setf (get mower_msgs::HighLevelControlSrvResponse :md5sum-) "0c9afcf75aa7a3bc23f835cf875e0cde")
(setf (get mower_msgs::HighLevelControlSrvResponse :datatype-) "mower_msgs/HighLevelControlSrvResponse")
(setf (get mower_msgs::HighLevelControlSrvResponse :definition-)
      "uint8 COMMAND_START=1
uint8 COMMAND_HOME=2
uint8 COMMAND_S1=3
uint8 COMMAND_S2=4
uint8 COMMAND_RESET_EMERGENCY=254
uint8 COMMAND_DELETE_MAPS=255

uint8 command
---
")



(provide :mower_msgs/HighLevelControlSrv "0c9afcf75aa7a3bc23f835cf875e0cde")


