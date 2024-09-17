import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pin_code_component_widget.dart' show PinCodeComponentWidget;
import 'package:flutter/material.dart';

class PinCodeComponentModel extends FlutterFlowModel<PinCodeComponentWidget> {
  ///  Local state fields for this component.

  String? pinCode;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode_form widget.
  TextEditingController? pinCodeForm;
  String? Function(BuildContext, String?)? pinCodeFormValidator;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in PinCode_form widget.
  bool? isNetworkAvailableoutput;
  // Stores action output result for [Custom Action - encodeSHA256] action in PinCode_form widget.
  String? pINCODEHashedSHA256base64;
  // Stores action output result for [Backend Call - API (Validate Customer PIN)] action in PinCode_form widget.
  ApiCallResponse? apiResultValidateCustomerPIN;

  @override
  void initState(BuildContext context) {
    pinCodeForm = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeForm?.dispose();
  }
}
