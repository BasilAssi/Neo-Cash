import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'transactions_home_page_widget.dart' show TransactionsHomePageWidget;
import 'package:flutter/material.dart';

class TransactionsHomePageModel
    extends FlutterFlowModel<TransactionsHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - isNetworkAvailable] action in transactions_home_page widget.
  bool? isNetworkAvailable;
  // Stores action output result for [Backend Call - API (List Cards)] action in transactions_home_page widget.
  ApiCallResponse? apiResultListCards;
  Completer<ApiCallResponse>? apiRequestCompleter;
  Completer<ApiCallResponse>? apiRequestCompleter2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
