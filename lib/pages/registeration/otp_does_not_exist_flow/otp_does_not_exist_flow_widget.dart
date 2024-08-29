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
import 'otp_does_not_exist_flow_model.dart';
export 'otp_does_not_exist_flow_model.dart';

class OtpDoesNotExistFlowWidget extends StatefulWidget {
  const OtpDoesNotExistFlowWidget({super.key});

  @override
  State<OtpDoesNotExistFlowWidget> createState() =>
      _OtpDoesNotExistFlowWidgetState();
}

class _OtpDoesNotExistFlowWidgetState extends State<OtpDoesNotExistFlowWidget> {
  late OtpDoesNotExistFlowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpDoesNotExistFlowModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isTimerEnded = false;
      setState(() {});
      _model.timerController.onStartTimer();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
                                  'cvcns9e8' /* تأكيد رقم التلفون */,
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
                                      'qspd8ikt' /*  أرسلنالك رمز تحقق على تليفونك... */,
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
                                      'tcup8vos' /* 
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
                                            .registerationFormData
                                            .hasMobileNumber()
                                        ? (FFAppState()
                                                    .registerationFormData
                                                    .isRegisteredStatus ==
                                                true
                                            ? functions.maskMobileNumber(
                                                FFAppState()
                                                    .registerationFormData
                                                    .mobileNumber,
                                                FFLocalizations.of(context)
                                                    .languageCode)!
                                            : FFAppState()
                                                .registerationFormData
                                                .mobileNumber)
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
                                      'y9am0wim' /* 
 */
                                      ,
                                    ),
                                    style: const TextStyle(),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'tkx75g2g' /*   الرجاء إدخال الرمز */,
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
                          FFAppState().updateRegisterationFormDataStruct(
                            (e) => e..hashedOTP = _model.oTPHashedSHA256base64,
                          );
                          setState(() {});
                          _model.isCompleted = true;
                          setState(() {});
                          _model.isNetworkAvailableOutput =
                              await actions.isNetworkAvailable();
                          if (_model.isNetworkAvailableOutput!) {
                            _model.verifyOTPOutput =
                                await AuthAndRegisterGroup.verifyOTPCall.call(
                              destination:
                                  '${FFAppState().registerationFormData.prefixMobile}${FFAppState().registerationFormData.mobileNumber}',
                              destinationType: 'MOBILE_NUMBER',
                              msgId: functions.messageId(),
                              otp: FFAppState().registerationFormData.hashedOTP,
                              setConfirmed: 'false',
                              idType: FFAppState()
                                      .registerationFormData
                                      .hasIdType()
                                  ? FFAppState().registerationFormData.idType
                                  : '',
                              idNumber: FFAppState()
                                      .registerationFormData
                                      .hasIdNumber()
                                  ? FFAppState().registerationFormData.idNumber
                                  : '',
                              operationType: FFAppState()
                                          .registerationFormData
                                          .isRegisteredStatus ==
                                      false
                                  ? 'REGISTER_CUSTOMER'
                                  : 'REGISTER_DEVICE',
                            );
print(' code ${ResponseModelStruct.maybeFromMap(
    (_model.verifyOTPOutput?.jsonBody ??
        ''))
    ?.code}');
                            if ((_model.verifyOTPOutput?.succeeded ?? true)) {
                              if (ResponseModelStruct.maybeFromMap(
                                          (_model.verifyOTPOutput?.jsonBody ??
                                              ''))
                                      ?.code ==
                                  '00') {
                                if (FFAppState()
                                        .registerationFormData
                                        .isRegisteredStatus ==
                                    true) {
                                  context.pushNamed('set_password_exist_flow');
                                } else {
                                  context.pushNamed('registeration_01');
                                }
                              } else {
                                await actions.showToast(
                                  FFLocalizations.of(context).getVariableText(
                                    arText: 'رمز المصادقة غير صحيح',
                                    enText: 'Invalid authentication code',
                                  ),
                                );
                              }
                            } else {
                              if (ResponseModelStruct.maybeFromMap(
                                          (_model.verifyOTPOutput?.jsonBody ??
                                              ''))
                                      ?.code ==
                                  '1505') {
                                await actions.showToast(
                                  FFLocalizations.of(context).getVariableText(
                                    arText: 'رقم الهاتف مسجل بالفعل',
                                    enText: 'Phone number already registered',
                                  ),
                                );
                                context.safePop();
                              } else {
                                await actions.showToast(
                                  FFLocalizations.of(context).getVariableText(
                                    arText: 'خطأ',
                                    enText: 'Error',
                                  ),
                                );
                              }
                            }
                          } else {
                            await actions.showToast(
                              FFLocalizations.of(context).getVariableText(
                                arText: 'عذرا لا يتوفر انترنت',
                                enText: 'please check internet connection',
                              ),
                            );
                          }

                          setState(() {});
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
                                initialTime: _model.timerInitialTimeMs,
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
                                  if (shouldUpdate) setState(() {});
                                },
                                onEnded: () async {
                                  _model.isTimerEnded = true;
                                  setState(() {});
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
                                    _model.isTimerEnded = false;
                                    setState(() {});
                                    _model.timerController.onResetTimer();

                                    _model.timerController.onStartTimer();
                                  },
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'qzqkzusk' /* إعادة إرسال رمز التحقق */,
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
