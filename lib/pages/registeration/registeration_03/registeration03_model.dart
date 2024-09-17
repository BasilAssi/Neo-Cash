import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registeration03_widget.dart' show Registeration03Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Registeration03Model extends FlutterFlowModel<Registeration03Widget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDownRESIDENT widget.
  String? dropDownRESIDENTValue;
  FormFieldController<String>? dropDownRESIDENTValueController;
  // State field(s) for DropDownisUsPassportHolder widget.
  String? dropDownisUsPassportHolderValue;
  FormFieldController<String>? dropDownisUsPassportHolderValueController;
  // State field(s) for ProfissionTextField widget.
  FocusNode? profissionTextFieldFocusNode;
  TextEditingController? profissionTextFieldTextController;
  String? Function(BuildContext, String?)?
      profissionTextFieldTextControllerValidator;
  String? _profissionTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ckc46hur' /* الحقل مطلوب */,
      );
    }

    if (val.length > 25) {
      return FFLocalizations.of(context).getText(
        'wnf2fraw' /* يجب ألا يتجاوز النص 25 حرفًا. */,
      );
    }

    return null;
  }

  // State field(s) for PlaceOfWorkTextField widget.
  FocusNode? placeOfWorkTextFieldFocusNode;
  TextEditingController? placeOfWorkTextFieldTextController;
  String? Function(BuildContext, String?)?
      placeOfWorkTextFieldTextControllerValidator;
  String? _placeOfWorkTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7193jimg' /* الحقل مطلوب */,
      );
    }

    if (val.length > 25) {
      return FFLocalizations.of(context).getText(
        'rn5wudke' /* يجب ألا يتجاوز النص 25 حرفًا. */,
      );
    }

    return null;
  }

  // State field(s) for MontlyIncomeTextField widget.
  FocusNode? montlyIncomeTextFieldFocusNode;
  TextEditingController? montlyIncomeTextFieldTextController;
  String? Function(BuildContext, String?)?
      montlyIncomeTextFieldTextControllerValidator;
  String? _montlyIncomeTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '0ny3hsku' /* الحقل مطلوب */,
      );
    }

    if (val.length > 25) {
      return FFLocalizations.of(context).getText(
        '3emqfmua' /* يجب ألا يتجاوز النص 25 حرفًا. */,
      );
    }
    if (!RegExp('^\\+?[1-9]\\d*\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    profissionTextFieldTextControllerValidator =
        _profissionTextFieldTextControllerValidator;
    placeOfWorkTextFieldTextControllerValidator =
        _placeOfWorkTextFieldTextControllerValidator;
    montlyIncomeTextFieldTextControllerValidator =
        _montlyIncomeTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    profissionTextFieldFocusNode?.dispose();
    profissionTextFieldTextController?.dispose();

    placeOfWorkTextFieldFocusNode?.dispose();
    placeOfWorkTextFieldTextController?.dispose();

    montlyIncomeTextFieldFocusNode?.dispose();
    montlyIncomeTextFieldTextController?.dispose();
  }
}
