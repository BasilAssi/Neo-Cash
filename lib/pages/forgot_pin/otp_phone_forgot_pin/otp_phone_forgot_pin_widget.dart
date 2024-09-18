import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'otp_phone_forgot_pin_model.dart';
export 'otp_phone_forgot_pin_model.dart';

class OtpPhoneForgotPinWidget extends StatefulWidget {
  const OtpPhoneForgotPinWidget({super.key});

  @override
  State<OtpPhoneForgotPinWidget> createState() =>
      _OtpPhoneForgotPinWidgetState();
}

class _OtpPhoneForgotPinWidgetState extends State<OtpPhoneForgotPinWidget> {
  late OtpPhoneForgotPinModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpPhoneForgotPinModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isTimerEnded = false;
      safeSetState(() {});
      _model.timerController.onStartTimer();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 24.0, 16.0, 16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'bgqb2ioh' /* تأكيد رقم التلفون */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .textColor,
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'qm1h1z55' /*  أرسلنالك رمز تحقق على تليفونك... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .textColor,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      '9rqdog66' /* 
 */
                                      ,
                                    ),
                                    style: TextStyle(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: FFAppState()
                                            .AuthenticatedUser
                                            .hasMobileNumber()
                                        ? FFAppState()
                                            .AuthenticatedUser
                                            .mobileNumber
                                        : '',
                                    style: TextStyle(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'vjg78hih' /* 
 */
                                      ,
                                    ),
                                    style: const TextStyle(),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'fn6f3pzw' /*   الرجاء إدخال الرمز */,
                                    ),
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .textColor,
                                      fontSize: 18.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      PinCodeTextField(
                        autoDisposeControllers: false,
                        appContext: context,
                        length: 5,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyLarge
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyLargeFamily),
                            ),
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        enableActiveFill: false,
                        autoFocus: true,
                        enablePinAutofill: true,
                        errorTextSpace: 16.0,
                        showCursor: true,
                        cursorColor: FlutterFlowTheme.of(context).primary,
                        obscureText: false,
                        keyboardType: TextInputType.number,
                        pinTheme: PinTheme(
                          fieldHeight: 74.0,
                          fieldWidth: 54.0,
                          borderWidth: 1.0,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(12.0),
                            bottomRight: Radius.circular(12.0),
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                          shape: PinCodeFieldShape.box,
                          activeColor: FlutterFlowTheme.of(context).primaryText,
                          inactiveColor: FlutterFlowTheme.of(context).alternate,
                          selectedColor: FlutterFlowTheme.of(context).primary,
                        ),
                        controller: _model.pinCodeController,
                        onChanged: (_) {},
                        onCompleted: (_) async {
                          _model.oTPHashedSHA256base64 =
                              await actions.encodeSHA256(
                            _model.pinCodeController!.text,
                          );
                          FFAppState().updateForgotPinDataStruct(
                            (e) => e..hashedOTP = _model.oTPHashedSHA256base64,
                          );
                          safeSetState(() {});
                          _model.isCompleted = true;
                          safeSetState(() {});
                          _model.isNetworkAvailableOutput =
                              await actions.isNetworkAvailable();
                          if (_model.isNetworkAvailableOutput!) {
                            _model.verifyOTPOutput =
                                await AuthAndRegisterGroup.verifyOTPCall.call(
                              destination:
                                  '${FFAppState().AuthenticatedUser.mobileNumberPrefix}${FFAppState().AuthenticatedUser.mobileNumber}',
                              destinationType: 'MOBILE_NUMBER',
                              msgId: functions.messageId(),
                              otp: FFAppState().forgotPinData.hashedOTP,
                              setConfirmed: 'false',
                              idType: FFAppState()
                                      .registerationFormData
                                      .hasIdType()
                                  ? FFAppState().registerationFormData.idType
                                  : '',
                              idNumber: FFAppState().forgotPinData.idNumber,
                              operationType: 'FORGOT_PIN',
                              acceptLanguage:
                                  FFLocalizations.of(context).getVariableText(
                                arText: 'AR',
                                enText: 'EN',
                              ),
                            );

                            if ((_model.verifyOTPOutput?.succeeded ?? true)) {
                              if (ResponseModelStruct.maybeFromMap(
                                          (_model.verifyOTPOutput?.jsonBody ??
                                              ''))
                                      ?.code ==
                                  '00') {
                                context.pushNamed('basic_infi_forgot_pin');
                              } else {
                                await actions.showToast(
                                  FFLocalizations.of(context).getVariableText(
                                    arText: 'رمز المصادقة غير صحيح',
                                    enText: 'Invalid authentication code',
                                  ),
                                );
                              }
                            } else {
                              await actions.showToast(
                                FFLocalizations.of(context).getVariableText(
                                  arText: 'خطأ',
                                  enText: 'Error',
                                ),
                              );
                            }
                          } else {
                            await actions.showToast(
                              FFLocalizations.of(context).getVariableText(
                                arText: 'عذرا لا يتوفر انترنت',
                                enText: 'please check internet connection',
                              ),
                            );
                          }

                          safeSetState(() {});
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: _model.pinCodeControllerValidator
                            .asValidator(context),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Wrap(
                            spacing: 0.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              FlutterFlowTimer(
                                initialTime: FFAppState()
                                        .AppSettings
                                        .hasVCResendInSeconds()
                                    ? FFAppState().AppSettings.vCResendInSeconds
                                    : 60000,
                                getDisplayTime: (value) =>
                                    StopWatchTimer.getDisplayTime(
                                  value,
                                  hours: false,
                                  milliSecond: false,
                                ),
                                controller: _model.timerController,
                                updateStateInterval:
                                    const Duration(milliseconds: 1000),
                                onChanged: (value, displayTime, shouldUpdate) {
                                  _model.timerMilliseconds = value;
                                  _model.timerValue = displayTime;
                                  if (shouldUpdate) safeSetState(() {});
                                },
                                onEnded: () async {
                                  _model.isTimerEnded = true;
                                  safeSetState(() {});
                                },
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .headlineSmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .textColor,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmallFamily),
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Wrap(
                            spacing: 0.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              if (_model.isTimerEnded == true)
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.isNetworkAvailableOutput1 =
                                        await actions.isNetworkAvailable();
                                    if (_model.isNetworkAvailableOutput ==
                                        true) {
                                      _model.apiResultSendOTP =
                                          await AuthAndRegisterGroup
                                              .sendOTPToCustomerCall
                                              .call(
                                        msgId: functions.messageId(),
                                        idNumber: FFAppState()
                                            .AuthenticatedUser
                                            .idNumber,
                                        idType: FFAppState()
                                            .AuthenticatedUser
                                            .idType,
                                        destinationType: 'MOBILE_NUMBER',
                                        operationType: 'FORGOT_PIN',
                                        destination:
                                            '${FFAppState().AuthenticatedUser.mobileNumberPrefix}${FFAppState().AuthenticatedUser.mobileNumber}',
                                        acceptLanguage:
                                            FFLocalizations.of(context)
                                                .getVariableText(
                                          arText: 'AR',
                                          enText: 'EN',
                                        ),
                                      );

                                      if ((_model.apiResultSendOTP?.succeeded ??
                                          true)) {
                                        if (ResponseModelStruct.maybeFromMap(
                                                    (_model.apiResultSendOTP
                                                            ?.jsonBody ??
                                                        ''))
                                                ?.code ==
                                            '00') {
                                          await actions.showToast(
                                            FFLocalizations.of(context)
                                                .getVariableText(
                                              arText:
                                                  'تم إرسال رمز التحقق بنجاح  على الموبايل ${FFAppState().AuthenticatedUser.mobileNumber}',
                                              enText:
                                                  'Verification code has been sent successfully to your phone number ${FFAppState().AuthenticatedUser.mobileNumber}',
                                            ),
                                          );
                                          _model.isTimerEnded = false;
                                          safeSetState(() {});
                                          _model.timerController.onResetTimer();

                                          _model.timerController.onStartTimer();
                                        } else {
                                          await actions.showToast(
                                            FFLocalizations.of(context)
                                                .getVariableText(
                                              arText: 'فشل إرسال رمز التحقق',
                                              enText:
                                                  'Failed to send verification code.',
                                            ),
                                          );
                                        }
                                      } else {
                                        await actions.showToast(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            arText: 'فشل إرسال رمز التحقق',
                                            enText:
                                                'Failed to send verification code.',
                                          ),
                                        );
                                      }
                                    } else {
                                      await actions.showToast(
                                        FFLocalizations.of(context)
                                            .getVariableText(
                                          arText:
                                              'عذرا لا يوجد اتصال بالانترنت',
                                          enText:
                                              'Sorry, no internet connection.',
                                        ),
                                      );
                                    }

                                    safeSetState(() {});
                                  },
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ucahdamy' /* إعادة إرسال رمز التحقق */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .textColor,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
