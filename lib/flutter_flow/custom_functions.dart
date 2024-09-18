import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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

DateTime? calculateAgeYear(int? age) {
  if (age == null) age = 16;
  final now = DateTime.now();
  final age18 = DateTime(now.year - age, now.month, now.day);
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

DateTime getFirstOfMonth() {
  // returns the first of the month
  return DateTime(DateTime.now().year, DateTime.now().month, 1);
}

String? updateTextfield(String? val) {
  if (val == null || val == null) return '';

  if (val.startsWith('0')) {
    val = val.substring(1);
  }
  return val;
}

String? validatePhoneNumber(
  String? prefix,
  String? mobileNumber,
  String? language,
) {
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

String? getLast4Digits(String? cardNumber) {
  // get Last 4 Digits
  if (cardNumber == null || cardNumber.length < 4) {
    return '';
  }
  return cardNumber.substring(cardNumber.length - 4);
}

String? spliteExpiryDate(String? expiryDate) {
  // take the value as 4 characters  0228 return it as 02/28
  if (expiryDate == null || expiryDate.length != 4) {
    return '';
  }
  final month = expiryDate.substring(0, 2);
  final year = expiryDate.substring(2);
  return '$month/$year';
}

String? addSpaceBtnCardNumber(String? cardNumber) {
  // add space between card number  every 4 characther  401242123226521 must be 4012 5421 2322 6521
  if (cardNumber == null || cardNumber.isEmpty) {
    return '';
  }
  final regex = RegExp(r'.{1,4}');
  return regex.allMatches(cardNumber).map((match) => match.group(0)).join(' ');
}

String? getCardToken(
  String? customerId,
  String? cardExpiryDate,
  String? cardLastFourDigits,
) {
  // return the sum of them
  if (customerId == null ||
      cardExpiryDate == null ||
      cardLastFourDigits == null) {
    return null;
  }
  final sum = customerId + cardExpiryDate + cardLastFourDigits;
  return sum.toString();
}

String? generateFinalEPIN(
  String? pinBlock,
  String? cardNumber,
) {
// Validate inputs
  if (pinBlock == null ||
      pinBlock.length != 16 ||
      cardNumber == null ||
      cardNumber.length != 16) {
    return null; // Handle invalid input
  }

  // Step 1: Replace the first three digits with '0000' and remove the last digit
  String modifiedCardNumber = '0000' + cardNumber.substring(3, 15);

  // Convert the modified card number to a BigInt (as a hexadecimal number)
  BigInt modifiedCardNumberBigInt = BigInt.parse(modifiedCardNumber, radix: 16);

  // Convert the PIN Block to a BigInt (as hexadecimal)
  BigInt pinBlockBigInt = BigInt.parse(pinBlock, radix: 16);

  // Step 2: XOR the modified card number with the PIN Block
  BigInt xorResult = modifiedCardNumberBigInt ^ pinBlockBigInt;

  // Convert the XOR result to a hexadecimal string and pad it to at least 16 characters
  String xorHex = xorResult.toRadixString(16).padLeft(16, '0').toUpperCase();

  // Step 3: Extract the PIN value from digits 2 to 5 of the XOR result
  String finalEPIN = xorHex.substring(2, 6);

  // // Handle case where PIN is less than 4 characters (leading zeros)
  if (finalEPIN.length < 4) {
    finalEPIN = finalEPIN.padLeft(4, '0');
  }

  return finalEPIN;
}

String? dateFromCalculate(DateTypes? dateType) {
  final formatter = DateFormat('dd/MM/yyyy');
  // i need  function that take the enum lastweek , last month , last year based on it return the date from current date  in this dd/MM/yyyy
  DateTime now = DateTime.now();
  switch (dateType) {
    case DateTypes.TODAY:
      return formatter.format(now);
    case DateTypes.LAST_WEEK:
      DateTime lastWeek = now.subtract(Duration(days: 7));
      return formatter.format(lastWeek);
    case DateTypes.LAST_MONTH:
      DateTime lastMonth = DateTime(now.year, now.month - 1, now.day);
      return formatter.format(lastMonth);
    default:
      return '';
  }
}

bool? isIDNumberValid(
  String? idNum,
  String? identityType,
) {
  if (identityType == null || identityType == '') {
    return false;
  }
  if (idNum == null || idNum == '') {
    return false;
  }

  bool isValid = false;

  // Check for PASSPORT type
  if (identityType == 'PASSPORT') {
    if (idNum.length >= 4 && RegExp(r'^[A-Za-z0-9]+$').hasMatch(idNum)) {
      isValid = true;
    }
  }
  // Check for OTHER type
  else {
    // Ensure idNum matches the length constraint
    if (RegExp(r'^\d{5,9}$').hasMatch(idNum)) {
      // Create a new padded idNum with leading zeros if needed
      String paddedIdNum = idNum.padLeft(9, '0');

      // CHECK THE ID NUMBER
      int mone = 0;
      for (int i = 0; i < 9; i++) {
        int incNum = int.parse(paddedIdNum[i]);
        incNum *= (i % 2) + 1;
        if (incNum > 9) {
          incNum -= 9;
        }
        mone += incNum;
      }

      if (mone % 10 == 0) {
        isValid = true;
      }
    }
  }

  return isValid;
}

String? splitURL(String? url) {
  if (url == null || url == '') return '';
  Uri uri = Uri.parse(url);
  String? photoURL = uri.path + (uri.hasQuery ? '?${uri.query}' : '');
  return photoURL;
}

int? pareseStringToInteger(String? str) {
  // parese String To Integer
  if (str == null) {
    return null;
  }
  try {
    return int.parse(str);
  } catch (e) {
    return null;
  }
}
