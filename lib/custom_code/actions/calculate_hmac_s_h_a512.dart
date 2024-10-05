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
import 'dart:typed_data';
import 'package:crypto/crypto.dart';

Future<String?> calculateHmacSHA512(String? concatenatedValues) async {
  // Add your function code here!
  String? apiSecretKey = 'aaa';
  if (concatenatedValues == null) return null;
  var hmac = Hmac(sha512, utf8.encode(apiSecretKey)); // Create HMAC with SHA512
  var digest = hmac.convert(utf8.encode(concatenatedValues));

  // Step 6: Convert the result to a hexadecimal string and return it (in lowercase)
  return digest.toString().toLowerCase();
}
