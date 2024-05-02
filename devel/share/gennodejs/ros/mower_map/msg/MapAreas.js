// Auto-generated. Do not edit!

// (in-package mower_map.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapArea = require('./MapArea.js');

//-----------------------------------------------------------

class MapAreas {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mapWidth = null;
      this.mapHeight = null;
      this.mapCenterX = null;
      this.mapCenterY = null;
      this.navigationAreas = null;
      this.mowingAreas = null;
    }
    else {
      if (initObj.hasOwnProperty('mapWidth')) {
        this.mapWidth = initObj.mapWidth
      }
      else {
        this.mapWidth = 0.0;
      }
      if (initObj.hasOwnProperty('mapHeight')) {
        this.mapHeight = initObj.mapHeight
      }
      else {
        this.mapHeight = 0.0;
      }
      if (initObj.hasOwnProperty('mapCenterX')) {
        this.mapCenterX = initObj.mapCenterX
      }
      else {
        this.mapCenterX = 0.0;
      }
      if (initObj.hasOwnProperty('mapCenterY')) {
        this.mapCenterY = initObj.mapCenterY
      }
      else {
        this.mapCenterY = 0.0;
      }
      if (initObj.hasOwnProperty('navigationAreas')) {
        this.navigationAreas = initObj.navigationAreas
      }
      else {
        this.navigationAreas = [];
      }
      if (initObj.hasOwnProperty('mowingAreas')) {
        this.mowingAreas = initObj.mowingAreas
      }
      else {
        this.mowingAreas = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapAreas
    // Serialize message field [mapWidth]
    bufferOffset = _serializer.float64(obj.mapWidth, buffer, bufferOffset);
    // Serialize message field [mapHeight]
    bufferOffset = _serializer.float64(obj.mapHeight, buffer, bufferOffset);
    // Serialize message field [mapCenterX]
    bufferOffset = _serializer.float64(obj.mapCenterX, buffer, bufferOffset);
    // Serialize message field [mapCenterY]
    bufferOffset = _serializer.float64(obj.mapCenterY, buffer, bufferOffset);
    // Serialize message field [navigationAreas]
    // Serialize the length for message field [navigationAreas]
    bufferOffset = _serializer.uint32(obj.navigationAreas.length, buffer, bufferOffset);
    obj.navigationAreas.forEach((val) => {
      bufferOffset = MapArea.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [mowingAreas]
    // Serialize the length for message field [mowingAreas]
    bufferOffset = _serializer.uint32(obj.mowingAreas.length, buffer, bufferOffset);
    obj.mowingAreas.forEach((val) => {
      bufferOffset = MapArea.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapAreas
    let len;
    let data = new MapAreas(null);
    // Deserialize message field [mapWidth]
    data.mapWidth = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mapHeight]
    data.mapHeight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mapCenterX]
    data.mapCenterX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mapCenterY]
    data.mapCenterY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [navigationAreas]
    // Deserialize array length for message field [navigationAreas]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.navigationAreas = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.navigationAreas[i] = MapArea.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [mowingAreas]
    // Deserialize array length for message field [mowingAreas]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.mowingAreas = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.mowingAreas[i] = MapArea.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.navigationAreas.forEach((val) => {
      length += MapArea.getMessageSize(val);
    });
    object.mowingAreas.forEach((val) => {
      length += MapArea.getMessageSize(val);
    });
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mower_map/MapAreas';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3c611e824aac319a11694c960ef24a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 mapWidth
    float64 mapHeight
    float64 mapCenterX
    float64 mapCenterY
    mower_map/MapArea[] navigationAreas
    mower_map/MapArea[] mowingAreas
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
    const resolved = new MapAreas(null);
    if (msg.mapWidth !== undefined) {
      resolved.mapWidth = msg.mapWidth;
    }
    else {
      resolved.mapWidth = 0.0
    }

    if (msg.mapHeight !== undefined) {
      resolved.mapHeight = msg.mapHeight;
    }
    else {
      resolved.mapHeight = 0.0
    }

    if (msg.mapCenterX !== undefined) {
      resolved.mapCenterX = msg.mapCenterX;
    }
    else {
      resolved.mapCenterX = 0.0
    }

    if (msg.mapCenterY !== undefined) {
      resolved.mapCenterY = msg.mapCenterY;
    }
    else {
      resolved.mapCenterY = 0.0
    }

    if (msg.navigationAreas !== undefined) {
      resolved.navigationAreas = new Array(msg.navigationAreas.length);
      for (let i = 0; i < resolved.navigationAreas.length; ++i) {
        resolved.navigationAreas[i] = MapArea.Resolve(msg.navigationAreas[i]);
      }
    }
    else {
      resolved.navigationAreas = []
    }

    if (msg.mowingAreas !== undefined) {
      resolved.mowingAreas = new Array(msg.mowingAreas.length);
      for (let i = 0; i < resolved.mowingAreas.length; ++i) {
        resolved.mowingAreas[i] = MapArea.Resolve(msg.mowingAreas[i]);
      }
    }
    else {
      resolved.mowingAreas = []
    }

    return resolved;
    }
};

module.exports = MapAreas;
