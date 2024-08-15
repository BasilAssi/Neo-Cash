import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registeration06_widget.dart' show Registeration06Widget;
import 'package:flutter/material.dart';

class Registeration06Model extends FlutterFlowModel<Registeration06Widget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for CitiesDropDown widget.
  String? citiesDropDownValue;
  FormFieldController<String>? citiesDropDownValueController;
  // State field(s) for PopulationDropDown widget.
  String? populationDropDownValue;
  FormFieldController<String>? populationDropDownValueController;
  // State field(s) for AddresslTextField widget.
  FocusNode? addresslTextFieldFocusNode;
  TextEditingController? addresslTextFieldTextController;
  String? Function(BuildContext, String?)?
      addresslTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    addresslTextFieldFocusNode?.dispose();
    addresslTextFieldTextController?.dispose();
  }
}
