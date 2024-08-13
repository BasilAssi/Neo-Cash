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
  // State field(s) for FirstNameTextField widget.
  FocusNode? firstNameTextFieldFocusNode1;
  TextEditingController? firstNameTextFieldTextController1;
  late bool firstNameTextFieldVisibility1;
  String? Function(BuildContext, String?)?
      firstNameTextFieldTextController1Validator;
  // State field(s) for FirstNameTextField widget.
  FocusNode? firstNameTextFieldFocusNode2;
  TextEditingController? firstNameTextFieldTextController2;
  late bool firstNameTextFieldVisibility2;
  String? Function(BuildContext, String?)?
      firstNameTextFieldTextController2Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    firstNameTextFieldVisibility1 = false;
    firstNameTextFieldVisibility2 = false;
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    firstNameTextFieldFocusNode1?.dispose();
    firstNameTextFieldTextController1?.dispose();

    firstNameTextFieldFocusNode2?.dispose();
    firstNameTextFieldTextController2?.dispose();

    expandableExpandableController.dispose();
    pinCodeController?.dispose();
  }
}
