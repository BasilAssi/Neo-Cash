import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/single_btn_component/single_btn_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'confirm_forgot_password_widget.dart' show ConfirmForgotPasswordWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ConfirmForgotPasswordModel
    extends FlutterFlowModel<ConfirmForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for newPassTextField widget.
  FocusNode? newPassTextFieldFocusNode;
  TextEditingController? newPassTextFieldTextController;
  late bool newPassTextFieldVisibility;
  String? Function(BuildContext, String?)?
      newPassTextFieldTextControllerValidator;
  String? _newPassTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'kq8nfhqt' /* Field is required */,
      );
    }

    if (!RegExp('((?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{7,1000})').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'cnr9d944' /* يجب أن تكون كلمة المرور بطول ل... */,
      );
    }
    return null;
  }

  // State field(s) for confirmNewPassTextField widget.
  FocusNode? confirmNewPassTextFieldFocusNode;
  TextEditingController? confirmNewPassTextFieldTextController;
  late bool confirmNewPassTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmNewPassTextFieldTextControllerValidator;
  String? _confirmNewPassTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'm2886y5m' /* Field is required */,
      );
    }

    if (!RegExp('((?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{7,1000})').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        's9hilgvk' /* يجب أن تكون كلمة المرور بطول ل... */,
      );
    }
    return null;
  }

  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.
  bool? isNetworkAvailableOutput;
  // Stores action output result for [Backend Call - API (Forgot Password )] action in Button widget.
  ApiCallResponse? apiResultForgotPassword;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.

  bool? isNetworkAvailableOutput1;
  // Stores action output result for [Backend Call - API (Send OTP to customer)] action in Button widget.
  ApiCallResponse? apiResultSendOTPPass;

  @override
  void initState(BuildContext context) {
    newPassTextFieldVisibility = false;
    newPassTextFieldTextControllerValidator =
        _newPassTextFieldTextControllerValidator;
    confirmNewPassTextFieldVisibility = false;
    confirmNewPassTextFieldTextControllerValidator =
        _confirmNewPassTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    newPassTextFieldFocusNode?.dispose();
    newPassTextFieldTextController?.dispose();

    confirmNewPassTextFieldFocusNode?.dispose();
    confirmNewPassTextFieldTextController?.dispose();
  }
}
