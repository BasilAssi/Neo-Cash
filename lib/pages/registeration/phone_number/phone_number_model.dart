import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'phone_number_widget.dart' show PhoneNumberWidget;
import 'package:flutter/material.dart';

class PhoneNumberModel extends FlutterFlowModel<PhoneNumberWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'm9cfiyyb' /* الحقل مطلوب */,
      );
    }

    if (val.length < 9) {
      return FFLocalizations.of(context).getText(
        '20xg27or' /* لا يمكن ان يكون الرقم اقل من 9... */,
      );
    }
    if (val.length > 9) {
      return FFLocalizations.of(context).getText(
        'o3pcr58o' /* لا يمكن ان يكون الرقم أكبر من ... */,
      );
    }

    return null;
  }

  // State field(s) for prefixMobileNumberDropDown widget.
  String? prefixMobileNumberDropDownValue;
  FormFieldController<String>? prefixMobileNumberDropDownValueController;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.
  bool? isNetworkAvaiableOutPut;
  // Stores action output result for [Backend Call - API (Send OTP to customer)] action in Button widget.
  ApiCallResponse? apiResultSendOTPSelfReg;

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
