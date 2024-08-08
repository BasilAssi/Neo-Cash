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
