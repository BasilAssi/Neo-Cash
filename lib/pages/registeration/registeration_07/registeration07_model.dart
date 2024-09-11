import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'registeration07_widget.dart' show Registeration07Widget;
import 'package:flutter/material.dart';

class Registeration07Model extends FlutterFlowModel<Registeration07Widget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  String? _emailTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tt0swmgt' /* الحقل مطلوب */,
      );
    }

    if (val.length > 100) {
      return FFLocalizations.of(context).getText(
        'kqhv55n9' /* يجب ألا يتجاوز النص 100 حرفًا. */,
      );
    }
    if (!RegExp('^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'qbk4zj7i' /* الرجاء إدخال بريد إلكتروني صحي... */,
      );
    }
    return null;
  }

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
        'e0zfluii' /* الحقل مطلوب */,
      );
    }

    if (!RegExp('((?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{7,1000})').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '6q1dfoo5' /* يجب أن تكون كلمة المرور بطول ل... */,
      );
    }
    return null;
  }

  // State field(s) for ConfirmTextField widget.
  FocusNode? confirmTextFieldFocusNode;
  TextEditingController? confirmTextFieldTextController;
  late bool confirmTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmTextFieldTextControllerValidator;
  String? _confirmTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8693qu5v' /* الحقل مطلوب */,
      );
    }

    if (!RegExp('((?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{7,1000})').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'eu1pfxnv' /* يجب أن تكون كلمة المرور بطول ل... */,
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
        'eggopym5' /* الحقل مطلوب */,
      );
    }
    if (!RegExp(r'^\d{4}$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'onlyNumbers' /* The PIN must be exactly 4 digits long and contain only numbers. */,
      );
    }
    if (val.length < 4) {
      return FFLocalizations.of(context).getText(
        'Requires4Characters' /*  يتطلب اربع خانات*/,
      );
    }




    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Custom Action - isValidPIN] action in Button widget.
  String? isValidPINResult;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.
  bool? isNetworkAvailableOutput;
  // Stores action output result for [Backend Call - API (Register a customer)] action in Button widget.
  ApiCallResponse? apiResultCustomerRegister;

  @override
  void initState(BuildContext context) {
    emailTextFieldTextControllerValidator =
        _emailTextFieldTextControllerValidator;
    passwordTextFieldVisibility = false;
    passwordTextFieldTextControllerValidator =
        _passwordTextFieldTextControllerValidator;
    confirmTextFieldVisibility = false;
    confirmTextFieldTextControllerValidator =
        _confirmTextFieldTextControllerValidator;
    pinCodeController = TextEditingController();
    pinCodeControllerValidator = _pinCodeControllerValidator;
  }

  @override
  void dispose() {
    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();

    confirmTextFieldFocusNode?.dispose();
    confirmTextFieldTextController?.dispose();

    pinCodeController?.dispose();
  }
}
