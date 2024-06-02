// Auto-generated. Do not edit!

// (in-package slic3r_coverage_planner.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let Path = require('../msg/Path.js');

//-----------------------------------------------------------

class PlanPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fill_type = null;
      this.angle = null;
      this.distance = null;
      this.outer_offset = null;
      this.outline_count = null;
      this.outline = null;
      this.holes = null;
    }
    else {
      if (initObj.hasOwnProperty('fill_type')) {
        this.fill_type = initObj.fill_type
      }
      else {
        this.fill_type = 0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('outer_offset')) {
        this.outer_offset = initObj.outer_offset
      }
      else {
        this.outer_offset = 0.0;
      }
      if (initObj.hasOwnProperty('outline_count')) {
        this.outline_count = initObj.outline_count
      }
      else {
        this.outline_count = 0;
      }
      if (initObj.hasOwnProperty('outline')) {
        this.outline = initObj.outline
      }
      else {
        this.outline = new geometry_msgs.msg.Polygon();
      }
      if (initObj.hasOwnProperty('holes')) {
        this.holes = initObj.holes
      }
      else {
        this.holes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanPathRequest
    // Serialize message field [fill_type]
    bufferOffset = _serializer.uint8(obj.fill_type, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float64(obj.angle, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [outer_offset]
    bufferOffset = _serializer.float64(obj.outer_offset, buffer, bufferOffset);
    // Serialize message field [outline_count]
    bufferOffset = _serializer.uint8(obj.outline_count, buffer, bufferOffset);
    // Serialize message field [outline]
    bufferOffset = geometry_msgs.msg.Polygon.serialize(obj.outline, buffer, bufferOffset);
    // Serialize message field [holes]
    // Serialize the length for message field [holes]
    bufferOffset = _serializer.uint32(obj.holes.length, buffer, bufferOffset);
    obj.holes.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Polygon.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanPathRequest
    let len;
    let data = new PlanPathRequest(null);
    // Deserialize message field [fill_type]
    data.fill_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [outer_offset]
    data.outer_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [outline_count]
    data.outline_count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [outline]
    data.outline = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset);
    // Deserialize message field [holes]
    // Deserialize array length for message field [holes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.holes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.holes[i] = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.Polygon.getMessageSize(object.outline);
    object.holes.forEach((val) => {
      length += geometry_msgs.msg.Polygon.getMessageSize(val);
    });
    return length + 30;
  }

  static datatype() {
    // Returns string type for a service object
    return 'slic3r_coverage_planner/PlanPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50517efef90e30ac7572bd9614601788';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FILL_LINEAR=0
    uint8 FILL_CONCENTRIC=1
    uint8 fill_type
    float64 angle
    float64 distance
    float64 outer_offset
    uint8 outline_count
    geometry_msgs/Polygon outline
    geometry_msgs/Polygon[] holes
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanPathRequest(null);
    if (msg.fill_type !== undefined) {
      resolved.fill_type = msg.fill_type;
    }
    else {
      resolved.fill_type = 0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.outer_offset !== undefined) {
      resolved.outer_offset = msg.outer_offset;
    }
    else {
      resolved.outer_offset = 0.0
    }

    if (msg.outline_count !== undefined) {
      resolved.outline_count = msg.outline_count;
    }
    else {
      resolved.outline_count = 0
    }

    if (msg.outline !== undefined) {
      resolved.outline = geometry_msgs.msg.Polygon.Resolve(msg.outline)
    }
    else {
      resolved.outline = new geometry_msgs.msg.Polygon()
    }

    if (msg.holes !== undefined) {
      resolved.holes = new Array(msg.holes.length);
      for (let i = 0; i < resolved.holes.length; ++i) {
        resolved.holes[i] = geometry_msgs.msg.Polygon.Resolve(msg.holes[i]);
      }
    }
    else {
      resolved.holes = []
    }

    return resolved;
    }
};

// Constants for message
PlanPathRequest.Constants = {
  FILL_LINEAR: 0,
  FILL_CONCENTRIC: 1,
}

class PlanPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.paths = null;
    }
    else {
      if (initObj.hasOwnProperty('paths')) {
        this.paths = initObj.paths
      }
      else {
        this.paths = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanPathResponse
    // Serialize message field [paths]
    // Serialize the length for message field [paths]
    bufferOffset = _serializer.uint32(obj.paths.length, buffer, bufferOffset);
    obj.paths.forEach((val) => {
      bufferOffset = Path.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanPathResponse
    let len;
    let data = new PlanPathResponse(null);
    // Deserialize message field [paths]
    // Deserialize array length for message field [paths]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.paths = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.paths[i] = Path.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.paths.forEach((val) => {
      length += Path.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'slic3r_coverage_planner/PlanPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '581fb87ba33bdeb36f0d801b4d1d1525';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Path[] paths
    
    ================================================================================
    MSG: slic3r_coverage_planner/Path
    uint8 is_outline
    nav_msgs/Path path
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
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
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanPathResponse(null);
    if (msg.paths !== undefined) {
      resolved.paths = new Array(msg.paths.length);
      for (let i = 0; i < resolved.paths.length; ++i) {
        resolved.paths[i] = Path.Resolve(msg.paths[i]);
      }
    }
    else {
      resolved.paths = []
    }

    return resolved;
    }
};

module.exports = {
  Request: PlanPathRequest,
  Response: PlanPathResponse,
  md5sum() { return '3c4028e4b5701ed40697e69000eb7d4e'; },
  datatype() { return 'slic3r_coverage_planner/PlanPath'; }
};
