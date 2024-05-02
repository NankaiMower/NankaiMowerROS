
(cl:in-package :asdf)

(defsystem "xbot_positioning-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "KalmanState" :depends-on ("_package_KalmanState"))
    (:file "_package_KalmanState" :depends-on ("_package"))
  ))