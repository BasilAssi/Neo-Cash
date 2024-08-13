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
  // State field(s) for idTypeDropDown widget.
  String? idTypeDropDownValue;
  FormFieldController<String>? idTypeDropDownValueController;
  // State field(s) for idNumberTextField widget.
  FocusNode? idNumberTextFieldFocusNode;
  TextEditingController? idNumberTextFieldTextController;
  String? Function(BuildContext, String?)?
      idNumberTextFieldTextControllerValidator;
  String? _idNumberTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'o8vsd9cs' /* رقم الهوية لا يمكن ان يكون فار... */,
      );
    }

    if (val.length < 7) {
      return FFLocalizations.of(context).getText(
        '8e3rsbjp' /* رقم الهوية اقل من 7  ارقام */,
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
    idNumberTextFieldTextControllerValidator =
        _idNumberTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    idNumberTextFieldFocusNode?.dispose();
    idNumberTextFieldTextController?.dispose();
  }
}
