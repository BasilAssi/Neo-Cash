import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'otp_phone_forgot_pin_widget.dart' show OtpPhoneForgotPinWidget;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OtpPhoneForgotPinModel extends FlutterFlowModel<OtpPhoneForgotPinWidget> {
  ///  Local state fields for this page.

  bool isCompleted = true;

  bool isTimerEnded = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Custom Action - encodeSHA256] action in PinCode widget.
  String? oTPHashedSHA256base64;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in PinCode widget.
  bool? isNetworkAvailableOutput;
  // Stores action output result for [Backend Call - API (Verify OTP)] action in PinCode widget.
  ApiCallResponse? verifyOTPOutput;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 120000;
  int timerMilliseconds = 120000;
  String timerValue = StopWatchTimer.getDisplayTime(
    120000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Custom Action - isNetworkAvailable] action in Text widget.
  bool? isNetworkAvailableOutput1;
  // Stores action output result for [Backend Call - API (Send OTP to customer)] action in Text widget.
  ApiCallResponse? apiResultSendOTP;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
    timerController.dispose();
  }
}
