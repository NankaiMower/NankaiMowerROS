// Auto-generated. Do not edit!

// (in-package mower_map.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let MapArea = require('../msg/MapArea.js');

//-----------------------------------------------------------

class GetMowingAreaSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMowingAreaSrvRequest
    // Serialize message field [index]
    bufferOffset = _serializer.uint32(obj.index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMowingAreaSrvRequest
    let len;
    let data = new GetMowingAreaSrvRequest(null);
    // Deserialize message field [index]
    data.index = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_map/GetMowingAreaSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad7b979103dbd563a352ef5270716728';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 index
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMowingAreaSrvRequest(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    return resolved;
    }
};

class GetMowingAreaSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.area = null;
    }
    else {
      if (initObj.hasOwnProperty('area')) {
        this.area = initObj.area
      }
      else {
        this.area = new MapArea();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMowingAreaSrvResponse
    // Serialize message field [area]
    bufferOffset = MapArea.serialize(obj.area, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMowingAreaSrvResponse
    let len;
    let data = new GetMowingAreaSrvResponse(null);
    // Deserialize message field [area]
    data.area = MapArea.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MapArea.getMessageSize(object.area);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_map/GetMowingAreaSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c805694b8e8efd628f1a2c5e57d287b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MapArea area
    
    ================================================================================
    MSG: mower_map/MapArea
    string name
    geometry_msgs/Polygon area
    geometry_msgs/Polygon[] obstacles
    
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
    const resolved = new GetMowingAreaSrvResponse(null);
    if (msg.area !== undefined) {
      resolved.area = MapArea.Resolve(msg.area)
    }
    else {
      resolved.area = new MapArea()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMowingAreaSrvRequest,
  Response: GetMowingAreaSrvResponse,
  md5sum() { return '01fc7e5fc49bba1c034cae41a19bf174'; },
  datatype() { return 'mower_map/GetMowingAreaSrv'; }
};
