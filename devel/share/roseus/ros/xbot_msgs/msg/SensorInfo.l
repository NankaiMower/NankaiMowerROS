;; Auto-generated. Do not edit!


(when (boundp 'xbot_msgs::SensorInfo)
  (if (not (find-package "XBOT_MSGS"))
    (make-package "XBOT_MSGS"))
  (shadow 'SensorInfo (find-package "XBOT_MSGS")))
(unless (find-package "XBOT_MSGS::SENSORINFO")
  (make-package "XBOT_MSGS::SENSORINFO"))

(in-package "ROS")
;;//! \htmlinclude SensorInfo.msg.html


(intern "*TYPE_STRING*" (find-package "XBOT_MSGS::SENSORINFO"))
(shadow '*TYPE_STRING* (find-package "XBOT_MSGS::SENSORINFO"))
(defconstant xbot_msgs::SensorInfo::*TYPE_STRING* 1)
(intern "*TYPE_DOUBLE*" (find-package "XBOT_MSGS::SENSORINFO"))
(shadow '*TYPE_DOUBLE* (find-package "XBOT_MSGS::SENSORINFO"))
(defconstant xbot_msgs::SensorInfo::*TYPE_DOUBLE* 2)
(intern "*VALUE_DESCRIPTION_TEMPERATURE*" (find-package "XBOT_MSGS::SENSORINFO"))
(shadow '*VALUE_DESCRIPTION_TEMPERATURE* (find-package "XBOT_MSGS::SENSORINFO"))
(defconstant xbot_msgs::SensorInfo::*VALUE_DESCRIPTION_TEMPERATURE* 1)
(intern "*VALUE_DESCRIPTION_VELOCITY*" (find-package "XBOT_MSGS::SENSORINFO"))
(shadow '*VALUE_DESCRIPTION_VELOCITY* (find-package "XBOT_MSGS::SENSORINFO"))
(defconstant xbot_msgs::SensorInfo::*VALUE_DESCRIPTION_VELOCITY* 2)
(intern "*VALUE_DESCRIPTION_ACCELERATION*" (find-package "XBOT_MSGS::SENSORINFO"))
(shadow '*VALUE_DESCRIPTION_ACCELERATION* (find-package "XBOT_MSGS::SENSORINFO"))
(defconstant xbot_msgs::SensorInfo::*VALUE_DESCRIPTION_ACCELERATION* 3)
(intern "*VALUE_DESCRIPTION_VOLTAGE*" (find-package "XBOT_MSGS::SENSORINFO"))
(shadow '*VALUE_DESCRIPTION_VOLTAGE* (find-package "XBOT_MSGS::SENSORINFO"))
(defconstant xbot_msgs::SensorInfo::*VALUE_DESCRIPTION_VOLTAGE* 4)
(intern "*VALUE_DESCRIPTION_CURRENT*" (find-package "XBOT_MSGS::SENSORINFO"))
(shadow '*VALUE_DESCRIPTION_CURRENT* (find-package "XBOT_MSGS::SENSORINFO"))
(defconstant xbot_msgs::SensorInfo::*VALUE_DESCRIPTION_CURRENT* 5)
(intern "*VALUE_DESCRIPTION_PERCENT*" (find-package "XBOT_MSGS::SENSORINFO"))
(shadow '*VALUE_DESCRIPTION_PERCENT* (find-package "XBOT_MSGS::SENSORINFO"))
(defconstant xbot_msgs::SensorInfo::*VALUE_DESCRIPTION_PERCENT* 6)
(intern "*FLAG_GPS_RTK*" (find-package "XBOT_MSGS::SENSORINFO"))
(shadow '*FLAG_GPS_RTK* (find-package "XBOT_MSGS::SENSORINFO"))
(defconstant xbot_msgs::SensorInfo::*FLAG_GPS_RTK* 1)
(intern "*FLAG_GPS_RTK_FIXED*" (find-package "XBOT_MSGS::SENSORINFO"))
(shadow '*FLAG_GPS_RTK_FIXED* (find-package "XBOT_MSGS::SENSORINFO"))
(defconstant xbot_msgs::SensorInfo::*FLAG_GPS_RTK_FIXED* 2)
(intern "*FLAG_GPS_RTK_FLOAT*" (find-package "XBOT_MSGS::SENSORINFO"))
(shadow '*FLAG_GPS_RTK_FLOAT* (find-package "XBOT_MSGS::SENSORINFO"))
(defconstant xbot_msgs::SensorInfo::*FLAG_GPS_RTK_FLOAT* 4)
(intern "*FLAG_GPS_DEAD_RECKONING*" (find-package "XBOT_MSGS::SENSORINFO"))
(shadow '*FLAG_GPS_DEAD_RECKONING* (find-package "XBOT_MSGS::SENSORINFO"))
(defconstant xbot_msgs::SensorInfo::*FLAG_GPS_DEAD_RECKONING* 8)
(intern "*FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE*" (find-package "XBOT_MSGS::SENSORINFO"))
(shadow '*FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE* (find-package "XBOT_MSGS::SENSORINFO"))
(defconstant xbot_msgs::SensorInfo::*FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE* 1)
(intern "*FLAG_SENSOR_FUSION_DEAD_RECKONING*" (find-package "XBOT_MSGS::SENSORINFO"))
(shadow '*FLAG_SENSOR_FUSION_DEAD_RECKONING* (find-package "XBOT_MSGS::SENSORINFO"))
(defconstant xbot_msgs::SensorInfo::*FLAG_SENSOR_FUSION_DEAD_RECKONING* 8)

(defun xbot_msgs::SensorInfo-to-symbol (const)
  (cond
        ((= const 1) 'xbot_msgs::SensorInfo::*TYPE_STRING*)
        ((= const 2) 'xbot_msgs::SensorInfo::*TYPE_DOUBLE*)
        ((= const 1) 'xbot_msgs::SensorInfo::*VALUE_DESCRIPTION_TEMPERATURE*)
        ((= const 2) 'xbot_msgs::SensorInfo::*VALUE_DESCRIPTION_VELOCITY*)
        ((= const 3) 'xbot_msgs::SensorInfo::*VALUE_DESCRIPTION_ACCELERATION*)
        ((= const 4) 'xbot_msgs::SensorInfo::*VALUE_DESCRIPTION_VOLTAGE*)
        ((= const 5) 'xbot_msgs::SensorInfo::*VALUE_DESCRIPTION_CURRENT*)
        ((= const 6) 'xbot_msgs::SensorInfo::*VALUE_DESCRIPTION_PERCENT*)
        ((= const 1) 'xbot_msgs::SensorInfo::*FLAG_GPS_RTK*)
        ((= const 2) 'xbot_msgs::SensorInfo::*FLAG_GPS_RTK_FIXED*)
        ((= const 4) 'xbot_msgs::SensorInfo::*FLAG_GPS_RTK_FLOAT*)
        ((= const 8) 'xbot_msgs::SensorInfo::*FLAG_GPS_DEAD_RECKONING*)
        ((= const 1) 'xbot_msgs::SensorInfo::*FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE*)
        ((= const 8) 'xbot_msgs::SensorInfo::*FLAG_SENSOR_FUSION_DEAD_RECKONING*)
        (t nil)))

(defclass xbot_msgs::SensorInfo
  :super ros::object
  :slots (_sensor_id _sensor_name _value_type _value_description _unit _has_min_max _min_value _max_value _has_critical_low _lower_critical_value _has_critical_high _upper_critical_value ))

(defmethod xbot_msgs::SensorInfo
  (:init
   (&key
    ((:sensor_id __sensor_id) "")
    ((:sensor_name __sensor_name) "")
    ((:value_type __value_type) 0)
    ((:value_description __value_description) 0)
    ((:unit __unit) "")
    ((:has_min_max __has_min_max) nil)
    ((:min_value __min_value) 0.0)
    ((:max_value __max_value) 0.0)
    ((:has_critical_low __has_critical_low) nil)
    ((:lower_critical_value __lower_critical_value) 0.0)
    ((:has_critical_high __has_critical_high) nil)
    ((:upper_critical_value __upper_critical_value) 0.0)
    )
   (send-super :init)
   (setq _sensor_id (string __sensor_id))
   (setq _sensor_name (string __sensor_name))
   (setq _value_type (round __value_type))
   (setq _value_description (round __value_description))
   (setq _unit (string __unit))
   (setq _has_min_max __has_min_max)
   (setq _min_value (float __min_value))
   (setq _max_value (float __max_value))
   (setq _has_critical_low __has_critical_low)
   (setq _lower_critical_value (float __lower_critical_value))
   (setq _has_critical_high __has_critical_high)
   (setq _upper_critical_value (float __upper_critical_value))
   self)
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:sensor_name
   (&optional __sensor_name)
   (if __sensor_name (setq _sensor_name __sensor_name)) _sensor_name)
  (:value_type
   (&optional __value_type)
   (if __value_type (setq _value_type __value_type)) _value_type)
  (:value_description
   (&optional __value_description)
   (if __value_description (setq _value_description __value_description)) _value_description)
  (:unit
   (&optional __unit)
   (if __unit (setq _unit __unit)) _unit)
  (:has_min_max
   (&optional (__has_min_max :null))
   (if (not (eq __has_min_max :null)) (setq _has_min_max __has_min_max)) _has_min_max)
  (:min_value
   (&optional __min_value)
   (if __min_value (setq _min_value __min_value)) _min_value)
  (:max_value
   (&optional __max_value)
   (if __max_value (setq _max_value __max_value)) _max_value)
  (:has_critical_low
   (&optional (__has_critical_low :null))
   (if (not (eq __has_critical_low :null)) (setq _has_critical_low __has_critical_low)) _has_critical_low)
  (:lower_critical_value
   (&optional __lower_critical_value)
   (if __lower_critical_value (setq _lower_critical_value __lower_critical_value)) _lower_critical_value)
  (:has_critical_high
   (&optional (__has_critical_high :null))
   (if (not (eq __has_critical_high :null)) (setq _has_critical_high __has_critical_high)) _has_critical_high)
  (:upper_critical_value
   (&optional __upper_critical_value)
   (if __upper_critical_value (setq _upper_critical_value __upper_critical_value)) _upper_critical_value)
  (:serialization-length
   ()
   (+
    ;; string _sensor_id
    4 (length _sensor_id)
    ;; string _sensor_name
    4 (length _sensor_name)
    ;; uint8 _value_type
    1
    ;; uint8 _value_description
    1
    ;; string _unit
    4 (length _unit)
    ;; bool _has_min_max
    1
    ;; float64 _min_value
    8
    ;; float64 _max_value
    8
    ;; bool _has_critical_low
    1
    ;; float64 _lower_critical_value
    8
    ;; bool _has_critical_high
    1
    ;; float64 _upper_critical_value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sensor_id
       (write-long (length _sensor_id) s) (princ _sensor_id s)
     ;; string _sensor_name
       (write-long (length _sensor_name) s) (princ _sensor_name s)
     ;; uint8 _value_type
       (write-byte _value_type s)
     ;; uint8 _value_description
       (write-byte _value_description s)
     ;; string _unit
       (write-long (length _unit) s) (princ _unit s)
     ;; bool _has_min_max
       (if _has_min_max (write-byte -1 s) (write-byte 0 s))
     ;; float64 _min_value
       (sys::poke _min_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_value
       (sys::poke _max_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _has_critical_low
       (if _has_critical_low (write-byte -1 s) (write-byte 0 s))
     ;; float64 _lower_critical_value
       (sys::poke _lower_critical_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _has_critical_high
       (if _has_critical_high (write-byte -1 s) (write-byte 0 s))
     ;; float64 _upper_critical_value
       (sys::poke _upper_critical_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sensor_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _sensor_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _value_type
     (setq _value_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _value_description
     (setq _value_description (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _unit
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unit (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _has_min_max
     (setq _has_min_max (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _min_value
     (setq _min_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_value
     (setq _max_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _has_critical_low
     (setq _has_critical_low (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _lower_critical_value
     (setq _lower_critical_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _has_critical_high
     (setq _has_critical_high (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _upper_critical_value
     (setq _upper_critical_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get xbot_msgs::SensorInfo :md5sum-) "85f01359245544db1d778a444df1de31")
(setf (get xbot_msgs::SensorInfo :datatype-) "xbot_msgs/SensorInfo")
(setf (get xbot_msgs::SensorInfo :definition-)
      "# an enum showing from which type of data the sensor delivers
uint8 TYPE_STRING=1
uint8 TYPE_DOUBLE=2

uint8 VALUE_DESCRIPTION_TEMPERATURE=1
uint8 VALUE_DESCRIPTION_VELOCITY=2
uint8 VALUE_DESCRIPTION_ACCELERATION=3
uint8 VALUE_DESCRIPTION_VOLTAGE=4
uint8 VALUE_DESCRIPTION_CURRENT=5
uint8 VALUE_DESCRIPTION_PERCENT=6

# Some flags to describe the GPS fix better
uint16 FLAG_GPS_RTK=1                   # True, if there are corrections applied
uint16 FLAG_GPS_RTK_FIXED=2             # True, if we have a fixed solution
uint16 FLAG_GPS_RTK_FLOAT=4             # True, if we have a float solution
uint16 FLAG_GPS_DEAD_RECKONING=8        # True, if the GPS module is currently doing dead reckoning using its internal IMU

uint16 FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE=1    # True, if we have a recent absolute position measurement (e.g. RTK GPS)
uint16 FLAG_SENSOR_FUSION_DEAD_RECKONING=8          # True, if we have dead reckoning

string sensor_id
string sensor_name                      # A human readable name for this sensor
uint8 value_type                        # Data type of sensor data to expect. Useful for parsing
uint8 value_description                 # Description of the value (e.g. Temperature, Speed), may be used to display different kinds of widgets to the user
string unit                             # Unit of the sensor data (e.g. \"V\" or \"m/s\")
bool has_min_max                        # True, if min_value and max_value are valid
float64 min_value                       # Absolute sensor min (e.g. used for rendering a gauge)
float64 max_value                       # Absolute sensor max (e.g. used for rendering a gauge)
bool has_critical_low                   # True, if there's a lower bound that's considered critical and a user should be warned about
float64 lower_critical_value            # Any value below this is considered critical
bool has_critical_high                  # True, if there's an upper bound that's considered critical
float64 upper_critical_value            # Any value above this is considered critical

")



(provide :xbot_msgs/SensorInfo "85f01359245544db1d778a444df1de31")


