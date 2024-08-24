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
  // position = position.clamp(0.0, 1.0);

  // // Define the gradient colors
  // List<Color> colors = [
  //   Color(0xFFF05346), // #F05346
  //   Color(0xFFF36B23), // #F36B23
  //   Color(0xFFFA7A48), // #FA7A48
  // ];

  // // Define the gradient stops
  // List<double> stops = [0.0, 0.15, 0.54];

  // // Find the color at the given position
  // for (int i = 0; i < stops.length - 1; i++) {
  //   if (position >= stops[i] && position <= stops[i + 1]) {
  //     double localPosition = (position - stops[i]) / (stops[i + 1] - stops[i]);
  //     return Color.lerp(colors[i], colors[i + 1], localPosition)!;
  //   }
  // }

  // Return the last color if position is at the end of the gradient
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

String? maskMobileNumber(
  String? mobileNumber,
  String language,
) {
  if (mobileNumber == null || mobileNumber.isEmpty) {
    return '';
  }

  if (mobileNumber.length <= 3) {
    return mobileNumber;
  }

  int visibleDigits = 3;
  String maskedSection = '*' * (mobileNumber.length - visibleDigits);

  String visibleSection =
      mobileNumber.substring(mobileNumber.length - visibleDigits);
  if (language == 'en') {
    return maskedSection + visibleSection;
  }
  return visibleSection + maskedSection;
}

String? updateTextfield(String? val) {
  if (val == null || val == null) return '';

  if (val.startsWith('0')) {
    val = val.substring(1);
  }
  return val;
}
