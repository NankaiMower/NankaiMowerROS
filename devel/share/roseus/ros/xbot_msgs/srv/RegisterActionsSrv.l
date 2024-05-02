;; Auto-generated. Do not edit!


(when (boundp 'xbot_msgs::RegisterActionsSrv)
  (if (not (find-package "XBOT_MSGS"))
    (make-package "XBOT_MSGS"))
  (shadow 'RegisterActionsSrv (find-package "XBOT_MSGS")))
(unless (find-package "XBOT_MSGS::REGISTERACTIONSSRV")
  (make-package "XBOT_MSGS::REGISTERACTIONSSRV"))
(unless (find-package "XBOT_MSGS::REGISTERACTIONSSRVREQUEST")
  (make-package "XBOT_MSGS::REGISTERACTIONSSRVREQUEST"))
(unless (find-package "XBOT_MSGS::REGISTERACTIONSSRVRESPONSE")
  (make-package "XBOT_MSGS::REGISTERACTIONSSRVRESPONSE"))

(in-package "ROS")





(defclass xbot_msgs::RegisterActionsSrvRequest
  :super ros::object
  :slots (_node_prefix _actions ))

(defmethod xbot_msgs::RegisterActionsSrvRequest
  (:init
   (&key
    ((:node_prefix __node_prefix) "")
    ((:actions __actions) ())
    )
   (send-super :init)
   (setq _node_prefix (string __node_prefix))
   (setq _actions __actions)
   self)
  (:node_prefix
   (&optional __node_prefix)
   (if __node_prefix (setq _node_prefix __node_prefix)) _node_prefix)
  (:actions
   (&rest __actions)
   (if (keywordp (car __actions))
       (send* _actions __actions)
     (progn
       (if __actions (setq _actions (car __actions)))
       _actions)))
  (:serialization-length
   ()
   (+
    ;; string _node_prefix
    4 (length _node_prefix)
    ;; xbot_msgs/ActionInfo[] _actions
    (apply #'+ (send-all _actions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _node_prefix
       (write-long (length _node_prefix) s) (princ _node_prefix s)
     ;; xbot_msgs/ActionInfo[] _actions
     (write-long (length _actions) s)
     (dolist (elem _actions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _node_prefix
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node_prefix (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; xbot_msgs/ActionInfo[] _actions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actions (let (r) (dotimes (i n) (push (instance xbot_msgs::ActionInfo :init) r)) r))
     (dolist (elem- _actions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass xbot_msgs::RegisterActionsSrvResponse
  :super ros::object
  :slots ())

(defmethod xbot_msgs::RegisterActionsSrvResponse
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

(defclass xbot_msgs::RegisterActionsSrv
  :super ros::object
  :slots ())

(setf (get xbot_msgs::RegisterActionsSrv :md5sum-) "0d2ab873c76b3d03247f8862ec188635")
(setf (get xbot_msgs::RegisterActionsSrv :datatype-) "xbot_msgs/RegisterActionsSrv")
(setf (get xbot_msgs::RegisterActionsSrv :request) xbot_msgs::RegisterActionsSrvRequest)
(setf (get xbot_msgs::RegisterActionsSrv :response) xbot_msgs::RegisterActionsSrvResponse)

(defmethod xbot_msgs::RegisterActionsSrvRequest
  (:response () (instance xbot_msgs::RegisterActionsSrvResponse :init)))

(setf (get xbot_msgs::RegisterActionsSrvRequest :md5sum-) "0d2ab873c76b3d03247f8862ec188635")
(setf (get xbot_msgs::RegisterActionsSrvRequest :datatype-) "xbot_msgs/RegisterActionsSrvRequest")
(setf (get xbot_msgs::RegisterActionsSrvRequest :definition-)
      "string node_prefix                  # The prefix for the node registering / receiving the action. This is useful if multiple nodes are listening for actions and you want to make sure that the IDs don't collide
xbot_msgs/ActionInfo[] actions      # The list of available actions

================================================================================
MSG: xbot_msgs/ActionInfo
string action_id                        # The ID used for this action
string action_name                      # A human readable name for this action
---
")

(setf (get xbot_msgs::RegisterActionsSrvResponse :md5sum-) "0d2ab873c76b3d03247f8862ec188635")
(setf (get xbot_msgs::RegisterActionsSrvResponse :datatype-) "xbot_msgs/RegisterActionsSrvResponse")
(setf (get xbot_msgs::RegisterActionsSrvResponse :definition-)
      "string node_prefix                  # The prefix for the node registering / receiving the action. This is useful if multiple nodes are listening for actions and you want to make sure that the IDs don't collide
xbot_msgs/ActionInfo[] actions      # The list of available actions

================================================================================
MSG: xbot_msgs/ActionInfo
string action_id                        # The ID used for this action
string action_name                      # A human readable name for this action
---
")



(provide :xbot_msgs/RegisterActionsSrv "0d2ab873c76b3d03247f8862ec188635")


