import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'enter_id_page_widget.dart' show EnterIdPageWidget;
import 'package:flutter/material.dart';

class EnterIdPageModel extends FlutterFlowModel<EnterIdPageWidget> {
  ///  Local state fields for this page.

  bool? selectedID = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for FirstNameTextField widget.
  FocusNode? firstNameTextFieldFocusNode;
  TextEditingController? firstNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      firstNameTextFieldTextControllerValidator;
  String? _firstNameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'o8vsd9cs' /* رقم الهوية لا يمكن ان يكون فار... */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        '8e3rsbjp' /* رقم الهوية اقل من عشرة ارقام */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        'w3k77fqk' /* رقم الهوية اكبر من عشرة ارقام */,
      );
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? identityFormOutput;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.
  bool? isNetworkAvailableOutput;
  // Stores action output result for [Backend Call - API (isRegistered)] action in Button widget.
  ApiCallResponse? isRegisteredOutPut;

  @override
  void initState(BuildContext context) {
    firstNameTextFieldTextControllerValidator =
        _firstNameTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    firstNameTextFieldFocusNode?.dispose();
    firstNameTextFieldTextController?.dispose();
  }
}
