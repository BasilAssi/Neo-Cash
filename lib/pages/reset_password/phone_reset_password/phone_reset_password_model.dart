import '/flutter_flow/flutter_flow_util.dart';
import 'phone_reset_password_widget.dart' show PhoneResetPasswordWidget;
import 'package:flutter/material.dart';

class PhoneResetPasswordModel
    extends FlutterFlowModel<PhoneResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for FirstNameTextField widget.
  FocusNode? firstNameTextFieldFocusNode;
  TextEditingController? firstNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      firstNameTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firstNameTextFieldFocusNode?.dispose();
    firstNameTextFieldTextController?.dispose();
  }
}
