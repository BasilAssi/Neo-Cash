import '/flutter_flow/flutter_flow_util.dart';
import 'enter_id_page_widget.dart' show EnterIdPageWidget;
import 'package:flutter/material.dart';

class EnterIdPageModel extends FlutterFlowModel<EnterIdPageWidget> {
  ///  Local state fields for this page.

  bool? selectedID = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for FirstNameTextField widget.
  FocusNode? firstNameTextFieldFocusNode;
  TextEditingController? firstNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      firstNameTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameTextFieldFocusNode?.dispose();
    firstNameTextFieldTextController?.dispose();
  }
}
