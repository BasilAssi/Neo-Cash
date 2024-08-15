import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registeration04_widget.dart' show Registeration04Widget;
import 'package:flutter/material.dart';

class Registeration04Model extends FlutterFlowModel<Registeration04Widget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for isPEPDropDown widget.
  String? isPEPDropDownValue;
  FormFieldController<String>? isPEPDropDownValueController;
  // State field(s) for localPepFullNameTextField widget.
  FocusNode? localPepFullNameTextFieldFocusNode;
  TextEditingController? localPepFullNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      localPepFullNameTextFieldTextControllerValidator;
  String? _localPepFullNameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'szccmsm4' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for latinPepFullNameTextField widget.
  FocusNode? latinPepFullNameTextFieldFocusNode;
  TextEditingController? latinPepFullNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      latinPepFullNameTextFieldTextControllerValidator;
  String? _latinPepFullNameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8693qu5v' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for relationshipWithPepTextField widget.
  FocusNode? relationshipWithPepTextFieldFocusNode;
  TextEditingController? relationshipWithPepTextFieldTextController;
  String? Function(BuildContext, String?)?
      relationshipWithPepTextFieldTextControllerValidator;
  String? _relationshipWithPepTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'eggopym5' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for pepPositionTextField widget.
  FocusNode? pepPositionTextFieldFocusNode;
  TextEditingController? pepPositionTextFieldTextController;
  String? Function(BuildContext, String?)?
      pepPositionTextFieldTextControllerValidator;
  String? _pepPositionTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'eggopym5' /* Field is required */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    localPepFullNameTextFieldTextControllerValidator =
        _localPepFullNameTextFieldTextControllerValidator;
    latinPepFullNameTextFieldTextControllerValidator =
        _latinPepFullNameTextFieldTextControllerValidator;
    relationshipWithPepTextFieldTextControllerValidator =
        _relationshipWithPepTextFieldTextControllerValidator;
    pepPositionTextFieldTextControllerValidator =
        _pepPositionTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    localPepFullNameTextFieldFocusNode?.dispose();
    localPepFullNameTextFieldTextController?.dispose();

    latinPepFullNameTextFieldFocusNode?.dispose();
    latinPepFullNameTextFieldTextController?.dispose();

    relationshipWithPepTextFieldFocusNode?.dispose();
    relationshipWithPepTextFieldTextController?.dispose();

    pepPositionTextFieldFocusNode?.dispose();
    pepPositionTextFieldTextController?.dispose();
  }
}
