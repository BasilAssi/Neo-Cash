// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart' as functions; // Imports custom functions
import 'package:flutter/material.dart';
import 'package:custom_date_range_picker/custom_date_range_picker.dart';

// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future showDateRangePickerAction(
  BuildContext context,
  Color? backgroundColor,
  Color? primaryColor,
  Future Function()? action,
  Future Function()? closeAction,
) async {
  // Add your function code here!
  showCustomDateRangePicker(
    context,
    dismissible: true,
    minimumDate: DateTime(1972),
    maximumDate: DateTime.now().add(const Duration(days: 30)),
    startDate: DateTime.now().subtract(const Duration(days: 14)),
    endDate: DateTime.now().subtract(const Duration(days: 7)),
    backgroundColor: backgroundColor ?? FlutterFlowTheme.of(context).primaryBackground,
    primaryColor: primaryColor ?? FlutterFlowTheme.of(context).primary,
    onApplyClick: (start, end) async{
      print('sdad');
      FFAppState().updateFilterTransactionsStruct(
            (e) => e
          ..dateFrom = functions.formatDate(start)
          ..dateTo =functions.formatDate(end)
      );


      if(action != null){
        await action();
      }
    },
    onCancelClick: () async {
      if(closeAction != null){
        await closeAction();
      }
    },
  );
}
