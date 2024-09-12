import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pin_code_widget.dart' show PinCodeWidget;
import 'package:flutter/material.dart';

class PinCodeModel extends FlutterFlowModel<PinCodeWidget> {
  ///  Local state fields for this page.

  String pinCode = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in PinCode widget.
  bool? isNetworkAvailableoutput;
  // Stores action output result for [Backend Call - API (Validate Customer PIN)] action in PinCode widget.
  ApiCallResponse? apiResultValidateCustomerPIN;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
