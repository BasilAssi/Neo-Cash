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
  // State field(s) for confirmNewPassTextField widget.
  FocusNode? confirmNewPassTextFieldFocusNode;
  TextEditingController? confirmNewPassTextFieldTextController;
  late bool confirmNewPassTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmNewPassTextFieldTextControllerValidator;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.
  bool? isNetworkAvailableOutput;
  // Stores action output result for [Backend Call - API (Forgot Password )] action in Button widget.
  ApiCallResponse? apiResultForgotPassword;

  @override
  void initState(BuildContext context) {
    newPassTextFieldVisibility = false;
    confirmNewPassTextFieldVisibility = false;
  }

  @override
  void dispose() {
    newPassTextFieldFocusNode?.dispose();
    newPassTextFieldTextController?.dispose();

    confirmNewPassTextFieldFocusNode?.dispose();
    confirmNewPassTextFieldTextController?.dispose();
  }
}
