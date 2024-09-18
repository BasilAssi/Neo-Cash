import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'otp_does_not_exist_flow_widget.dart' show OtpDoesNotExistFlowWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class OtpDoesNotExistFlowModel
    extends FlutterFlowModel<OtpDoesNotExistFlowWidget> {
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
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Custom Action - isNetworkAvailable] action in Text widget.
  bool? isNetworkAvaiableOutPutResend;
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
