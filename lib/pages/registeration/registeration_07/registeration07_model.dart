import '/flutter_flow/flutter_flow_util.dart';
import 'registeration07_widget.dart' show Registeration07Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Registeration07Model extends FlutterFlowModel<Registeration07Widget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

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
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

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

    expandableExpandableController.dispose();
    pinCodeController?.dispose();
  }
}
