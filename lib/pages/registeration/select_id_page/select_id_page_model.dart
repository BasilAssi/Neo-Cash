import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'select_id_page_widget.dart' show SelectIdPageWidget;
import 'package:flutter/material.dart';

class SelectIdPageModel extends FlutterFlowModel<SelectIdPageWidget> {
  ///  Local state fields for this page.

  bool? selectedID = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
