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

Future showDateRangePickerAction(BuildContext context) async {
  // show Date Range picker
  await showCustomDateRangePicker(
    context,
    dismissible: true,
    minimumDate: DateTime.now().subtract(const Duration(days: 30)),
    maximumDate: DateTime.now().add(const Duration(days: 30)),
    startDate: DateTime.now().subtract(const Duration(days: 30)),
    endDate: DateTime.now().subtract(const Duration(days: 30)),
    backgroundColor: Colors.white,
    primaryColor: Colors.green,
    onApplyClick: (start, end) {
      //pickedRange = DateTimeRange(start: start, end: end);
    },
    onCancelClick: () {
      context.pop();
    },
  );
}
