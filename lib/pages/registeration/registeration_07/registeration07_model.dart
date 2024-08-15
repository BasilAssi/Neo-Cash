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
  // State field(s) for PasswordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  // State field(s) for ConfirmTextField widget.
  FocusNode? confirmTextFieldFocusNode;
  TextEditingController? confirmTextFieldTextController;
  late bool confirmTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmTextFieldTextControllerValidator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.
  bool? isNetworkAvailableOutput;
  // Stores action output result for [Backend Call - API (Register a customer)] action in Button widget.
  ApiCallResponse? apiResultCustomerRegister;

  @override
  void initState(BuildContext context) {
    passwordTextFieldVisibility = false;
    confirmTextFieldVisibility = false;
    pinCodeController = TextEditingController();
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
