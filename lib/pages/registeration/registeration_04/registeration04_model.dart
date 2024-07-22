import '/flutter_flow/flutter_flow_util.dart';
import 'registeration04_widget.dart' show Registeration04Widget;
import 'package:flutter/material.dart';

class Registeration04Model extends FlutterFlowModel<Registeration04Widget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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

  @override
  void initState(BuildContext context) {
    firstNameTextFieldVisibility1 = false;
    firstNameTextFieldVisibility2 = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    firstNameTextFieldFocusNode1?.dispose();
    firstNameTextFieldTextController1?.dispose();

    firstNameTextFieldFocusNode2?.dispose();
    firstNameTextFieldTextController2?.dispose();
  }
}
