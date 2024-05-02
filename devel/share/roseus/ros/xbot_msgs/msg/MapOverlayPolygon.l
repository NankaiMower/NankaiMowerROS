;; Auto-generated. Do not edit!


(when (boundp 'xbot_msgs::MapOverlayPolygon)
  (if (not (find-package "XBOT_MSGS"))
    (make-package "XBOT_MSGS"))
  (shadow 'MapOverlayPolygon (find-package "XBOT_MSGS")))
(unless (find-package "XBOT_MSGS::MAPOVERLAYPOLYGON")
  (make-package "XBOT_MSGS::MAPOVERLAYPOLYGON"))

(in-package "ROS")
;;//! \htmlinclude MapOverlayPolygon.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass xbot_msgs::MapOverlayPolygon
  :super ros::object
  :slots (_polygon _color _closed _line_width ))

(defmethod xbot_msgs::MapOverlayPolygon
  (:init
   (&key
    ((:polygon __polygon) (instance geometry_msgs::Polygon :init))
    ((:color __color) "")
    ((:closed __closed) nil)
    ((:line_width __line_width) 0.0)
    )
   (send-super :init)
   (setq _polygon __polygon)
   (setq _color (string __color))
   (setq _closed __closed)
   (setq _line_width (float __line_width))
   self)
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:closed
   (&optional (__closed :null))
   (if (not (eq __closed :null)) (setq _closed __closed)) _closed)
  (:line_width
   (&optional __line_width)
   (if __line_width (setq _line_width __line_width)) _line_width)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Polygon _polygon
    (send _polygon :serialization-length)
    ;; string _color
    4 (length _color)
    ;; bool _closed
    1
    ;; float32 _line_width
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Polygon _polygon
       (send _polygon :serialize s)
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;; bool _closed
       (if _closed (write-byte -1 s) (write-byte 0 s))
     ;; float32 _line_width
       (sys::poke _line_width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Polygon _polygon
     (send _polygon :deserialize buf ptr-) (incf ptr- (send _polygon :serialization-length))
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _closed
     (setq _closed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _line_width
     (setq _line_width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get xbot_msgs::MapOverlayPolygon :md5sum-) "120b1776b75dc17ea7f8c81f08a7abe3")
(setf (get xbot_msgs::MapOverlayPolygon :datatype-) "xbot_msgs/MapOverlayPolygon")
(setf (get xbot_msgs::MapOverlayPolygon :definition-)
      "geometry_msgs/Polygon polygon
string color
bool closed
float32 line_width
================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :xbot_msgs/MapOverlayPolygon "120b1776b75dc17ea7f8c81f08a7abe3")


