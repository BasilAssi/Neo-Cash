// Automatic FlutterFlow imports
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

Future setDeviceInfo() async {
  // Add your function code here!

  final deviceInfo = DeviceInfoPlugin();
  final appState = FFAppState(); // Access the app state

  appState.deviceInformation.os = Platform.isIOS ? 'iOS' : 'Android';

  if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    appState.deviceInformation.deviceName = androidInfo.model;
    appState.deviceInformation.brandName = androidInfo.brand;
    appState.deviceInformation.serialNumber = androidInfo.androidId;
  } else if (Platform.isIOS) {
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;

    // Update the Customer object in the app state
    appState.deviceInformation.deviceName = iosInfo.name;
    appState.deviceInformation.brandName = iosInfo.model;
    appState.deviceInformation.serialNumber = iosInfo
        .identifierForVendor; // Identifier for vendor used as serial number
  }
}
