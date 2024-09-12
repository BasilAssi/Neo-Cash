import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pin_code_component_model.dart';
export 'pin_code_component_model.dart';

class PinCodeComponentWidget extends StatefulWidget {
  const PinCodeComponentWidget({
    super.key,
    required this.actiononPass,
  });

  final Future Function()? actiononPass;

  @override
  State<PinCodeComponentWidget> createState() => _PinCodeComponentWidgetState();
}

class _PinCodeComponentWidgetState extends State<PinCodeComponentWidget>
    with TickerProviderStateMixin {
  late PinCodeComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PinCodeComponentModel());

    animationsMap.addAll({
      'listViewOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          BlurEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 500.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(60.0, 60.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 500.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 700.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 300.0),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 250.0.ms,
            duration: 150.0.ms,
            begin: const Offset(0.0, 10.0),
            end: const Offset(0.0, -40.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 250.0.ms,
            duration: 50.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: -0.05,
          ),
        ],
      ),
      'iconOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: const Offset(0.0, -200.0),
            end: const Offset(0.0, 20.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: 0.5,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 250.0.ms,
            duration: 50.0.ms,
            begin: 1.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeIn,
            delay: 200.0.ms,
            duration: 100.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, -20.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'pinCodeOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            hz: 100,
            offset: const Offset(4.0, 0.0),
            rotation: 0,
          ),
          BlurEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(10.0, 10.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(10.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(50.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(2.0, 2.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(10.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(2.0, 2.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(10.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(-50.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(2.0, 2.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(10.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(-50.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(2.0, 2.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(10.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(50.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(2.0, 2.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(10.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(2.0, 2.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(10.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(-50.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(2.0, 2.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(10.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(50.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(2.0, 2.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(10.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(2.0, 2.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(10.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(-50.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(2.0, 2.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation10': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(10.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(50.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(2.0, 2.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation11': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(10.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(2.0, 2.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation12': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          BlurEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(10.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(-50.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(2.0, 2.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
          ),
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.lock_open,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 40.0,
                        ).animateOnActionTrigger(
                          animationsMap['iconOnActionTriggerAnimation1']!,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.lock_outline_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 40.0,
                        ).animateOnActionTrigger(
                          animationsMap['iconOnActionTriggerAnimation2']!,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 24.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      PinCodeTextField(
                        autoDisposeControllers: false,
                        appContext: context,
                        length: 4,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyLarge
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              color: FlutterFlowTheme.of(context).textColor,
                              fontSize: 24.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyLargeFamily),
                            ),
                        mainAxisAlignment: MainAxisAlignment.center,
                        enableActiveFill: false,
                        autoFocus: false,
                        enablePinAutofill: false,
                        errorTextSpace: 16.0,
                        showCursor: false,
                        cursorColor: FlutterFlowTheme.of(context).primary,
                        obscureText: true,
                        obscuringCharacter: '●',
                        hintCharacter: '●',
                        keyboardType: TextInputType.number,
                        pinTheme: PinTheme(
                          fieldHeight: 44.0,
                          fieldWidth: 44.0,
                          borderWidth: 0.0,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(12.0),
                            bottomRight: Radius.circular(12.0),
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                          shape: PinCodeFieldShape.circle,
                          activeColor:
                              FlutterFlowTheme.of(context).iconBackground,
                          inactiveColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        controller: _model.pinCodeForm,
                        onChanged: (_) {},
                        onCompleted: (_) async {
                          _model.isNetworkAvailableoutput =
                              await actions.isNetworkAvailable();
                          if (_model.isNetworkAvailableoutput == true) {
                            _model.pINCODEHashedSHA256base64 =
                                await actions.encodeSHA256(
                              _model.pinCode,
                            );
                            _model.apiResultValidateCustomerPIN =
                                await CardGroup.validateCustomerPINCall.call(
                              msgId: functions.messageId(),
                              pin: _model.pINCODEHashedSHA256base64,
                              deviceSerial:
                                  FFAppState().deviceInformation.serial,
                              token: FFAppState().AuthenticatedUser.accessToken,
                              acceptLanguage:
                                  FFLocalizations.of(context).getVariableText(
                                arText: 'AR',
                                enText: 'EN',
                              ),
                            );

                            if (ResponseModelStruct.maybeFromMap((_model
                                            .apiResultValidateCustomerPIN
                                            ?.jsonBody ??
                                        ''))
                                    ?.code ==
                                '00') {
                              HapticFeedback.lightImpact();
                              await Future.delayed(
                                  const Duration(milliseconds: 200));
                              HapticFeedback.lightImpact();
                              await Future.delayed(
                                  const Duration(milliseconds: 100));
                              // lockClose
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation2'] !=
                                  null) {
                                animationsMap['iconOnActionTriggerAnimation2']!
                                    .controller
                                    .forward(from: 0.0);
                              }
                              // lockOpen
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation1'] !=
                                  null) {
                                await animationsMap[
                                        'iconOnActionTriggerAnimation1']!
                                    .controller
                                    .forward(from: 0.0);
                              }
                              if (animationsMap[
                                      'listViewOnActionTriggerAnimation'] !=
                                  null) {
                                await animationsMap[
                                        'listViewOnActionTriggerAnimation']!
                                    .controller
                                    .forward(from: 0.0);
                              }
                              await widget.actiononPass?.call();
                              Navigator.pop(context);
                            } else {
                              if (animationsMap[
                                      'pinCodeOnActionTriggerAnimation'] !=
                                  null) {
                                animationsMap[
                                        'pinCodeOnActionTriggerAnimation']!
                                    .controller
                                    .forward(from: 0.0);
                              }
                              await Future.delayed(
                                  const Duration(milliseconds: 1000));
                              _model.pinCode = '';
                              safeSetState(() {});
                              safeSetState(() {
                                _model.pinCodeForm?.clear();
                              });
                              if (animationsMap[
                                      'pinCodeOnActionTriggerAnimation'] !=
                                  null) {
                                animationsMap[
                                        'pinCodeOnActionTriggerAnimation']!
                                    .controller
                                    .reset();
                              }
                            }
                          }

                          safeSetState(() {});
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator:
                            _model.pinCodeFormValidator.asValidator(context),
                      ).animateOnActionTrigger(
                        animationsMap['pinCodeOnActionTriggerAnimation']!,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        _model.pinCode = '${_model.pinCode}3';
                        safeSetState(() {});
                        safeSetState(() {
                          _model.pinCodeForm?.text = _model.pinCode!;
                        });
                      },
                      text: FFLocalizations.of(context).getText(
                        'fj8ikdq9' /* 3 */,
                      ),
                      options: FFButtonOptions(
                        width: MediaQuery.sizeOf(context).width * 0.2,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        textStyle:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      showLoadingIndicator: false,
                    ).animateOnPageLoad(
                        animationsMap['buttonOnPageLoadAnimation1']!),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        _model.pinCode = '${_model.pinCode}2';
                        safeSetState(() {});
                        safeSetState(() {
                          _model.pinCodeForm?.text = _model.pinCode!;
                        });
                      },
                      text: FFLocalizations.of(context).getText(
                        't8l67tzg' /* 2 */,
                      ),
                      options: FFButtonOptions(
                        width: MediaQuery.sizeOf(context).width * 0.2,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        textStyle:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      showLoadingIndicator: false,
                    ).animateOnPageLoad(
                        animationsMap['buttonOnPageLoadAnimation2']!),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        _model.pinCode = '${_model.pinCode}1';
                        safeSetState(() {});
                        safeSetState(() {
                          _model.pinCodeForm?.text = _model.pinCode!;
                        });
                      },
                      text: FFLocalizations.of(context).getText(
                        '4ezp2cxb' /* 1 */,
                      ),
                      options: FFButtonOptions(
                        width: MediaQuery.sizeOf(context).width * 0.2,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        textStyle:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      showLoadingIndicator: false,
                    ).animateOnPageLoad(
                        animationsMap['buttonOnPageLoadAnimation3']!),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.pinCode = '${_model.pinCode}6';
                          safeSetState(() {});
                          safeSetState(() {
                            _model.pinCodeForm?.text = _model.pinCode!;
                          });
                        },
                        text: FFLocalizations.of(context).getText(
                          'xxhlgslh' /* 6 */,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        showLoadingIndicator: false,
                      ).animateOnPageLoad(
                          animationsMap['buttonOnPageLoadAnimation4']!),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.pinCode = '${_model.pinCode}5';
                          safeSetState(() {});
                          safeSetState(() {
                            _model.pinCodeForm?.text = _model.pinCode!;
                          });
                        },
                        text: FFLocalizations.of(context).getText(
                          'gchhwvc8' /* 5 */,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        showLoadingIndicator: false,
                      ).animateOnPageLoad(
                          animationsMap['buttonOnPageLoadAnimation5']!),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.pinCode = '${_model.pinCode}4';
                          safeSetState(() {});
                          safeSetState(() {
                            _model.pinCodeForm?.text = _model.pinCode!;
                          });
                        },
                        text: FFLocalizations.of(context).getText(
                          'bg4uaucw' /* 4 */,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        showLoadingIndicator: false,
                      ).animateOnPageLoad(
                          animationsMap['buttonOnPageLoadAnimation6']!),
                    ),
                  ],
                ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.pinCode = '${_model.pinCode}9';
                          safeSetState(() {});
                          safeSetState(() {
                            _model.pinCodeForm?.text = _model.pinCode!;
                          });
                        },
                        text: FFLocalizations.of(context).getText(
                          'mcv9tml9' /* 9 */,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        showLoadingIndicator: false,
                      ).animateOnPageLoad(
                          animationsMap['buttonOnPageLoadAnimation7']!),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.pinCode = '${_model.pinCode}8';
                          safeSetState(() {});
                          safeSetState(() {
                            _model.pinCodeForm?.text = _model.pinCode!;
                          });
                        },
                        text: FFLocalizations.of(context).getText(
                          '9bb0dgr9' /* 8 */,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        showLoadingIndicator: false,
                      ).animateOnPageLoad(
                          animationsMap['buttonOnPageLoadAnimation8']!),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.pinCode = '${_model.pinCode}7';
                          safeSetState(() {});
                          safeSetState(() {
                            _model.pinCodeForm?.text = _model.pinCode!;
                          });
                        },
                        text: FFLocalizations.of(context).getText(
                          'ymichjjl' /* 7 */,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        showLoadingIndicator: false,
                      ).animateOnPageLoad(
                          animationsMap['buttonOnPageLoadAnimation9']!),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_model.pinCode != null && _model.pinCode != '') {
                            _model.pinCode =
                                functions.removeLastCharacter(_model.pinCode);
                            safeSetState(() {});
                            safeSetState(() {
                              _model.pinCodeForm?.text = _model.pinCode!;
                            });
                          }
                        },
                        text: FFLocalizations.of(context).getText(
                          '9l081t2i' /*  */,
                        ),
                        icon: const Icon(
                          Icons.arrow_forward,
                          size: 24.0,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsets.all(0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        showLoadingIndicator: false,
                      ).animateOnPageLoad(
                          animationsMap['buttonOnPageLoadAnimation10']!),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.pinCode = '${_model.pinCode}0';
                          safeSetState(() {});
                          safeSetState(() {
                            _model.pinCodeForm?.text = _model.pinCode!;
                          });
                        },
                        text: FFLocalizations.of(context).getText(
                          '0vxgida4' /* 0 */,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        showLoadingIndicator: false,
                      ).animateOnPageLoad(
                          animationsMap['buttonOnPageLoadAnimation11']!),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: FFLocalizations.of(context).getText(
                          'xlcer1iy' /* close */,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        showLoadingIndicator: false,
                      ).animateOnPageLoad(
                          animationsMap['buttonOnPageLoadAnimation12']!),
                    ),
                  ],
                ),
              ),
            ],
          ).animateOnActionTrigger(
            animationsMap['listViewOnActionTriggerAnimation']!,
          ),
        ),
      ),
    );
  }
}
