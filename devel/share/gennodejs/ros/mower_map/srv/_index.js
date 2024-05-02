
"use strict";

let AppendMapSrv = require('./AppendMapSrv.js')
let ConvertToNavigationAreaSrv = require('./ConvertToNavigationAreaSrv.js')
let ClearNavPointSrv = require('./ClearNavPointSrv.js')
let ClearMapSrv = require('./ClearMapSrv.js')
let GetDockingPointSrv = require('./GetDockingPointSrv.js')
let SetNavPointSrv = require('./SetNavPointSrv.js')
let AddMowingAreaSrv = require('./AddMowingAreaSrv.js')
let GetMowingAreaSrv = require('./GetMowingAreaSrv.js')
let SetDockingPointSrv = require('./SetDockingPointSrv.js')
let DeleteMowingAreaSrv = require('./DeleteMowingAreaSrv.js')

module.exports = {
  AppendMapSrv: AppendMapSrv,
  ConvertToNavigationAreaSrv: ConvertToNavigationAreaSrv,
  ClearNavPointSrv: ClearNavPointSrv,
  ClearMapSrv: ClearMapSrv,
  GetDockingPointSrv: GetDockingPointSrv,
  SetNavPointSrv: SetNavPointSrv,
  AddMowingAreaSrv: AddMowingAreaSrv,
  GetMowingAreaSrv: GetMowingAreaSrv,
  SetDockingPointSrv: SetDockingPointSrv,
  DeleteMowingAreaSrv: DeleteMowingAreaSrv,
};
