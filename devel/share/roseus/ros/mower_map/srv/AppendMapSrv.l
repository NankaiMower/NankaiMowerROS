;; Auto-generated. Do not edit!


(when (boundp 'mower_map::AppendMapSrv)
  (if (not (find-package "MOWER_MAP"))
    (make-package "MOWER_MAP"))
  (shadow 'AppendMapSrv (find-package "MOWER_MAP")))
(unless (find-package "MOWER_MAP::APPENDMAPSRV")
  (make-package "MOWER_MAP::APPENDMAPSRV"))
(unless (find-package "MOWER_MAP::APPENDMAPSRVREQUEST")
  (make-package "MOWER_MAP::APPENDMAPSRVREQUEST"))
(unless (find-package "MOWER_MAP::APPENDMAPSRVRESPONSE")
  (make-package "MOWER_MAP::APPENDMAPSRVRESPONSE"))

(in-package "ROS")





(defclass mower_map::AppendMapSrvRequest
  :super ros::object
  :slots (_bagfile ))

(defmethod mower_map::AppendMapSrvRequest
  (:init
   (&key
    ((:bagfile __bagfile) "")
    )
   (send-super :init)
   (setq _bagfile (string __bagfile))
   self)
  (:bagfile
   (&optional __bagfile)
   (if __bagfile (setq _bagfile __bagfile)) _bagfile)
  (:serialization-length
   ()
   (+
    ;; string _bagfile
    4 (length _bagfile)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _bagfile
       (write-long (length _bagfile) s) (princ _bagfile s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _bagfile
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bagfile (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mower_map::AppendMapSrvResponse
  :super ros::object
  :slots ())

(defmethod mower_map::AppendMapSrvResponse
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

(defclass mower_map::AppendMapSrv
  :super ros::object
  :slots ())

(setf (get mower_map::AppendMapSrv :md5sum-) "a935fd4be1d8c2e1777172fa15665bc9")
(setf (get mower_map::AppendMapSrv :datatype-) "mower_map/AppendMapSrv")
(setf (get mower_map::AppendMapSrv :request) mower_map::AppendMapSrvRequest)
(setf (get mower_map::AppendMapSrv :response) mower_map::AppendMapSrvResponse)

(defmethod mower_map::AppendMapSrvRequest
  (:response () (instance mower_map::AppendMapSrvResponse :init)))

(setf (get mower_map::AppendMapSrvRequest :md5sum-) "a935fd4be1d8c2e1777172fa15665bc9")
(setf (get mower_map::AppendMapSrvRequest :datatype-) "mower_map/AppendMapSrvRequest")
(setf (get mower_map::AppendMapSrvRequest :definition-)
      "string bagfile
---
")

(setf (get mower_map::AppendMapSrvResponse :md5sum-) "a935fd4be1d8c2e1777172fa15665bc9")
(setf (get mower_map::AppendMapSrvResponse :datatype-) "mower_map/AppendMapSrvResponse")
(setf (get mower_map::AppendMapSrvResponse :definition-)
      "string bagfile
---
")



(provide :mower_map/AppendMapSrv "a935fd4be1d8c2e1777172fa15665bc9")


