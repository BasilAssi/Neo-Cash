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

Future setAuthenticatedUserInfo(dynamic payloadMap) async {
  // Add your function code here!

  // Extract the customer info or set as empty map if null
  final customerInfo = payloadMap['customerInfo'] ?? {};

  // Update the FFAppState with the extracted fields, ensuring non-null values
  FFAppState().updateAuthenticatedUserStruct(
    (e) => e
      ..firstNameAR = customerInfo['firstNameAr'] ?? ''
      ..middleNameAR = customerInfo['middleNameAr'] ?? ''
      ..thirdNameAR = customerInfo['thirdNameAr'] ?? ''
      ..familyNameAR = customerInfo['familyNameAr'] ?? ''
      ..firstName = customerInfo['firstName'] ?? ''
      ..middleName = customerInfo['middleName'] ?? ''
      ..thirdName = customerInfo['thirdName'] ?? ''
      ..familyName = customerInfo['familyName'] ?? ''
      ..emailAddress = customerInfo['emailAddress'] ?? ''
      ..mobileNumber = customerInfo['mobileNumber'] ?? ''
      ..mobileNumber2 = customerInfo['mobileNumber2'] ?? ''
      ..isDeviceRegistered = customerInfo['isDeviceRegistered'] ?? false
      ..idNumber = customerInfo['idNumber'] ?? ''
      ..idType = customerInfo['idType'] ?? ''
      ..birthPlace = customerInfo['birthPlace'] ?? ''
      ..residencyType = customerInfo['residencyType'] ?? '',
  );
}
