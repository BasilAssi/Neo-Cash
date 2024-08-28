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

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - isNetworkAvailable] action in registeration_02 widget.
  bool? isNetworkAvaiableOutput;
  DateTime? datePicked;
  // State field(s) for CityTextField widget.
  FocusNode? cityTextFieldFocusNode;
  TextEditingController? cityTextFieldTextController;
  String? Function(BuildContext, String?)? cityTextFieldTextControllerValidator;
  String? _cityTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'yqzok9cw' /* الحقل مطلوب */,
      );
    }

    if (val.length > 25) {
      return FFLocalizations.of(context).getText(
        '2z8oap5p' /* يجب ألا يتجاوز النص 25 حرفًا. */,
      );
    }

    return null;
  }

  // State field(s) for MotherNameENTextField widget.
  FocusNode? motherNameENTextFieldFocusNode;
  TextEditingController? motherNameENTextFieldTextController;
  String? Function(BuildContext, String?)?
      motherNameENTextFieldTextControllerValidator;
  String? _motherNameENTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'caq9antt' /* الحقل مطلوب */,
      );
    }

    if (val.length > 25) {
      return FFLocalizations.of(context).getText(
        'wiu3u5p7' /* يجب ألا يتجاوز النص 25 حرفًا. */,
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
    cityTextFieldTextControllerValidator =
        _cityTextFieldTextControllerValidator;
    motherNameENTextFieldTextControllerValidator =
        _motherNameENTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    cityTextFieldFocusNode?.dispose();
    cityTextFieldTextController?.dispose();

    motherNameENTextFieldFocusNode?.dispose();
    motherNameENTextFieldTextController?.dispose();
  }
}
