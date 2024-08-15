import '/flutter_flow/flutter_flow_util.dart';
import 'set_pin_forgot_pin_widget.dart' show SetPinForgotPinWidget;
import 'package:flutter/material.dart';

class SetPinForgotPinModel extends FlutterFlowModel<SetPinForgotPinWidget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  String? _pinCodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '2jt0d9nr' /* الحقل مطلوب */,
      );
    }
    if (val.length < 4) {
      return 'Requires 4 characters.';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
    pinCodeControllerValidator = _pinCodeControllerValidator;
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
