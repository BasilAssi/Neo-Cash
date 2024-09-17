import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/disable_biometric_component/disable_biometric_component_widget.dart';
import '/components/enable_biometric_component/enable_biometric_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'settings_page_widget.dart' show SettingsPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

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
