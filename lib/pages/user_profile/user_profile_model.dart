import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - isNetworkAvailable] action in Container widget.
  bool? isNetworkAvailableOutput;
  // Stores action output result for [Backend Call - API (Send OTP to customer)] action in Container widget.
  ApiCallResponse? apiResultSendOTPEmail;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
