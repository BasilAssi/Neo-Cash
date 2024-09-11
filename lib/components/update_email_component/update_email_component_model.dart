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
  String? _currentEmailTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'c7jp7ev3' /* الحقل مطلوب */,
      );
    }

    return null;
  }

  // State field(s) for NewEmailTextField widget.
  FocusNode? newEmailTextFieldFocusNode;
  TextEditingController? newEmailTextFieldTextController;
  String? Function(BuildContext, String?)?
      newEmailTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    currentEmailTextFieldTextControllerValidator =
        _currentEmailTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    currentEmailTextFieldFocusNode?.dispose();
    currentEmailTextFieldTextController?.dispose();

    newEmailTextFieldFocusNode?.dispose();
    newEmailTextFieldTextController?.dispose();
  }
}
