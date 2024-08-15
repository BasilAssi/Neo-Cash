import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registeration02_widget.dart' show Registeration02Widget;
import 'package:flutter/material.dart';

class Registeration02Model extends FlutterFlowModel<Registeration02Widget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  List<String> emptyList = [];
  void addToEmptyList(String item) => emptyList.add(item);
  void removeFromEmptyList(String item) => emptyList.remove(item);
  void removeAtIndexFromEmptyList(int index) => emptyList.removeAt(index);
  void insertAtIndexInEmptyList(int index, String item) =>
      emptyList.insert(index, item);
  void updateEmptyListAtIndex(int index, Function(String) updateFn) =>
      emptyList[index] = updateFn(emptyList[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - isNetworkAvailable] action in registeration_02 widget.
  bool? isNetworkAvaiableOutput;
  DateTime? datePicked;
  // State field(s) for CitiesDropDown widget.
  String? citiesDropDownValue;
  FormFieldController<String>? citiesDropDownValueController;
  // State field(s) for MotherNameENTextField widget.
  FocusNode? motherNameENTextFieldFocusNode;
  TextEditingController? motherNameENTextFieldTextController;
  String? Function(BuildContext, String?)?
      motherNameENTextFieldTextControllerValidator;
  String? _motherNameENTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fg9qljcu' /* الحقل مطلوب */,
      );
    }

    if (!RegExp('^[A-Za-z\\s]+\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'd9xrc6bn' /* اسم الام يجب ان يكون باللغة ال... */,
      );
    }
    return null;
  }

  // State field(s) for GenderDropDown widget.
  String? genderDropDownValue;
  FormFieldController<String>? genderDropDownValueController;
  // State field(s) for DropDownNationalty widget.
  String? dropDownNationaltyValue;
  FormFieldController<String>? dropDownNationaltyValueController;

  @override
  void initState(BuildContext context) {
    motherNameENTextFieldTextControllerValidator =
        _motherNameENTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    motherNameENTextFieldFocusNode?.dispose();
    motherNameENTextFieldTextController?.dispose();
  }
}
