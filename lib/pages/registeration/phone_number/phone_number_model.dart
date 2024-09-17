import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'phone_number_widget.dart' show PhoneNumberWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
        '20xg27or' /* الرجاء إدخال رقم هاتف محمول 
ص... */
        ,
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
  // Stores action output result for [Custom Action - validateMobileNumber] action in Button widget.
  String? validateMobileNumberOutput;
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
