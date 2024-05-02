
(cl:in-package :asdf)

(defsystem "mower_map-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :mower_map-msg
)
  :components ((:file "_package")
    (:file "AddMowingAreaSrv" :depends-on ("_package_AddMowingAreaSrv"))
    (:file "_package_AddMowingAreaSrv" :depends-on ("_package"))
    (:file "AppendMapSrv" :depends-on ("_package_AppendMapSrv"))
    (:file "_package_AppendMapSrv" :depends-on ("_package"))
    (:file "ClearMapSrv" :depends-on ("_package_ClearMapSrv"))
    (:file "_package_ClearMapSrv" :depends-on ("_package"))
    (:file "ClearNavPointSrv" :depends-on ("_package_ClearNavPointSrv"))
    (:file "_package_ClearNavPointSrv" :depends-on ("_package"))
    (:file "ConvertToNavigationAreaSrv" :depends-on ("_package_ConvertToNavigationAreaSrv"))
    (:file "_package_ConvertToNavigationAreaSrv" :depends-on ("_package"))
    (:file "DeleteMowingAreaSrv" :depends-on ("_package_DeleteMowingAreaSrv"))
    (:file "_package_DeleteMowingAreaSrv" :depends-on ("_package"))
    (:file "GetDockingPointSrv" :depends-on ("_package_GetDockingPointSrv"))
    (:file "_package_GetDockingPointSrv" :depends-on ("_package"))
    (:file "GetMowingAreaSrv" :depends-on ("_package_GetMowingAreaSrv"))
    (:file "_package_GetMowingAreaSrv" :depends-on ("_package"))
    (:file "SetDockingPointSrv" :depends-on ("_package_SetDockingPointSrv"))
    (:file "_package_SetDockingPointSrv" :depends-on ("_package"))
    (:file "SetNavPointSrv" :depends-on ("_package_SetNavPointSrv"))
    (:file "_package_SetNavPointSrv" :depends-on ("_package"))
  ))