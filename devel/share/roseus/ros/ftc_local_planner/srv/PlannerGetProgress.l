;; Auto-generated. Do not edit!


(when (boundp 'ftc_local_planner::PlannerGetProgress)
  (if (not (find-package "FTC_LOCAL_PLANNER"))
    (make-package "FTC_LOCAL_PLANNER"))
  (shadow 'PlannerGetProgress (find-package "FTC_LOCAL_PLANNER")))
(unless (find-package "FTC_LOCAL_PLANNER::PLANNERGETPROGRESS")
  (make-package "FTC_LOCAL_PLANNER::PLANNERGETPROGRESS"))
(unless (find-package "FTC_LOCAL_PLANNER::PLANNERGETPROGRESSREQUEST")
  (make-package "FTC_LOCAL_PLANNER::PLANNERGETPROGRESSREQUEST"))
(unless (find-package "FTC_LOCAL_PLANNER::PLANNERGETPROGRESSRESPONSE")
  (make-package "FTC_LOCAL_PLANNER::PLANNERGETPROGRESSRESPONSE"))

(in-package "ROS")





(defclass ftc_local_planner::PlannerGetProgressRequest
  :super ros::object
  :slots ())

(defmethod ftc_local_planner::PlannerGetProgressRequest
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

(defclass ftc_local_planner::PlannerGetProgressResponse
  :super ros::object
  :slots (_index ))

(defmethod ftc_local_planner::PlannerGetProgressResponse
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

(defclass ftc_local_planner::PlannerGetProgress
  :super ros::object
  :slots ())

(setf (get ftc_local_planner::PlannerGetProgress :md5sum-) "ad7b979103dbd563a352ef5270716728")
(setf (get ftc_local_planner::PlannerGetProgress :datatype-) "ftc_local_planner/PlannerGetProgress")
(setf (get ftc_local_planner::PlannerGetProgress :request) ftc_local_planner::PlannerGetProgressRequest)
(setf (get ftc_local_planner::PlannerGetProgress :response) ftc_local_planner::PlannerGetProgressResponse)

(defmethod ftc_local_planner::PlannerGetProgressRequest
  (:response () (instance ftc_local_planner::PlannerGetProgressResponse :init)))

(setf (get ftc_local_planner::PlannerGetProgressRequest :md5sum-) "ad7b979103dbd563a352ef5270716728")
(setf (get ftc_local_planner::PlannerGetProgressRequest :datatype-) "ftc_local_planner/PlannerGetProgressRequest")
(setf (get ftc_local_planner::PlannerGetProgressRequest :definition-)
      "---
uint32 index
")

(setf (get ftc_local_planner::PlannerGetProgressResponse :md5sum-) "ad7b979103dbd563a352ef5270716728")
(setf (get ftc_local_planner::PlannerGetProgressResponse :datatype-) "ftc_local_planner/PlannerGetProgressResponse")
(setf (get ftc_local_planner::PlannerGetProgressResponse :definition-)
      "---
uint32 index
")



(provide :ftc_local_planner/PlannerGetProgress "ad7b979103dbd563a352ef5270716728")


