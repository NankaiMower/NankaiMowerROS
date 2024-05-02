;; Auto-generated. Do not edit!


(when (boundp 'mower_map::ConvertToNavigationAreaSrv)
  (if (not (find-package "MOWER_MAP"))
    (make-package "MOWER_MAP"))
  (shadow 'ConvertToNavigationAreaSrv (find-package "MOWER_MAP")))
(unless (find-package "MOWER_MAP::CONVERTTONAVIGATIONAREASRV")
  (make-package "MOWER_MAP::CONVERTTONAVIGATIONAREASRV"))
(unless (find-package "MOWER_MAP::CONVERTTONAVIGATIONAREASRVREQUEST")
  (make-package "MOWER_MAP::CONVERTTONAVIGATIONAREASRVREQUEST"))
(unless (find-package "MOWER_MAP::CONVERTTONAVIGATIONAREASRVRESPONSE")
  (make-package "MOWER_MAP::CONVERTTONAVIGATIONAREASRVRESPONSE"))

(in-package "ROS")





(defclass mower_map::ConvertToNavigationAreaSrvRequest
  :super ros::object
  :slots (_index ))

(defmethod mower_map::ConvertToNavigationAreaSrvRequest
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

(defclass mower_map::ConvertToNavigationAreaSrvResponse
  :super ros::object
  :slots ())

(defmethod mower_map::ConvertToNavigationAreaSrvResponse
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

(defclass mower_map::ConvertToNavigationAreaSrv
  :super ros::object
  :slots ())

(setf (get mower_map::ConvertToNavigationAreaSrv :md5sum-) "ad7b979103dbd563a352ef5270716728")
(setf (get mower_map::ConvertToNavigationAreaSrv :datatype-) "mower_map/ConvertToNavigationAreaSrv")
(setf (get mower_map::ConvertToNavigationAreaSrv :request) mower_map::ConvertToNavigationAreaSrvRequest)
(setf (get mower_map::ConvertToNavigationAreaSrv :response) mower_map::ConvertToNavigationAreaSrvResponse)

(defmethod mower_map::ConvertToNavigationAreaSrvRequest
  (:response () (instance mower_map::ConvertToNavigationAreaSrvResponse :init)))

(setf (get mower_map::ConvertToNavigationAreaSrvRequest :md5sum-) "ad7b979103dbd563a352ef5270716728")
(setf (get mower_map::ConvertToNavigationAreaSrvRequest :datatype-) "mower_map/ConvertToNavigationAreaSrvRequest")
(setf (get mower_map::ConvertToNavigationAreaSrvRequest :definition-)
      "uint32 index
---
")

(setf (get mower_map::ConvertToNavigationAreaSrvResponse :md5sum-) "ad7b979103dbd563a352ef5270716728")
(setf (get mower_map::ConvertToNavigationAreaSrvResponse :datatype-) "mower_map/ConvertToNavigationAreaSrvResponse")
(setf (get mower_map::ConvertToNavigationAreaSrvResponse :definition-)
      "uint32 index
---
")



(provide :mower_map/ConvertToNavigationAreaSrv "ad7b979103dbd563a352ef5270716728")


