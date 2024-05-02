;; Auto-generated. Do not edit!


(when (boundp 'mower_map::ClearNavPointSrv)
  (if (not (find-package "MOWER_MAP"))
    (make-package "MOWER_MAP"))
  (shadow 'ClearNavPointSrv (find-package "MOWER_MAP")))
(unless (find-package "MOWER_MAP::CLEARNAVPOINTSRV")
  (make-package "MOWER_MAP::CLEARNAVPOINTSRV"))
(unless (find-package "MOWER_MAP::CLEARNAVPOINTSRVREQUEST")
  (make-package "MOWER_MAP::CLEARNAVPOINTSRVREQUEST"))
(unless (find-package "MOWER_MAP::CLEARNAVPOINTSRVRESPONSE")
  (make-package "MOWER_MAP::CLEARNAVPOINTSRVRESPONSE"))

(in-package "ROS")





(defclass mower_map::ClearNavPointSrvRequest
  :super ros::object
  :slots ())

(defmethod mower_map::ClearNavPointSrvRequest
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

(defclass mower_map::ClearNavPointSrvResponse
  :super ros::object
  :slots ())

(defmethod mower_map::ClearNavPointSrvResponse
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

(defclass mower_map::ClearNavPointSrv
  :super ros::object
  :slots ())

(setf (get mower_map::ClearNavPointSrv :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get mower_map::ClearNavPointSrv :datatype-) "mower_map/ClearNavPointSrv")
(setf (get mower_map::ClearNavPointSrv :request) mower_map::ClearNavPointSrvRequest)
(setf (get mower_map::ClearNavPointSrv :response) mower_map::ClearNavPointSrvResponse)

(defmethod mower_map::ClearNavPointSrvRequest
  (:response () (instance mower_map::ClearNavPointSrvResponse :init)))

(setf (get mower_map::ClearNavPointSrvRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get mower_map::ClearNavPointSrvRequest :datatype-) "mower_map/ClearNavPointSrvRequest")
(setf (get mower_map::ClearNavPointSrvRequest :definition-)
      "---
")

(setf (get mower_map::ClearNavPointSrvResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get mower_map::ClearNavPointSrvResponse :datatype-) "mower_map/ClearNavPointSrvResponse")
(setf (get mower_map::ClearNavPointSrvResponse :definition-)
      "---
")



(provide :mower_map/ClearNavPointSrv "d41d8cd98f00b204e9800998ecf8427e")


