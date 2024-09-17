import '/backend/api_requests/api_calls.dart';
import '/components/settings_change_photo/settings_change_photo_widget.dart';
import '/components/update_email_component/update_email_component_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

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
