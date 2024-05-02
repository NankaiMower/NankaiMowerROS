;; Auto-generated. Do not edit!


(when (boundp 'mower_map::DeleteMowingAreaSrv)
  (if (not (find-package "MOWER_MAP"))
    (make-package "MOWER_MAP"))
  (shadow 'DeleteMowingAreaSrv (find-package "MOWER_MAP")))
(unless (find-package "MOWER_MAP::DELETEMOWINGAREASRV")
  (make-package "MOWER_MAP::DELETEMOWINGAREASRV"))
(unless (find-package "MOWER_MAP::DELETEMOWINGAREASRVREQUEST")
  (make-package "MOWER_MAP::DELETEMOWINGAREASRVREQUEST"))
(unless (find-package "MOWER_MAP::DELETEMOWINGAREASRVRESPONSE")
  (make-package "MOWER_MAP::DELETEMOWINGAREASRVRESPONSE"))

(in-package "ROS")





(defclass mower_map::DeleteMowingAreaSrvRequest
  :super ros::object
  :slots (_index ))

(defmethod mower_map::DeleteMowingAreaSrvRequest
  (:init
   (&key
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _index (round __index))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; uint32 _index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _index
       (write-long _index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mower_map::DeleteMowingAreaSrvResponse
  :super ros::object
  :slots ())

(defmethod mower_map::DeleteMowingAreaSrvResponse
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

(defclass mower_map::DeleteMowingAreaSrv
  :super ros::object
  :slots ())

(setf (get mower_map::DeleteMowingAreaSrv :md5sum-) "ad7b979103dbd563a352ef5270716728")
(setf (get mower_map::DeleteMowingAreaSrv :datatype-) "mower_map/DeleteMowingAreaSrv")
(setf (get mower_map::DeleteMowingAreaSrv :request) mower_map::DeleteMowingAreaSrvRequest)
(setf (get mower_map::DeleteMowingAreaSrv :response) mower_map::DeleteMowingAreaSrvResponse)

(defmethod mower_map::DeleteMowingAreaSrvRequest
  (:response () (instance mower_map::DeleteMowingAreaSrvResponse :init)))

(setf (get mower_map::DeleteMowingAreaSrvRequest :md5sum-) "ad7b979103dbd563a352ef5270716728")
(setf (get mower_map::DeleteMowingAreaSrvRequest :datatype-) "mower_map/DeleteMowingAreaSrvRequest")
(setf (get mower_map::DeleteMowingAreaSrvRequest :definition-)
      "uint32 index
---
")

(setf (get mower_map::DeleteMowingAreaSrvResponse :md5sum-) "ad7b979103dbd563a352ef5270716728")
(setf (get mower_map::DeleteMowingAreaSrvResponse :datatype-) "mower_map/DeleteMowingAreaSrvResponse")
(setf (get mower_map::DeleteMowingAreaSrvResponse :definition-)
      "uint32 index
---
")



(provide :mower_map/DeleteMowingAreaSrv "ad7b979103dbd563a352ef5270716728")


