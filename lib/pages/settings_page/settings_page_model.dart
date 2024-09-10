import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'settings_page_widget.dart' show SettingsPageWidget;
import 'package:flutter/material.dart';

class SettingsPageModel extends FlutterFlowModel<SettingsPageWidget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in Row widget.
  bool? isNetworkAvailableOutput;
  // Stores action output result for [Backend Call - API (Send OTP to customer)] action in Row widget.
  ApiCallResponse? apiResultSendOTP;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
