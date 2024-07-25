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
//
// import 'package:device_info/device_info.dart';
// import 'dart:io';
//
// Future setDeviceInfo() async {
//   // Add your function code here!
//
//   final deviceInfo = DeviceInfoPlugin();
//   final appState = FFAppState(); // Access the app state
//
//   if (Platform.isAndroid) {
//     AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
//
//     appState.Customer.deviceName = androidInfo.model;
//     appState.Customer.brandName = androidInfo.brand;
//     appState.Customer.serialNumber = androidInfo.androidId;
//     var infoMap = {
//       //  'isAndroid?': Platform.isAndroid,
//       'serialNumber': androidInfo
//           .androidId, // Android doesn't have a serial number, but has an Android ID
//       'deviceName': androidInfo.model,
//       'brandName': androidInfo.brand,
//     };
//
//     return jsonEncode(infoMap); // Convert infoMap to a JSON string
//   } else if (Platform.isIOS) {
//     IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
//
//     // Update the Customer object in the app state
//     // appState.Customer.deviceName = iosInfo.name;
//     // appState.Customer.brandName = iosInfo.model;
//     // appState.Customer.serialNumber = iosInfo
//         .identifierForVendor; // Identifier for vendor used as serial number
//
//     var infoMap = {
//       // 'isIOS?': Platform.isIOS,
//       'serialNumber': iosInfo
//           .identifierForVendor, // iOS doesn't provide a serial number, but has an identifier for vendor
//       'deviceName': iosInfo.name,
//       'brandName': iosInfo.model,
//     };
//
//     return jsonEncode(infoMap); // Convert infoMap to a JSON string
//   }
//
//   return jsonEncode({'error': 'Not supported on this platform'});
// }
