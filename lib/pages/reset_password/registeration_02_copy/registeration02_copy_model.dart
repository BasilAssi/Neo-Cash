import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registeration02_copy_widget.dart' show Registeration02CopyWidget;
import 'package:flutter/material.dart';

class Registeration02CopyModel
    extends FlutterFlowModel<Registeration02CopyWidget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
