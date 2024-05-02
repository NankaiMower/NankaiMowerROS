
(cl:in-package :asdf)

(defsystem "xesc_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "XescState" :depends-on ("_package_XescState"))
    (:file "_package_XescState" :depends-on ("_package"))
    (:file "XescStateStamped" :depends-on ("_package_XescStateStamped"))
    (:file "_package_XescStateStamped" :depends-on ("_package"))
  ))