// Auto-generated. Do not edit!

// (in-package xbot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapArea = require('./MapArea.js');

//-----------------------------------------------------------

class Map {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mapWidth = null;
      this.mapHeight = null;
      this.mapCenterX = null;
      this.mapCenterY = null;
      this.navigationAreas = null;
      this.workingArea = null;
      this.dockX = null;
      this.dockY = null;
      this.dockHeading = null;
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
      if (initObj.hasOwnProperty('workingArea')) {
        this.workingArea = initObj.workingArea
      }
      else {
        this.workingArea = [];
      }
      if (initObj.hasOwnProperty('dockX')) {
        this.dockX = initObj.dockX
      }
      else {
        this.dockX = 0.0;
      }
      if (initObj.hasOwnProperty('dockY')) {
        this.dockY = initObj.dockY
      }
      else {
        this.dockY = 0.0;
      }
      if (initObj.hasOwnProperty('dockHeading')) {
        this.dockHeading = initObj.dockHeading
      }
      else {
        this.dockHeading = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Map
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
    // Serialize message field [workingArea]
    // Serialize the length for message field [workingArea]
    bufferOffset = _serializer.uint32(obj.workingArea.length, buffer, bufferOffset);
    obj.workingArea.forEach((val) => {
      bufferOffset = MapArea.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [dockX]
    bufferOffset = _serializer.float64(obj.dockX, buffer, bufferOffset);
    // Serialize message field [dockY]
    bufferOffset = _serializer.float64(obj.dockY, buffer, bufferOffset);
    // Serialize message field [dockHeading]
    bufferOffset = _serializer.float64(obj.dockHeading, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Map
    let len;
    let data = new Map(null);
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
    // Deserialize message field [workingArea]
    // Deserialize array length for message field [workingArea]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.workingArea = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.workingArea[i] = MapArea.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [dockX]
    data.dockX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dockY]
    data.dockY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dockHeading]
    data.dockHeading = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.navigationAreas.forEach((val) => {
      length += MapArea.getMessageSize(val);
    });
    object.workingArea.forEach((val) => {
      length += MapArea.getMessageSize(val);
    });
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xbot_msgs/Map';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0defc0a41c9dfac41eff99d1ae21f375';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 mapWidth
    float64 mapHeight
    float64 mapCenterX
    float64 mapCenterY
    xbot_msgs/MapArea[] navigationAreas
    xbot_msgs/MapArea[] workingArea
    float64 dockX
    float64 dockY
    float64 dockHeading
    
    ================================================================================
    MSG: xbot_msgs/MapArea
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
    const resolved = new Map(null);
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

    if (msg.workingArea !== undefined) {
      resolved.workingArea = new Array(msg.workingArea.length);
      for (let i = 0; i < resolved.workingArea.length; ++i) {
        resolved.workingArea[i] = MapArea.Resolve(msg.workingArea[i]);
      }
    }
    else {
      resolved.workingArea = []
    }

    if (msg.dockX !== undefined) {
      resolved.dockX = msg.dockX;
    }
    else {
      resolved.dockX = 0.0
    }

    if (msg.dockY !== undefined) {
      resolved.dockY = msg.dockY;
    }
    else {
      resolved.dockY = 0.0
    }

    if (msg.dockHeading !== undefined) {
      resolved.dockHeading = msg.dockHeading;
    }
    else {
      resolved.dockHeading = 0.0
    }

    return resolved;
    }
};

module.exports = Map;
