
(cl:in-package :asdf)

(defsystem "mower_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "EmergencyStopSrv" :depends-on ("_package_EmergencyStopSrv"))
    (:file "_package_EmergencyStopSrv" :depends-on ("_package"))
    (:file "GPSControlSrv" :depends-on ("_package_GPSControlSrv"))
    (:file "_package_GPSControlSrv" :depends-on ("_package"))
    (:file "HighLevelControlSrv" :depends-on ("_package_HighLevelControlSrv"))
    (:file "_package_HighLevelControlSrv" :depends-on ("_package"))
    (:file "MowerControlSrv" :depends-on ("_package_MowerControlSrv"))
    (:file "_package_MowerControlSrv" :depends-on ("_package"))
  ))