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
