import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_email_component_widget.dart' show UpdateEmailComponentWidget;
import 'package:flutter/material.dart';

class UpdateEmailComponentModel
    extends FlutterFlowModel<UpdateEmailComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for CurrentEmailTextField widget.
  FocusNode? currentEmailTextFieldFocusNode;
  TextEditingController? currentEmailTextFieldTextController;
  String? Function(BuildContext, String?)?
      currentEmailTextFieldTextControllerValidator;
  // State field(s) for NewEmailTextField widget.
  FocusNode? newEmailTextFieldFocusNode;
  TextEditingController? newEmailTextFieldTextController;
  String? Function(BuildContext, String?)?
      newEmailTextFieldTextControllerValidator;
  String? _newEmailTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fws67ayg' /* الحقل مطلوب */,
      );
    }

    if (val.length > 100) {
      return FFLocalizations.of(context).getText(
        'tt5y9myk' /* يجب ألا يتجاوز النص 100 حرفًا. */,
      );
    }
    if (!RegExp('^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'l9l47kgh' /* الرجاء إدخال بريد إلكتروني صحي... */,
      );
    }
    return null;
  }

  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.
  bool? isNetworkAvailableOutput;
  // Stores action output result for [Backend Call - API (Save My Profile)] action in Button widget.
  ApiCallResponse? apiResultSaveMyProfile;

  @override
  void initState(BuildContext context) {
    newEmailTextFieldTextControllerValidator =
        _newEmailTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    currentEmailTextFieldFocusNode?.dispose();
    currentEmailTextFieldTextController?.dispose();

    newEmailTextFieldFocusNode?.dispose();
    newEmailTextFieldTextController?.dispose();
  }
}
