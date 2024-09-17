import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'enter_id_page_forgot_password_widget.dart'
    show EnterIdPageForgotPasswordWidget;
import 'package:flutter/material.dart';

class EnterIdPageForgotPasswordModel
    extends FlutterFlowModel<EnterIdPageForgotPasswordWidget> {
  ///  Local state fields for this page.

  bool? selectedID = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for idTypeDropDown widget.
  String? idTypeDropDownValue;
  FormFieldController<String>? idTypeDropDownValueController;
  // State field(s) for idNumberTextField widget.
  FocusNode? idNumberTextFieldFocusNode;
  TextEditingController? idNumberTextFieldTextController;
  String? Function(BuildContext, String?)?
      idNumberTextFieldTextControllerValidator;
  String? _idNumberTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'od60cyt0' /* الحقل لا يمكن ان يكون أقل من 1... */,
      );
    }

    if (val.length < 9) {
      return FFLocalizations.of(context).getText(
        'ig90grnc' /* رقم الهوية اقل من 9  ارقام */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        '5191d3yv' /* الحقل لا يمكن ان يكون أكبر من ... */,
      );
    }

    return null;
  }

  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.
  bool? isNetworkAvailableOutput1;
  // Stores action output result for [Backend Call - API (isRegistered)] action in Button widget.
  ApiCallResponse? isRegisteredOutPut;
  // Stores action output result for [Backend Call - API (Send OTP to customer)] action in Button widget.
  ApiCallResponse? apiResultSendOTPPass;
  // Stores action output result for [Backend Call - API (Send OTP to customer)] action in Button widget.
  ApiCallResponse? apiResultSendOTP;

  @override
  void initState(BuildContext context) {
    idNumberTextFieldTextControllerValidator =
        _idNumberTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    idNumberTextFieldFocusNode?.dispose();
    idNumberTextFieldTextController?.dispose();
  }
}
