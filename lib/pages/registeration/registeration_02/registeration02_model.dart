import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registeration02_widget.dart' show Registeration02Widget;
import 'package:flutter/material.dart';

class Registeration02Model extends FlutterFlowModel<Registeration02Widget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
  // State field(s) for CitiesDropDown widget.
  String? citiesDropDownValue;
  FormFieldController<String>? citiesDropDownValueController;
  // State field(s) for MotherNameENTextField widget.
  FocusNode? motherNameENTextFieldFocusNode;
  TextEditingController? motherNameENTextFieldTextController;
  String? Function(BuildContext, String?)?
      motherNameENTextFieldTextControllerValidator;
  // State field(s) for GenderDropDown widget.
  String? genderDropDownValue;
  FormFieldController<String>? genderDropDownValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    motherNameENTextFieldFocusNode?.dispose();
    motherNameENTextFieldTextController?.dispose();
  }
}
