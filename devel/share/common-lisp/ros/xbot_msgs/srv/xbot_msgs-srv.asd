
(cl:in-package :asdf)

(defsystem "xbot_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :xbot_msgs-msg
)
  :components ((:file "_package")
    (:file "RegisterActionsSrv" :depends-on ("_package_RegisterActionsSrv"))
    (:file "_package_RegisterActionsSrv" :depends-on ("_package"))
  ))