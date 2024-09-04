// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

import 'package:device_info/device_info.dart';
import 'dart:io';
import 'package:local_auth/local_auth.dart';
import 'package:device_friendly_name/device_friendly_name.dart';



Future setDeviceInfo() async {
  final deviceInfo = DeviceInfoPlugin();
  final appState = FFAppState(); // Access the app state
  final _deviceFriendlyNamePlugin = DeviceFriendlyName();
  final deviceName = await _deviceFriendlyNamePlugin.getDeviceFriendlyName() ?? 'Unknown';
  // Check for biometric support
  final LocalAuthentication auth = LocalAuthentication();
  bool isBiometricSupported = await auth.isDeviceSupported();
  bool canCheckBiometrics = await auth.canCheckBiometrics;
  appState.deviceInformation.biometricSupported =
      isBiometricSupported && canCheckBiometrics ? 'true' : 'false';
  appState.deviceInformation.osName = Platform.isIOS ? 'iOS' : 'Android';
  appState.deviceInformation.name = deviceName ?? 'Unknown';
  if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    appState.deviceInformation.serial = androidInfo.androidId;
    // appState.deviceInformation.name = androidInfo.model;
    appState.deviceInformation.brandName = androidInfo.brand;
    appState.deviceInformation.brandVersion = androidInfo.version.release;
    appState.deviceInformation.osVersion = androidInfo.version.release;
    ;
  } else if (Platform.isIOS) {
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    appState.deviceInformation.serial = iosInfo
        .identifierForVendor; // Identifier for vendor used as serial number
    // appState.deviceInformation.name = iosInfo.name;
    appState.deviceInformation.brandName = iosInfo.systemName;
    appState.deviceInformation.brandVersion = iosInfo.model;
    appState.deviceInformation.osVersion = iosInfo.systemVersion;
  }
}
