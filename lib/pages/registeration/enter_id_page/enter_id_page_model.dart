import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'enter_id_page_widget.dart' show EnterIdPageWidget;
import 'package:flutter/material.dart';

class EnterIdPageModel extends FlutterFlowModel<EnterIdPageWidget> {
  ///  Local state fields for this page.

  bool? selectedID = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for FirstNameTextField widget.
  FocusNode? firstNameTextFieldFocusNode;
  TextEditingController? firstNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      firstNameTextFieldTextControllerValidator;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.
  bool? isNetworkAvailableOutput;
  // Stores action output result for [Backend Call - API (isRegistered)] action in Button widget.
  ApiCallResponse? isRegisteredOutPut;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firstNameTextFieldFocusNode?.dispose();
    firstNameTextFieldTextController?.dispose();
  }
}
