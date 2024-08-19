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
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

Future<dynamic> parseJWT(String? token) async {
  // Add your function code here!

  // Split the token by periods (.)
  final parts = token.split('.');

  if (parts.length != 3) {
    throw Exception('Invalid token format');
  }

  // Decode the base64Url-encoded payload part of the JWT
  final payload = base64Url.normalize(parts[1]);
  final decodedJson = utf8.decode(base64Url.decode(payload));

  // Convert the decoded string to a JSON object
  final payloadMap = json.decode(decodedJson) as Map<String, dynamic>;
  print(payloadMap);
  return payloadMap;
}
