;; Auto-generated. Do not edit!


(when (boundp 'mower_msgs::ESCStatus)
  (if (not (find-package "MOWER_MSGS"))
    (make-package "MOWER_MSGS"))
  (shadow 'ESCStatus (find-package "MOWER_MSGS")))
(unless (find-package "MOWER_MSGS::ESCSTATUS")
  (make-package "MOWER_MSGS::ESCSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ESCStatus.msg.html


(intern "*ESC_STATUS_DISCONNECTED*" (find-package "MOWER_MSGS::ESCSTATUS"))
(shadow '*ESC_STATUS_DISCONNECTED* (find-package "MOWER_MSGS::ESCSTATUS"))
(defconstant mower_msgs::ESCStatus::*ESC_STATUS_DISCONNECTED* 99)
(intern "*ESC_STATUS_ERROR*" (find-package "MOWER_MSGS::ESCSTATUS"))
(shadow '*ESC_STATUS_ERROR* (find-package "MOWER_MSGS::ESCSTATUS"))
(defconstant mower_msgs::ESCStatus::*ESC_STATUS_ERROR* 100)
(intern "*ESC_STATUS_STALLED*" (find-package "MOWER_MSGS::ESCSTATUS"))
(shadow '*ESC_STATUS_STALLED* (find-package "MOWER_MSGS::ESCSTATUS"))
(defconstant mower_msgs::ESCStatus::*ESC_STATUS_STALLED* 150)
(intern "*ESC_STATUS_OK*" (find-package "MOWER_MSGS::ESCSTATUS"))
(shadow '*ESC_STATUS_OK* (find-package "MOWER_MSGS::ESCSTATUS"))
(defconstant mower_msgs::ESCStatus::*ESC_STATUS_OK* 200)
(intern "*ESC_STATUS_RUNNING*" (find-package "MOWER_MSGS::ESCSTATUS"))
(shadow '*ESC_STATUS_RUNNING* (find-package "MOWER_MSGS::ESCSTATUS"))
(defconstant mower_msgs::ESCStatus::*ESC_STATUS_RUNNING* 201)

(defun mower_msgs::ESCStatus-to-symbol (const)
  (cond
        ((= const 99) 'mower_msgs::ESCStatus::*ESC_STATUS_DISCONNECTED*)
        ((= const 100) 'mower_msgs::ESCStatus::*ESC_STATUS_ERROR*)
        ((= const 150) 'mower_msgs::ESCStatus::*ESC_STATUS_STALLED*)
        ((= const 200) 'mower_msgs::ESCStatus::*ESC_STATUS_OK*)
        ((= const 201) 'mower_msgs::ESCStatus::*ESC_STATUS_RUNNING*)
        (t nil)))

(defclass mower_msgs::ESCStatus
  :super ros::object
  :slots (_status _current _tacho _temperature_motor _temperature_pcb ))

(defmethod mower_msgs::ESCStatus
  (:init
   (&key
    ((:status __status) 0)
    ((:current __current) 0.0)
    ((:tacho __tacho) 0)
    ((:temperature_motor __temperature_motor) 0.0)
    ((:temperature_pcb __temperature_pcb) 0.0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _current (float __current))
   (setq _tacho (round __tacho))
   (setq _temperature_motor (float __temperature_motor))
   (setq _temperature_pcb (float __temperature_pcb))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:tacho
   (&optional __tacho)
   (if __tacho (setq _tacho __tacho)) _tacho)
  (:temperature_motor
   (&optional __temperature_motor)
   (if __temperature_motor (setq _temperature_motor __temperature_motor)) _temperature_motor)
  (:temperature_pcb
   (&optional __temperature_pcb)
   (if __temperature_pcb (setq _temperature_pcb __temperature_pcb)) _temperature_pcb)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; float32 _current
    4
    ;; uint32 _tacho
    4
    ;; float32 _temperature_motor
    4
    ;; float32 _temperature_pcb
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _tacho
       (write-long _tacho s)
     ;; float32 _temperature_motor
       (sys::poke _temperature_motor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature_pcb
       (sys::poke _temperature_pcb (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _tacho
     (setq _tacho (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _temperature_motor
     (setq _temperature_motor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature_pcb
     (setq _temperature_pcb (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mower_msgs::ESCStatus :md5sum-) "076a91f0c3f76fb0d32fd787c7167fec")
(setf (get mower_msgs::ESCStatus :datatype-) "mower_msgs/ESCStatus")
(setf (get mower_msgs::ESCStatus :definition-)
      "uint8 ESC_STATUS_DISCONNECTED=99
uint8 ESC_STATUS_ERROR=100
uint8 ESC_STATUS_STALLED=150
uint8 ESC_STATUS_OK=200
uint8 ESC_STATUS_RUNNING=201

uint8 status
float32 current
uint32 tacho
float32 temperature_motor
float32 temperature_pcb
")



(provide :mower_msgs/ESCStatus "076a91f0c3f76fb0d32fd787c7167fec")


