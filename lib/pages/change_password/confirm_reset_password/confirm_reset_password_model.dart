import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'confirm_reset_password_widget.dart' show ConfirmResetPasswordWidget;
import 'package:flutter/material.dart';

class ConfirmResetPasswordModel
    extends FlutterFlowModel<ConfirmResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for oldPassTextField widget.
  FocusNode? oldPassTextFieldFocusNode;
  TextEditingController? oldPassTextFieldTextController;
  late bool oldPassTextFieldVisibility;
  String? Function(BuildContext, String?)?
      oldPassTextFieldTextControllerValidator;
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
  // Stores action output result for [Backend Call - API (Change Password)] action in Button widget.
  ApiCallResponse? apiResultChangePassword;

  @override
  void initState(BuildContext context) {
    oldPassTextFieldVisibility = false;
    newPassTextFieldVisibility = false;
    confirmNewPassTextFieldVisibility = false;
  }

  @override
  void dispose() {
    oldPassTextFieldFocusNode?.dispose();
    oldPassTextFieldTextController?.dispose();

    newPassTextFieldFocusNode?.dispose();
    newPassTextFieldTextController?.dispose();

    confirmNewPassTextFieldFocusNode?.dispose();
    confirmNewPassTextFieldTextController?.dispose();
  }
}
