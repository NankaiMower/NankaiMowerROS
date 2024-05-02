// Auto-generated. Do not edit!

// (in-package mower_map.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapArea = require('../msg/MapArea.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddMowingAreaSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.area = null;
      this.isNavigationArea = null;
    }
    else {
      if (initObj.hasOwnProperty('area')) {
        this.area = initObj.area
      }
      else {
        this.area = new MapArea();
      }
      if (initObj.hasOwnProperty('isNavigationArea')) {
        this.isNavigationArea = initObj.isNavigationArea
      }
      else {
        this.isNavigationArea = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddMowingAreaSrvRequest
    // Serialize message field [area]
    bufferOffset = MapArea.serialize(obj.area, buffer, bufferOffset);
    // Serialize message field [isNavigationArea]
    bufferOffset = _serializer.bool(obj.isNavigationArea, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddMowingAreaSrvRequest
    let len;
    let data = new AddMowingAreaSrvRequest(null);
    // Deserialize message field [area]
    data.area = MapArea.deserialize(buffer, bufferOffset);
    // Deserialize message field [isNavigationArea]
    data.isNavigationArea = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MapArea.getMessageSize(object.area);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_map/AddMowingAreaSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3ef56ffad622c37e65aec1dd5ae39a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MapArea area
    bool isNavigationArea
    
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
    const resolved = new AddMowingAreaSrvRequest(null);
    if (msg.area !== undefined) {
      resolved.area = MapArea.Resolve(msg.area)
    }
    else {
      resolved.area = new MapArea()
    }

    if (msg.isNavigationArea !== undefined) {
      resolved.isNavigationArea = msg.isNavigationArea;
    }
    else {
      resolved.isNavigationArea = false
    }

    return resolved;
    }
};

class AddMowingAreaSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddMowingAreaSrvResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddMowingAreaSrvResponse
    let len;
    let data = new AddMowingAreaSrvResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mower_map/AddMowingAreaSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddMowingAreaSrvResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: AddMowingAreaSrvRequest,
  Response: AddMowingAreaSrvResponse,
  md5sum() { return 'b3ef56ffad622c37e65aec1dd5ae39a7'; },
  datatype() { return 'mower_map/AddMowingAreaSrv'; }
};
