// Auto-generated. Do not edit!

// (in-package xbot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AbsolutePose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sensor_stamp = null;
      this.received_stamp = null;
      this.source = null;
      this.flags = null;
      this.orientation_valid = null;
      this.motion_vector_valid = null;
      this.position_accuracy = null;
      this.orientation_accuracy = null;
      this.pose = null;
      this.motion_vector = null;
      this.vehicle_heading = null;
      this.motion_heading = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sensor_stamp')) {
        this.sensor_stamp = initObj.sensor_stamp
      }
      else {
        this.sensor_stamp = 0;
      }
      if (initObj.hasOwnProperty('received_stamp')) {
        this.received_stamp = initObj.received_stamp
      }
      else {
        this.received_stamp = 0;
      }
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = 0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('orientation_valid')) {
        this.orientation_valid = initObj.orientation_valid
      }
      else {
        this.orientation_valid = 0;
      }
      if (initObj.hasOwnProperty('motion_vector_valid')) {
        this.motion_vector_valid = initObj.motion_vector_valid
      }
      else {
        this.motion_vector_valid = 0;
      }
      if (initObj.hasOwnProperty('position_accuracy')) {
        this.position_accuracy = initObj.position_accuracy
      }
      else {
        this.position_accuracy = 0.0;
      }
      if (initObj.hasOwnProperty('orientation_accuracy')) {
        this.orientation_accuracy = initObj.orientation_accuracy
      }
      else {
        this.orientation_accuracy = 0.0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseWithCovariance();
      }
      if (initObj.hasOwnProperty('motion_vector')) {
        this.motion_vector = initObj.motion_vector
      }
      else {
        this.motion_vector = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('vehicle_heading')) {
        this.vehicle_heading = initObj.vehicle_heading
      }
      else {
        this.vehicle_heading = 0.0;
      }
      if (initObj.hasOwnProperty('motion_heading')) {
        this.motion_heading = initObj.motion_heading
      }
      else {
        this.motion_heading = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AbsolutePose
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sensor_stamp]
    bufferOffset = _serializer.uint32(obj.sensor_stamp, buffer, bufferOffset);
    // Serialize message field [received_stamp]
    bufferOffset = _serializer.uint32(obj.received_stamp, buffer, bufferOffset);
    // Serialize message field [source]
    bufferOffset = _serializer.uint8(obj.source, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint16(obj.flags, buffer, bufferOffset);
    // Serialize message field [orientation_valid]
    bufferOffset = _serializer.uint8(obj.orientation_valid, buffer, bufferOffset);
    // Serialize message field [motion_vector_valid]
    bufferOffset = _serializer.uint8(obj.motion_vector_valid, buffer, bufferOffset);
    // Serialize message field [position_accuracy]
    bufferOffset = _serializer.float32(obj.position_accuracy, buffer, bufferOffset);
    // Serialize message field [orientation_accuracy]
    bufferOffset = _serializer.float32(obj.orientation_accuracy, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseWithCovariance.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [motion_vector]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.motion_vector, buffer, bufferOffset);
    // Serialize message field [vehicle_heading]
    bufferOffset = _serializer.float64(obj.vehicle_heading, buffer, bufferOffset);
    // Serialize message field [motion_heading]
    bufferOffset = _serializer.float64(obj.motion_heading, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AbsolutePose
    let len;
    let data = new AbsolutePose(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_stamp]
    data.sensor_stamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [received_stamp]
    data.received_stamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [source]
    data.source = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [orientation_valid]
    data.orientation_valid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motion_vector_valid]
    data.motion_vector_valid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position_accuracy]
    data.position_accuracy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [orientation_accuracy]
    data.orientation_accuracy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [motion_vector]
    data.motion_vector = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_heading]
    data.vehicle_heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motion_heading]
    data.motion_heading = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 405;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xbot_msgs/AbsolutePose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca30a78465d73c61712ddbbfef2442b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new AbsolutePose(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sensor_stamp !== undefined) {
      resolved.sensor_stamp = msg.sensor_stamp;
    }
    else {
      resolved.sensor_stamp = 0
    }

    if (msg.received_stamp !== undefined) {
      resolved.received_stamp = msg.received_stamp;
    }
    else {
      resolved.received_stamp = 0
    }

    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = 0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.orientation_valid !== undefined) {
      resolved.orientation_valid = msg.orientation_valid;
    }
    else {
      resolved.orientation_valid = 0
    }

    if (msg.motion_vector_valid !== undefined) {
      resolved.motion_vector_valid = msg.motion_vector_valid;
    }
    else {
      resolved.motion_vector_valid = 0
    }

    if (msg.position_accuracy !== undefined) {
      resolved.position_accuracy = msg.position_accuracy;
    }
    else {
      resolved.position_accuracy = 0.0
    }

    if (msg.orientation_accuracy !== undefined) {
      resolved.orientation_accuracy = msg.orientation_accuracy;
    }
    else {
      resolved.orientation_accuracy = 0.0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseWithCovariance.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseWithCovariance()
    }

    if (msg.motion_vector !== undefined) {
      resolved.motion_vector = geometry_msgs.msg.Vector3.Resolve(msg.motion_vector)
    }
    else {
      resolved.motion_vector = new geometry_msgs.msg.Vector3()
    }

    if (msg.vehicle_heading !== undefined) {
      resolved.vehicle_heading = msg.vehicle_heading;
    }
    else {
      resolved.vehicle_heading = 0.0
    }

    if (msg.motion_heading !== undefined) {
      resolved.motion_heading = msg.motion_heading;
    }
    else {
      resolved.motion_heading = 0.0
    }

    return resolved;
    }
};

// Constants for message
AbsolutePose.Constants = {
  SOURCE_GPS: 1,
  SOURCE_LIGHTHOUSE: 2,
  SOURCE_SENSOR_FUSION: 100,
  FLAG_GPS_RTK: 1,
  FLAG_GPS_RTK_FIXED: 2,
  FLAG_GPS_RTK_FLOAT: 4,
  FLAG_GPS_DEAD_RECKONING: 8,
  FLAG_SENSOR_FUSION_RECENT_ABSOLUTE_POSE: 1,
  FLAG_SENSOR_FUSION_DEAD_RECKONING: 8,
}

module.exports = AbsolutePose;
