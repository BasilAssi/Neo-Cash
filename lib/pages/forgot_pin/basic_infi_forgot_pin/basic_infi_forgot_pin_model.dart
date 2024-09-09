import '/flutter_flow/flutter_flow_util.dart';
import 'basic_infi_forgot_pin_widget.dart' show BasicInfiForgotPinWidget;
import 'package:flutter/material.dart';

class BasicInfiForgotPinModel
    extends FlutterFlowModel<BasicInfiForgotPinWidget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8693qu5v' /* Field is required */,
      );
    }

    if (!RegExp('((?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{7,1000})').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '3r5ueaze' /* يجب أن تكون كلمة المرور بطول ل... */,
      );
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
  }

  @override
  void dispose() {
    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
