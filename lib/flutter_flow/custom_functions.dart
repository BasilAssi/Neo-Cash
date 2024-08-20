import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/custom_auth/auth_util.dart';

String? removeLastCharacter(String? pinCode) {
  // remove last Character from string
  if (pinCode == null || pinCode.isEmpty) {
    return null;
  }
  return pinCode.substring(0, pinCode.length - 1);
}

String? messageId() {
  // generate randdom string  and make it unquie
  String randomString = '';
  var random = math.Random();
  const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  for (var i = 0; i < 6; i++) {
    randomString += chars[random.nextInt(chars.length)];
  }
  String uniqueString =
      'cu-${DateTime.now().millisecondsSinceEpoch}-$randomString';
  return uniqueString;
}

DateTime? calculateAge18Year() {
  final now = DateTime.now();
  final age18 = DateTime(now.year - 18, now.month, now.day);
  return age18;
}

String? formatDate(DateTime? date) {
// Check if the date is null
  if (date == null) return null;

  // Format the DateTime object as dd/MM/yyyy and return the string
  final formatter = DateFormat('dd/MM/yyyy');
  return formatter.format(date);
}

Color? gradientColor(
  Color? color1,
  Color? color2,
) {
  // // i need function that  take two colors and return gradient color
  // if (color1 == null || color2 == null) {
  //   return null;
  // }
  // final hexColor = color2.replaceAll('#', '');
  // final r = int.parse(hexColor.substring(0, 2), radix: 16);
  // final g = int.parse(hexColor.substring(2, 4), radix: 16);
  // final b = int.parse(hexColor.substring(4, 6), radix: 16);
  // final color2Value = Color.fromRGBO(r, g, b, 1.0);
  // return LinearGradient(
  //   colors: [color1, color2Value],
  //   begin: Alignment.topCenter,
  //   end: Alignment.bottomCenter,
  // ).createShader(Rect.fromLTRB(0, 0, 0, 200));
  return color1;
}

String isValidPIN1(
  String pin,
  String language,
) {
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
