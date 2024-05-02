;; Auto-generated. Do not edit!


(when (boundp 'xbot_msgs::ActionInfo)
  (if (not (find-package "XBOT_MSGS"))
    (make-package "XBOT_MSGS"))
  (shadow 'ActionInfo (find-package "XBOT_MSGS")))
(unless (find-package "XBOT_MSGS::ACTIONINFO")
  (make-package "XBOT_MSGS::ACTIONINFO"))

(in-package "ROS")
;;//! \htmlinclude ActionInfo.msg.html


(defclass xbot_msgs::ActionInfo
  :super ros::object
  :slots (_action_id _action_name _enabled ))

(defmethod xbot_msgs::ActionInfo
  (:init
   (&key
    ((:action_id __action_id) "")
    ((:action_name __action_name) "")
    ((:enabled __enabled) nil)
    )
   (send-super :init)
   (setq _action_id (string __action_id))
   (setq _action_name (string __action_name))
   (setq _enabled __enabled)
   self)
  (:action_id
   (&optional __action_id)
   (if __action_id (setq _action_id __action_id)) _action_id)
  (:action_name
   (&optional __action_name)
   (if __action_name (setq _action_name __action_name)) _action_name)
  (:enabled
   (&optional (__enabled :null))
   (if (not (eq __enabled :null)) (setq _enabled __enabled)) _enabled)
  (:serialization-length
   ()
   (+
    ;; string _action_id
    4 (length _action_id)
    ;; string _action_name
    4 (length _action_name)
    ;; bool _enabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action_id
       (write-long (length _action_id) s) (princ _action_id s)
     ;; string _action_name
       (write-long (length _action_name) s) (princ _action_name s)
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _action_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get xbot_msgs::ActionInfo :md5sum-) "98dc1981a42cdfe360677d00f0e0730a")
(setf (get xbot_msgs::ActionInfo :datatype-) "xbot_msgs/ActionInfo")
(setf (get xbot_msgs::ActionInfo :definition-)
      "string action_id                        # The ID used for this action
string action_name                      # A human readable name for this action
bool enabled                            # True, if the action is currently available
")



(provide :xbot_msgs/ActionInfo "98dc1981a42cdfe360677d00f0e0730a")


