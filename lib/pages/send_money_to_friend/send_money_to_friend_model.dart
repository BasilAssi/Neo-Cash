import '/flutter_flow/flutter_flow_util.dart';
import 'send_money_to_friend_widget.dart' show SendMoneyToFriendWidget;
import 'package:flutter/material.dart';

class SendMoneyToFriendModel extends FlutterFlowModel<SendMoneyToFriendWidget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextFieldValue widget.
  FocusNode? textFieldValueFocusNode;
  TextEditingController? textFieldValueTextController;
  String? Function(BuildContext, String?)?
      textFieldValueTextControllerValidator;
  // State field(s) for TextFieldDescription widget.
  FocusNode? textFieldDescriptionFocusNode;
  TextEditingController? textFieldDescriptionTextController;
  String? Function(BuildContext, String?)?
      textFieldDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    textFieldValueFocusNode?.dispose();
    textFieldValueTextController?.dispose();

    textFieldDescriptionFocusNode?.dispose();
    textFieldDescriptionTextController?.dispose();
  }
}
