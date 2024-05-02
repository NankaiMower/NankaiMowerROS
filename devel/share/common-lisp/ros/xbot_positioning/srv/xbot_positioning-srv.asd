
(cl:in-package :asdf)

(defsystem "xbot_positioning-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "GPSControlSrv" :depends-on ("_package_GPSControlSrv"))
    (:file "_package_GPSControlSrv" :depends-on ("_package"))
    (:file "SetPoseSrv" :depends-on ("_package_SetPoseSrv"))
    (:file "_package_SetPoseSrv" :depends-on ("_package"))
  ))