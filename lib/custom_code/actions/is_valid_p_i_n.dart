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

Future<String> isValidPIN(
  String pin,
  String language,
) async {
  if (pin.length != 4) {
    return language == 'ar'
        ? 'يجب أن يتكون الرمز السري من 4 أرقام فقط.'
        : 'PIN must be exactly 4 digits long.';
  }

  // Check for full repetition (e.g., 1111, 2222, 3333)
  if (pin[0] == pin[1] && pin[1] == pin[2] && pin[2] == pin[3]) {
    return language == 'ar'
        ? 'يجب ألا يحتوي الرمز السري على نفس الرقم مكرر أربع مرات.'
        : 'PIN should not contain the same digit repeated four times.';
  }

  // Check for full ascending or descending sequences (e.g., 1234, 4321)
  if ((int.parse(pin[1]) == int.parse(pin[0]) + 1 &&
          int.parse(pin[2]) == int.parse(pin[1]) + 1 &&
          int.parse(pin[3]) == int.parse(pin[2]) + 1) ||
      (int.parse(pin[1]) == int.parse(pin[0]) - 1 &&
          int.parse(pin[2]) == int.parse(pin[1]) - 1 &&
          int.parse(pin[3]) == int.parse(pin[2]) - 1)) {
    return language == 'ar'
        ? 'يجب ألا يحتوي الرمز السري على أرقام تصاعدية أو تنازلية متتالية.'
        : 'PIN should not contain fully consecutive ascending or descending digits.';
  }

  return 'true';
}
