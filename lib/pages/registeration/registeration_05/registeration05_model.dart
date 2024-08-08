import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registeration05_widget.dart' show Registeration05Widget;
import 'package:flutter/material.dart';

class Registeration05Model extends FlutterFlowModel<Registeration05Widget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();
  }
}
