
(cl:in-package :asdf)

(defsystem "mower_map-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "MapArea" :depends-on ("_package_MapArea"))
    (:file "_package_MapArea" :depends-on ("_package"))
    (:file "MapAreas" :depends-on ("_package_MapAreas"))
    (:file "_package_MapAreas" :depends-on ("_package"))
  ))