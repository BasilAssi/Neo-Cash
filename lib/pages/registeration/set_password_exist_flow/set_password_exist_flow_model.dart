import '/backend/api_requests/api_calls.dart';
import '/components/otp_session_expired_component/otp_session_expired_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'set_password_exist_flow_widget.dart' show SetPasswordExistFlowWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SetPasswordExistFlowModel
    extends FlutterFlowModel<SetPasswordExistFlowWidget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for PasswordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  String? _passwordTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'l0dw1urg' /* الحقل مطلوب */,
      );
    }

    if (!RegExp('((?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{7,1000})').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'a9l80f02' /* يجب أن تكون كلمة المرور بطول ل... */,
      );
    }
    return null;
  }

  // State field(s) for ConfirmPasswordTextField widget.
  FocusNode? confirmPasswordTextFieldFocusNode;
  TextEditingController? confirmPasswordTextFieldTextController;
  late bool confirmPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextFieldTextControllerValidator;
  String? _confirmPasswordTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        't31v2sxc' /* الحقل مطلوب */,
      );
    }

    if (!RegExp('((?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{7,1000})').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '0hz9033c' /* يجب أن تكون كلمة المرور بطول ل... */,
      );
    }
    return null;
  }

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  String? _pinCodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'w5wdtbjl' /* الحقل مطلوب */,
      );
    }
    if (val.length < 4) {
      return 'Requires 4 characters.';
    }
    return null;
  }

  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  String? _emailTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'f3jdv1tf' /* الحقل مطلوب */,
      );
    }

    return null;
  }

  // Stores action output result for [Custom Action - isValidPIN] action in Button widget.
  String? isValidPINResult1;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.
  bool? isNetworkAvailableOutput1;
  // Stores action output result for [Backend Call - API (Register a customer Device)] action in Button widget.
  ApiCallResponse? apiResultCustomerRegisterDevice1;
  // Stores action output result for [Custom Action - isValidPIN] action in Button widget.
  String? isValidPINResult;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.
  bool? isNetworkAvailableOutput;
  // Stores action output result for [Backend Call - API (Register a customer Device)] action in Button widget.
  ApiCallResponse? apiResultCustomerRegisterDevice;

  @override
  void initState(BuildContext context) {
    passwordTextFieldVisibility = false;
    passwordTextFieldTextControllerValidator =
        _passwordTextFieldTextControllerValidator;
    confirmPasswordTextFieldVisibility = false;
    confirmPasswordTextFieldTextControllerValidator =
        _confirmPasswordTextFieldTextControllerValidator;
    pinCodeController = TextEditingController();
    pinCodeControllerValidator = _pinCodeControllerValidator;
    emailTextFieldTextControllerValidator =
        _emailTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();

    confirmPasswordTextFieldFocusNode?.dispose();
    confirmPasswordTextFieldTextController?.dispose();

    pinCodeController?.dispose();
    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();
  }
}
