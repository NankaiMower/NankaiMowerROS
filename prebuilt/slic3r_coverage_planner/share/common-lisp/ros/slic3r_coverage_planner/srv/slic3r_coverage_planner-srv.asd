
(cl:in-package :asdf)

(defsystem "slic3r_coverage_planner-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :slic3r_coverage_planner-msg
)
  :components ((:file "_package")
    (:file "PlanPath" :depends-on ("_package_PlanPath"))
    (:file "_package_PlanPath" :depends-on ("_package"))
  ))