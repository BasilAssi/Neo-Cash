import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registeration01_widget.dart' show Registeration01Widget;
import 'package:flutter/material.dart';

class Registeration01Model extends FlutterFlowModel<Registeration01Widget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for FirstNameTextField widget.
  FocusNode? firstNameTextFieldFocusNode1;
  TextEditingController? firstNameTextFieldTextController1;
  String? Function(BuildContext, String?)?
      firstNameTextFieldTextController1Validator;
  // State field(s) for FamilyNameTextField widget.
  FocusNode? familyNameTextFieldFocusNode;
  TextEditingController? familyNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      familyNameTextFieldTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // State field(s) for FirstNameTextField widget.
  FocusNode? firstNameTextFieldFocusNode2;
  TextEditingController? firstNameTextFieldTextController2;
  late bool firstNameTextFieldVisibility1;
  String? Function(BuildContext, String?)?
      firstNameTextFieldTextController2Validator;
  // State field(s) for FirstNameTextField widget.
  FocusNode? firstNameTextFieldFocusNode3;
  TextEditingController? firstNameTextFieldTextController3;
  late bool firstNameTextFieldVisibility2;
  String? Function(BuildContext, String?)?
      firstNameTextFieldTextController3Validator;

  @override
  void initState(BuildContext context) {
    firstNameTextFieldVisibility1 = false;
    firstNameTextFieldVisibility2 = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameTextFieldFocusNode1?.dispose();
    firstNameTextFieldTextController1?.dispose();

    familyNameTextFieldFocusNode?.dispose();
    familyNameTextFieldTextController?.dispose();

    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    firstNameTextFieldFocusNode2?.dispose();
    firstNameTextFieldTextController2?.dispose();

    firstNameTextFieldFocusNode3?.dispose();
    firstNameTextFieldTextController3?.dispose();
  }
}
