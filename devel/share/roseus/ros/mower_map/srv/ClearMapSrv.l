;; Auto-generated. Do not edit!


(when (boundp 'mower_map::ClearMapSrv)
  (if (not (find-package "MOWER_MAP"))
    (make-package "MOWER_MAP"))
  (shadow 'ClearMapSrv (find-package "MOWER_MAP")))
(unless (find-package "MOWER_MAP::CLEARMAPSRV")
  (make-package "MOWER_MAP::CLEARMAPSRV"))
(unless (find-package "MOWER_MAP::CLEARMAPSRVREQUEST")
  (make-package "MOWER_MAP::CLEARMAPSRVREQUEST"))
(unless (find-package "MOWER_MAP::CLEARMAPSRVRESPONSE")
  (make-package "MOWER_MAP::CLEARMAPSRVRESPONSE"))

(in-package "ROS")





(defclass mower_map::ClearMapSrvRequest
  :super ros::object
  :slots ())

(defmethod mower_map::ClearMapSrvRequest
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

(defclass mower_map::ClearMapSrvResponse
  :super ros::object
  :slots ())

(defmethod mower_map::ClearMapSrvResponse
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

(defclass mower_map::ClearMapSrv
  :super ros::object
  :slots ())

(setf (get mower_map::ClearMapSrv :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get mower_map::ClearMapSrv :datatype-) "mower_map/ClearMapSrv")
(setf (get mower_map::ClearMapSrv :request) mower_map::ClearMapSrvRequest)
(setf (get mower_map::ClearMapSrv :response) mower_map::ClearMapSrvResponse)

(defmethod mower_map::ClearMapSrvRequest
  (:response () (instance mower_map::ClearMapSrvResponse :init)))

(setf (get mower_map::ClearMapSrvRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get mower_map::ClearMapSrvRequest :datatype-) "mower_map/ClearMapSrvRequest")
(setf (get mower_map::ClearMapSrvRequest :definition-)
      "---
")

(setf (get mower_map::ClearMapSrvResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get mower_map::ClearMapSrvResponse :datatype-) "mower_map/ClearMapSrvResponse")
(setf (get mower_map::ClearMapSrvResponse :definition-)
      "---
")



(provide :mower_map/ClearMapSrv "d41d8cd98f00b204e9800998ecf8427e")


