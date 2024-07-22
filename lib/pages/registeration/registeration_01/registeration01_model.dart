import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registeration01_widget.dart' show Registeration01Widget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registeration01Model extends FlutterFlowModel<Registeration01Widget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for FirstNameTextField widget.
  FocusNode? firstNameTextFieldFocusNode;
  TextEditingController? firstNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      firstNameTextFieldTextControllerValidator;
  // State field(s) for FatherNameTextField widget.
  FocusNode? fatherNameTextFieldFocusNode;
  TextEditingController? fatherNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      fatherNameTextFieldTextControllerValidator;
  // State field(s) for FamilyNameTextField widget.
  FocusNode? familyNameTextFieldFocusNode;
  TextEditingController? familyNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      familyNameTextFieldTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameTextFieldFocusNode?.dispose();
    firstNameTextFieldTextController?.dispose();

    fatherNameTextFieldFocusNode?.dispose();
    fatherNameTextFieldTextController?.dispose();

    familyNameTextFieldFocusNode?.dispose();
    familyNameTextFieldTextController?.dispose();
  }
}
