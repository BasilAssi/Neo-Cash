import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/single_btn_component/single_btn_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'set_pin_forgot_pin_model.dart';
export 'set_pin_forgot_pin_model.dart';

class SetPinForgotPinWidget extends StatefulWidget {
  const SetPinForgotPinWidget({super.key});

  @override
  State<SetPinForgotPinWidget> createState() => _SetPinForgotPinWidgetState();
}

class _SetPinForgotPinWidgetState extends State<SetPinForgotPinWidget> {
  late SetPinForgotPinModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetPinForgotPinModel());
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
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 32.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'wwmjyqx9' /*  نسيت الرمز السري؟ */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          color: FlutterFlowTheme.of(context).textAppbarColor,
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context)
                                  .headlineMediumFamily),
                        ),
                  ),
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 36.0, 0.0, 0.0),
            child: Container(
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
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 30.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/pin-set.png',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'pfhb06nu' /* أدخل الرمز السري الجديد الخاص ... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .displaySmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .textColor,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .displaySmallFamily),
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: PinCodeTextField(
                                autoDisposeControllers: false,
                                appContext: context,
                                length: 4,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily),
                                    ),
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                enableActiveFill: false,
                                autoFocus: true,
                                enablePinAutofill: false,
                                errorTextSpace: 16.0,
                                showCursor: true,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primary,
                                obscureText: false,
                                keyboardType: TextInputType.number,
                                pinTheme: PinTheme(
                                  fieldHeight: 44.0,
                                  fieldWidth: 44.0,
                                  borderWidth: 1.0,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                  ),
                                  shape: PinCodeFieldShape.box,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  inactiveColor: FlutterFlowTheme.of(context)
                                      .textFieldBorder,
                                  selectedColor:
                                      FlutterFlowTheme.of(context).primary,
                                ),
                                controller: _model.pinCodeController,
                                onChanged: (_) {},
                                autovalidateMode: AutovalidateMode.disabled,
                                validator: _model.pinCodeControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '82drjyts' /* الرمز المكون من 4 أرقام سيستخد... */,
                                ),
                                textAlign: TextAlign.justify,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .textAppbarColor,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 100.0, 0.0, 8.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      _model.isValidPINResult =
                                          await actions.isValidPIN(
                                        _model.pinCodeController!.text,
                                        FFLocalizations.of(context)
                                            .languageCode,
                                      );
                                      if (_model.isValidPINResult == 'true') {
                                        _model.isNetworkAvailableOutput =
                                            await actions.isNetworkAvailable();
                                        if (_model.isNetworkAvailableOutput ==
                                            true) {
                                          _model.apiResultForGotPass =
                                              await CardGroup
                                                  .forgotDevicePinCall
                                                  .call(
                                            msgId: functions.messageId(),
                                            idNumber: FFAppState()
                                                .forgotPinData
                                                .idNumber,
                                            idType: FFAppState()
                                                .forgotPinData
                                                .idType,
                                            birthDate: FFAppState()
                                                .forgotPinData
                                                .dateOfBirth,
                                            password: FFAppState()
                                                .forgotPinData
                                                .currentPassword,
                                            newPin:
                                                _model.pinCodeController!.text,
                                            otp: FFAppState()
                                                .forgotPinData
                                                .hashedOTP,
                                            token: FFAppState()
                                                .AuthenticatedUser
                                                .accessToken,
                                            acceptLanguage:
                                                FFLocalizations.of(context)
                                                    .getVariableText(
                                              arText: 'AR',
                                              enText: 'EN',
                                            ),
                                          );

                                          if ((_model.apiResultForGotPass
                                                  ?.succeeded ??
                                              true)) {
                                            if (ResponseModelStruct.maybeFromMap(
                                                        (_model.apiResultForGotPass
                                                                ?.jsonBody ??
                                                            ''))
                                                    ?.code ==
                                                '00') {
                                              await actions.showToast(
                                                FFLocalizations.of(context)
                                                    .getVariableText(
                                                  arText:
                                                      'تم تغير الرمز السري بنجاح',
                                                  enText:
                                                      'The pin code has been changed successfully.',
                                                ),
                                              );
                                              FFAppState().forgotPinData =
                                                  ForgotPinFormDataStruct();

                                              context.pushNamed('home_page');
                                            } else {
                                              await actions.showToast(
                                                FFLocalizations.of(context)
                                                    .getVariableText(
                                                  arText:
                                                      'فشل تغير الرمز السري',
                                                  enText:
                                                      'Failed to change pin code.',
                                                ),
                                              );
                                            }
                                          } else {
                                            if (ResponseModelStruct.maybeFromMap(
                                                        (_model.apiResultForGotPass
                                                                ?.jsonBody ??
                                                            ''))
                                                    ?.code ==
                                                '1717') {
                                              await actions.showToast(
                                                FFLocalizations.of(context)
                                                    .getVariableText(
                                                  arText:
                                                      'الرجاء التاكد من القيم التي قمت بادخالها',
                                                  enText:
                                                      'Please check the values ​​you entered.',
                                                ),
                                              );
                                            } else if (ResponseModelStruct
                                                        .maybeFromMap((_model
                                                                .apiResultForGotPass
                                                                ?.jsonBody ??
                                                            ''))
                                                    ?.code ==
                                                '1605') {
                                              await showDialog(
                                                barrierDismissible: false,
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        const AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: WebViewAware(
                                                      child: GestureDetector(
                                                        onTap: () =>
                                                            FocusScope.of(
                                                                    dialogContext)
                                                                .unfocus(),
                                                        child: SizedBox(
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.4,
                                                          child:
                                                              SingleBtnComponentWidget(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getVariableText(
                                                              arText:
                                                                  'انتهت صلاحية رمز التحقق، الرجاء إدخال رمز التحقق مرة أخرى',
                                                              enText:
                                                                  'Session expired, please enter the OTP again',
                                                            ),
                                                            textBtn: FFLocalizations
                                                                    .of(context)
                                                                .getVariableText(
                                                              arText: 'موافق',
                                                              enText: 'ok',
                                                            ),
                                                            action: () async {
                                                              _model.isNetworkAvailableOutput1 =
                                                                  await actions
                                                                      .isNetworkAvailable();
                                                              if (_model
                                                                      .isNetworkAvailableOutput1 ==
                                                                  true) {
                                                                _model.apiResultSendOTP =
                                                                    await AuthAndRegisterGroup
                                                                        .sendOTPToCustomerCall
                                                                        .call(
                                                                  msgId: functions
                                                                      .messageId(),
                                                                  idNumber: FFAppState()
                                                                      .forgotPinData
                                                                      .idNumber,
                                                                  idType: FFAppState()
                                                                      .forgotPinData
                                                                      .idType,
                                                                  destination:
                                                                      '${FFAppState().AuthenticatedUser.mobileNumberPrefix}${FFAppState().AuthenticatedUser.mobileNumber}',
                                                                  destinationType:
                                                                      'MOBILE_NUMBER',
                                                                  operationType:
                                                                      'FORGOT_PIN',
                                                                  acceptLanguage:
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getVariableText(
                                                                    arText:
                                                                        'AR',
                                                                    enText:
                                                                        'EN',
                                                                  ),
                                                                );

                                                                if ((_model
                                                                        .apiResultSendOTP
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  if (ResponseModelStruct.maybeFromMap((_model.apiResultSendOTP?.jsonBody ??
                                                                              ''))
                                                                          ?.code ==
                                                                      '00') {
                                                                    context.pushNamed(
                                                                        'otp_phone_forgot_pin');
                                                                  } else if (ResponseModelStruct.maybeFromMap((_model.apiResultSendOTP?.jsonBody ??
                                                                              ''))
                                                                          ?.code ==
                                                                      '1607') {
                                                                    context.pushNamed(
                                                                        'otp_phone_forgot_pin');
                                                                  } else {
                                                                    await actions
                                                                        .showToast(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getVariableText(
                                                                        arText:
                                                                            'فشل إرسال رمز التحقق',
                                                                        enText:
                                                                            'Failed to send verification code.',
                                                                      ),
                                                                    );
                                                                  }
                                                                } else {
                                                                  await actions
                                                                      .showToast(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getVariableText(
                                                                      arText:
                                                                          'خطأ',
                                                                      enText:
                                                                          'error',
                                                                    ),
                                                                  );
                                                                }
                                                              } else {
                                                                await actions
                                                                    .showToast(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getVariableText(
                                                                    arText:
                                                                        'عذرا لا يوجد اتصال بالانترنت',
                                                                    enText:
                                                                        'Sorry, no internet connection.',
                                                                  ),
                                                                );
                                                              }
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            } else {
                                              await actions.showToast(
                                                FFLocalizations.of(context)
                                                    .getVariableText(
                                                  arText: 'خطأ',
                                                  enText: 'error',
                                                ),
                                              );
                                            }
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
                                      } else {
                                        await actions.showToast(
                                          _model.isValidPINResult,
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'ju2oiiam' /* تأكيد */,
                                    ),
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.9,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.06,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
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
          ),
        ),
      ),
    );
  }
}
