// Auto-generated. Do not edit!

// (in-package xbot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AbsolutePose = require('./AbsolutePose.js');

//-----------------------------------------------------------

class RobotState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.battery_percentage = null;
      this.emergency = null;
      this.is_charging = null;
      this.gps_percentage = null;
      this.current_action_progress = null;
      this.current_state = null;
      this.current_sub_state = null;
      this.robot_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('battery_percentage')) {
        this.battery_percentage = initObj.battery_percentage
      }
      else {
        this.battery_percentage = 0.0;
      }
      if (initObj.hasOwnProperty('emergency')) {
        this.emergency = initObj.emergency
      }
      else {
        this.emergency = false;
      }
      if (initObj.hasOwnProperty('is_charging')) {
        this.is_charging = initObj.is_charging
      }
      else {
        this.is_charging = false;
      }
      if (initObj.hasOwnProperty('gps_percentage')) {
        this.gps_percentage = initObj.gps_percentage
      }
      else {
        this.gps_percentage = 0.0;
      }
      if (initObj.hasOwnProperty('current_action_progress')) {
        this.current_action_progress = initObj.current_action_progress
      }
      else {
        this.current_action_progress = 0.0;
      }
      if (initObj.hasOwnProperty('current_state')) {
        this.current_state = initObj.current_state
      }
      else {
        this.current_state = '';
      }
      if (initObj.hasOwnProperty('current_sub_state')) {
        this.current_sub_state = initObj.current_sub_state
      }
      else {
        this.current_sub_state = '';
      }
      if (initObj.hasOwnProperty('robot_pose')) {
        this.robot_pose = initObj.robot_pose
      }
      else {
        this.robot_pose = new AbsolutePose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotState
    // Serialize message field [battery_percentage]
    bufferOffset = _serializer.float32(obj.battery_percentage, buffer, bufferOffset);
    // Serialize message field [emergency]
    bufferOffset = _serializer.bool(obj.emergency, buffer, bufferOffset);
    // Serialize message field [is_charging]
    bufferOffset = _serializer.bool(obj.is_charging, buffer, bufferOffset);
    // Serialize message field [gps_percentage]
    bufferOffset = _serializer.float32(obj.gps_percentage, buffer, bufferOffset);
    // Serialize message field [current_action_progress]
    bufferOffset = _serializer.float32(obj.current_action_progress, buffer, bufferOffset);
    // Serialize message field [current_state]
    bufferOffset = _serializer.string(obj.current_state, buffer, bufferOffset);
    // Serialize message field [current_sub_state]
    bufferOffset = _serializer.string(obj.current_sub_state, buffer, bufferOffset);
    // Serialize message field [robot_pose]
    bufferOffset = AbsolutePose.serialize(obj.robot_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotState
    let len;
    let data = new RobotState(null);
    // Deserialize message field [battery_percentage]
    data.battery_percentage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [emergency]
    data.emergency = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_charging]
    data.is_charging = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps_percentage]
    data.gps_percentage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_action_progress]
    data.current_action_progress = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_state]
    data.current_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_sub_state]
    data.current_sub_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_pose]
    data.robot_pose = AbsolutePose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.current_state);
    length += _getByteLength(object.current_sub_state);
    length += AbsolutePose.getMessageSize(object.robot_pose);
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xbot_msgs/RobotState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '464ee74e3497a368ce97ed6ee7a18dcb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A state to display to a human to tell what's going on
    float32 battery_percentage
    bool emergency
    bool is_charging
    float32 gps_percentage
    float32 current_action_progress
    string current_state                # Like "Cleaning"
    string current_sub_state            # Like "doing the dishes"
    xbot_msgs/AbsolutePose robot_pose # Pose of the docking station
    ================================================================================
    MSG: xbot_msgs/AbsolutePose
    # This message is used to describe the absolute pose measured by some sensor.
    # Usually the data will be noisy and might optionally include an orientation estimate.
    # We can assume that this position is drift free.
    
    # an enum showing from which type of absolute sensor the data originates
    uint8 SOURCE_GPS=1
    uint8 SOURCE_LIGHTHOUSE=2
    uint8 SOURCE_SENSOR_FUSION=100
    
    # Some flags to describe the GPS fix better
    uint16 FLAG_GPS_RTK=1                   # True, if there are corrections applied
    uint16 FLAG_GPS_RTK_FIXED=2             # True, if we have a fixed solution
    uint16 FLAG_GPS_RTK_FLOAT=4             # True, if we have a float solution
    uint16 FLAG_GPS_DEAD_RECKONING=8        # True, if the GPS module is currently doing dead reckoning using its internal IMU
    
    uint16 FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE=1    # True, if we have a recent absolute position measurement (e.g. RTK GPS)
    uint16 FLAG_SENSOR_FUSION_DEAD_RECKONING=8          # True, if we have dead reckoning
    
    
    
    std_msgs/Header header
    uint32 sensor_stamp                     # A timestamp sent by the sensor, 0 for source = sensor fusion
    uint32 received_stamp                   # A timestamp taken on receive, 0 for source = sensor fusion
    
    uint8 source
    uint16 flags                            # Flags specific to the source
    uint8 orientation_valid                 # Set to true, if the sensor can also measure orientation. This applies to orientation and vehicle_heading
    uint8 motion_vector_valid               # Set to true, if the speed vector is valid. This also applies to the motion_heading.
    float32 position_accuracy               # Set to the estimated accuracy in m
    float32 orientation_accuracy            # Set to the estimated orientation accuracy in rad
    geometry_msgs/PoseWithCovariance pose   # The pose measured by the sensor
    geometry_msgs/Vector3 motion_vector     # Vector of motion in m/s
    float64 vehicle_heading                 # The yaw for the orientation
    float64 motion_heading                  # The yaw for the motion vector
    
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotState(null);
    if (msg.battery_percentage !== undefined) {
      resolved.battery_percentage = msg.battery_percentage;
    }
    else {
      resolved.battery_percentage = 0.0
    }

    if (msg.emergency !== undefined) {
      resolved.emergency = msg.emergency;
    }
    else {
      resolved.emergency = false
    }

    if (msg.is_charging !== undefined) {
      resolved.is_charging = msg.is_charging;
    }
    else {
      resolved.is_charging = false
    }

    if (msg.gps_percentage !== undefined) {
      resolved.gps_percentage = msg.gps_percentage;
    }
    else {
      resolved.gps_percentage = 0.0
    }

    if (msg.current_action_progress !== undefined) {
      resolved.current_action_progress = msg.current_action_progress;
    }
    else {
      resolved.current_action_progress = 0.0
    }

    if (msg.current_state !== undefined) {
      resolved.current_state = msg.current_state;
    }
    else {
      resolved.current_state = ''
    }

    if (msg.current_sub_state !== undefined) {
      resolved.current_sub_state = msg.current_sub_state;
    }
    else {
      resolved.current_sub_state = ''
    }

    if (msg.robot_pose !== undefined) {
      resolved.robot_pose = AbsolutePose.Resolve(msg.robot_pose)
    }
    else {
      resolved.robot_pose = new AbsolutePose()
    }

    return resolved;
    }
};

module.exports = RobotState;
