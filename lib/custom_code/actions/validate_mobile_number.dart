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

Future<String> validateMobileNumber(
  String? prefix,
  String? mobileNumber,
  String? language,
) async {
  // Add your function code here!
  if (mobileNumber == null || mobileNumber == '')
    return language == 'ar'
        ? 'رقم الموبايل مطلوب'
        : 'Phone number is required.';

  if (prefix == '970') {
    // Regex for validating mobile number 970
    final regex1 = RegExp(r'^(59|56)\d{7}$');
    if (!regex1.hasMatch(mobileNumber)) {
      return language == 'ar'
          ? 'الرجاء إدخال رقم موبايل صالح يبدأ بـ 59 أو 56 ويتكون من 7 أرقام بعد ذلك.'
          : 'Please enter a valid mobile number starting with 59 or 56 and containing 7 digits after that.';
    }
  }

  if (prefix == '972') {
    // Regex for validating mobile number 972
    final regex2 = RegExp(r'^(50|59|56)\d{7}$');

    if (!regex2.hasMatch(mobileNumber)) {
      return language == 'ar'
          ? 'الرجاء إدخال رقم موبايل صالح يبدأ بـ 5 ويتكون من 8 أرقام بعد ذلك.'
          : 'Please enter a valid mobile number starting with 5 and containing 8 digits after that.';
    }
  }
  return 'true';
}
