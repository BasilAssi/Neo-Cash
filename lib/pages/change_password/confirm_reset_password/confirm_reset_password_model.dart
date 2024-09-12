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
  String? _newPassTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'pu3jza3e' /* Field is required */,
      );
    }

    if (!RegExp('((?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{7,1000})').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '5jznvy9c' /* يجب أن تكون كلمة المرور بطول ل... */,
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
        'cta50rh5' /* Field is required */,
      );
    }

    if (!RegExp('((?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{7,1000})').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'vu3icv7j' /* يجب أن تكون كلمة المرور بطول ل... */,
      );
    }
    return null;
  }

  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.
  bool? isNetworkAvailableOutput;
  // Stores action output result for [Backend Call - API (Change Password)] action in Button widget.
  ApiCallResponse? apiResultChangePassword;

  @override
  void initState(BuildContext context) {
    oldPassTextFieldVisibility = false;
    newPassTextFieldVisibility = false;
    newPassTextFieldTextControllerValidator =
        _newPassTextFieldTextControllerValidator;
    confirmNewPassTextFieldVisibility = false;
    confirmNewPassTextFieldTextControllerValidator =
        _confirmNewPassTextFieldTextControllerValidator;
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
