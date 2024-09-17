import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'otp_session_expired_component_widget.dart'
    show OtpSessionExpiredComponentWidget;
import 'package:flutter/material.dart';

class OtpSessionExpiredComponentModel
    extends FlutterFlowModel<OtpSessionExpiredComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.
  bool? isNetworkAvaiableOutPut;
  // Stores action output result for [Backend Call - API (Send OTP to customer)] action in Button widget.
  ApiCallResponse? apiResultSendOTPSelfReg;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
