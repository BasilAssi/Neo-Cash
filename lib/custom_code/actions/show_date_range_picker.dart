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

import 'package:custom_date_range_picker/custom_date_range_picker.dart';

Future showDateRangePicker() async {
  // i need action that show date Range Pincker
  return await showDialog(
    context: context,
    builder: (BuildContext context) {
      return CustomDateRangePicker(
        initialFirstDate: DateTime.now(),
        initialLastDate: DateTime.now().add(Duration(days: 7)),
        firstDate: DateTime(2021),
        lastDate: DateTime(2025),
        onConfirm: (firstDate, lastDate) {
          print('Selected date range: $firstDate - $lastDate');
        },
      );
    },
  );
}
