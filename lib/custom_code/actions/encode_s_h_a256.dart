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

Future<String?> encodeSHA256(String? str) async {
  try {
    List<int> bytes = utf8.encode(str);
    Digest digest = sha256.convert(bytes);
    return base64.encode(digest.bytes).trim();
  } catch (e) {
    print(e);
    return null;
  }
}
