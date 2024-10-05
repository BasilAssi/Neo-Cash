// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
import 'package:convert/convert.dart'; // Import the convert package to handle hex encoding

// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String?> calculateHmacSHA512(
  String? concatenatedValues,
  String? nonce,
) async {
  // Add your function code here!

  String? apiSecretKey =
      '8309E831A3C7F0B657C60BD21B1CDF3BA6276B4B05A89136866466E045BCC1AC$nonce';
  if (concatenatedValues == null) return null;
  var hmacKey = Uint8List.fromList(
      md5.convert(utf8.encode(apiSecretKey)).bytes); // Apply MD5 encoding
  var hmac = Hmac(sha512, hmacKey); // Create HMAC with SHA512
  var digest = hmac.convert(utf8.encode(concatenatedValues));

  // Step 6: Convert the HMAC result to uppercase hexadecimal (base 16) string
  return hex.encode(digest.bytes).toUpperCase();
}
