import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'basic_infi_forgot_pin_widget.dart' show BasicInfiForgotPinWidget;
import 'package:flutter/material.dart';

class BasicInfiForgotPinModel
    extends FlutterFlowModel<BasicInfiForgotPinWidget> {
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
