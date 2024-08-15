import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registeration05_widget.dart' show Registeration05Widget;
import 'package:flutter/material.dart';

class Registeration05Model extends FlutterFlowModel<Registeration05Widget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for trueBeneficiaryNameTextField widget.
  FocusNode? trueBeneficiaryNameTextFieldFocusNode;
  TextEditingController? trueBeneficiaryNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      trueBeneficiaryNameTextFieldTextControllerValidator;
  String? _trueBeneficiaryNameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'caq9antt' /* الحقل مطلوب */,
      );
    }

    return null;
  }

  // State field(s) for relationShipWithTrueBeneficiaryTextField widget.
  FocusNode? relationShipWithTrueBeneficiaryTextFieldFocusNode;
  TextEditingController? relationShipWithTrueBeneficiaryTextFieldTextController;
  String? Function(BuildContext, String?)?
      relationShipWithTrueBeneficiaryTextFieldTextControllerValidator;
  String? _relationShipWithTrueBeneficiaryTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tt0swmgt' /* الحقل مطلوب */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    trueBeneficiaryNameTextFieldTextControllerValidator =
        _trueBeneficiaryNameTextFieldTextControllerValidator;
    relationShipWithTrueBeneficiaryTextFieldTextControllerValidator =
        _relationShipWithTrueBeneficiaryTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    trueBeneficiaryNameTextFieldFocusNode?.dispose();
    trueBeneficiaryNameTextFieldTextController?.dispose();

    relationShipWithTrueBeneficiaryTextFieldFocusNode?.dispose();
    relationShipWithTrueBeneficiaryTextFieldTextController?.dispose();
  }
}
