import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'confirm_forgot_password_widget.dart' show ConfirmForgotPasswordWidget;
import 'package:flutter/material.dart';

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
