import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordTextController1;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  String? _passwordTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        '8aj5u3ep' /* ادخل كلمة مرور على الاقل من 6 ... */,
      );
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextController2Validator;
  bool biometricOutput = false;

  @override
  void initState(BuildContext context) {
    passwordTextController1Validator = _passwordTextController1Validator;
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    passwordFocusNode1?.dispose();
    passwordTextController1?.dispose();

    passwordFocusNode2?.dispose();
    passwordTextController2?.dispose();
  }
}
