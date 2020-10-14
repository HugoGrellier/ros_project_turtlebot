
"use strict";

let ScanAngle = require('./ScanAngle.js');
let Sound = require('./Sound.js');
let DigitalOutput = require('./DigitalOutput.js');
let RobotStateEvent = require('./RobotStateEvent.js');
let PowerSystemEvent = require('./PowerSystemEvent.js');
let WheelDropEvent = require('./WheelDropEvent.js');
let KeyboardInput = require('./KeyboardInput.js');
let Led = require('./Led.js');
let ButtonEvent = require('./ButtonEvent.js');
let DockInfraRed = require('./DockInfraRed.js');
let MotorPower = require('./MotorPower.js');
let SensorState = require('./SensorState.js');
let VersionInfo = require('./VersionInfo.js');
let ControllerInfo = require('./ControllerInfo.js');
let BumperEvent = require('./BumperEvent.js');
let ExternalPower = require('./ExternalPower.js');
let DigitalInputEvent = require('./DigitalInputEvent.js');
let CliffEvent = require('./CliffEvent.js');
let AutoDockingActionGoal = require('./AutoDockingActionGoal.js');
let AutoDockingActionResult = require('./AutoDockingActionResult.js');
let AutoDockingResult = require('./AutoDockingResult.js');
let AutoDockingAction = require('./AutoDockingAction.js');
let AutoDockingActionFeedback = require('./AutoDockingActionFeedback.js');
let AutoDockingFeedback = require('./AutoDockingFeedback.js');
let AutoDockingGoal = require('./AutoDockingGoal.js');

module.exports = {
  ScanAngle: ScanAngle,
  Sound: Sound,
  DigitalOutput: DigitalOutput,
  RobotStateEvent: RobotStateEvent,
  PowerSystemEvent: PowerSystemEvent,
  WheelDropEvent: WheelDropEvent,
  KeyboardInput: KeyboardInput,
  Led: Led,
  ButtonEvent: ButtonEvent,
  DockInfraRed: DockInfraRed,
  MotorPower: MotorPower,
  SensorState: SensorState,
  VersionInfo: VersionInfo,
  ControllerInfo: ControllerInfo,
  BumperEvent: BumperEvent,
  ExternalPower: ExternalPower,
  DigitalInputEvent: DigitalInputEvent,
  CliffEvent: CliffEvent,
  AutoDockingActionGoal: AutoDockingActionGoal,
  AutoDockingActionResult: AutoDockingActionResult,
  AutoDockingResult: AutoDockingResult,
  AutoDockingAction: AutoDockingAction,
  AutoDockingActionFeedback: AutoDockingActionFeedback,
  AutoDockingFeedback: AutoDockingFeedback,
  AutoDockingGoal: AutoDockingGoal,
};
