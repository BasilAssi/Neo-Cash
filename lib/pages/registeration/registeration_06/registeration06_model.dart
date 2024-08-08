import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registeration06_widget.dart' show Registeration06Widget;
import 'package:flutter/material.dart';

class Registeration06Model extends FlutterFlowModel<Registeration06Widget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode1;
  TextEditingController? emailTextFieldTextController1;
  String? Function(BuildContext, String?)?
      emailTextFieldTextController1Validator;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode2;
  TextEditingController? emailTextFieldTextController2;
  String? Function(BuildContext, String?)?
      emailTextFieldTextController2Validator;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode3;
  TextEditingController? emailTextFieldTextController3;
  String? Function(BuildContext, String?)?
      emailTextFieldTextController3Validator;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode4;
  TextEditingController? emailTextFieldTextController4;
  String? Function(BuildContext, String?)?
      emailTextFieldTextController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailTextFieldFocusNode1?.dispose();
    emailTextFieldTextController1?.dispose();

    emailTextFieldFocusNode2?.dispose();
    emailTextFieldTextController2?.dispose();

    emailTextFieldFocusNode3?.dispose();
    emailTextFieldTextController3?.dispose();

    emailTextFieldFocusNode4?.dispose();
    emailTextFieldTextController4?.dispose();
  }
}
