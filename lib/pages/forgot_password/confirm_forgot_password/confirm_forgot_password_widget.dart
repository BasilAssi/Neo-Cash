import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/single_btn_component/single_btn_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'confirm_forgot_password_model.dart';
export 'confirm_forgot_password_model.dart';

class ConfirmForgotPasswordWidget extends StatefulWidget {
  const ConfirmForgotPasswordWidget({super.key});

  @override
  State<ConfirmForgotPasswordWidget> createState() =>
      _ConfirmForgotPasswordWidgetState();
}

class _ConfirmForgotPasswordWidgetState
    extends State<ConfirmForgotPasswordWidget> {
  late ConfirmForgotPasswordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmForgotPasswordModel());

    _model.newPassTextFieldTextController ??= TextEditingController();
    _model.newPassTextFieldFocusNode ??= FocusNode();

    _model.confirmNewPassTextFieldTextController ??= TextEditingController();
    _model.confirmNewPassTextFieldFocusNode ??= FocusNode();
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
        body: Stack(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 0.5,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
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
              child: Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
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
                                    '2sb6pvno' /* تغيير كلمة المرور */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .textAppbarColor,
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.newPassTextFieldTextController,
                            focusNode: _model.newPassTextFieldFocusNode,
                            autofocus: true,
                            textCapitalization: TextCapitalization.sentences,
                            obscureText: !_model.newPassTextFieldVisibility,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'edqpsq9u' /* كلمة المرور الجديدة */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color:
                                        FlutterFlowTheme.of(context).textColor,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .textFieldBorder,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).accent4,
                              suffixIcon: InkWell(
                                onTap: () => safeSetState(
                                  () => _model.newPassTextFieldVisibility =
                                      !_model.newPassTextFieldVisibility,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  _model.newPassTextFieldVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 28.0,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                            validator: _model
                                .newPassTextFieldTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: TextFormField(
                            controller:
                                _model.confirmNewPassTextFieldTextController,
                            focusNode: _model.confirmNewPassTextFieldFocusNode,
                            autofocus: true,
                            textCapitalization: TextCapitalization.sentences,
                            obscureText:
                                !_model.confirmNewPassTextFieldVisibility,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'l3y5xzu3' /* تأكيد كلمة المرور الجديدة */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color:
                                        FlutterFlowTheme.of(context).textColor,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color:
                                        FlutterFlowTheme.of(context).textColor,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .textFieldBorder,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).accent4,
                              suffixIcon: InkWell(
                                onTap: () => safeSetState(
                                  () => _model
                                          .confirmNewPassTextFieldVisibility =
                                      !_model.confirmNewPassTextFieldVisibility,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  _model.confirmNewPassTextFieldVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: FlutterFlowTheme.of(context).textColor,
                                  size: 28.0,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                            validator: _model
                                .confirmNewPassTextFieldTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Builder(
                            builder: (context) => Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 100.0, 0.0, 40.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (_model.formKey.currentState == null ||
                                      !_model.formKey.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  if (_model.newPassTextFieldTextController
                                          .text ==
                                      _model
                                          .confirmNewPassTextFieldTextController
                                          .text) {
                                    _model.isNetworkAvailableOutput =
                                        await actions.isNetworkAvailable();
                                    if (_model.isNetworkAvailableOutput ==
                                        true) {
                                      _model.apiResultForgotPassword =
                                          await AuthAndRegisterGroup
                                              .forgotPasswordCall
                                              .call(
                                        msgId: functions.messageId(),
                                        idNumber: FFAppState()
                                            .forgotPasswordData
                                            .idNumber,
                                        idType: FFAppState()
                                            .forgotPasswordData
                                            .idType,
                                        newPassword: _model
                                            .newPassTextFieldTextController
                                            .text,
                                        otp: FFAppState()
                                            .forgotPasswordData
                                            .hashedOTP,
                                        acceptLanguage:
                                            FFLocalizations.of(context)
                                                .getVariableText(
                                          arText: 'AR',
                                          enText: 'EN',
                                        ),
                                        deviceSerial: FFAppState()
                                            .deviceInformation
                                            .serial,
                                      );

                                      if ((_model.apiResultForgotPassword
                                              ?.succeeded ??
                                          true)) {
                                        if (ResponseModelStruct.maybeFromMap(
                                                    (_model.apiResultForgotPassword
                                                            ?.jsonBody ??
                                                        ''))
                                                ?.code ==
                                            '00') {
                                          FFAppState().updateAppSettingsStruct(
                                            (e) => e
                                              ..biometricEnabled = false
                                              ..numberOfBiometricFailure = 0,
                                          );
                                          safeSetState(() {});
                                          await actions.showToast(
                                            FFLocalizations.of(context)
                                                .getVariableText(
                                              arText:
                                                  'تم تغير كلمة المرور بنجاح',
                                              enText:
                                                  'Password has been changed successfully.',
                                            ),
                                          );

                                          context.pushNamed('login');
                                        } else {
                                          if (ResponseModelStruct.maybeFromMap(
                                                      (_model.apiResultForgotPassword
                                                              ?.jsonBody ??
                                                          ''))
                                                  ?.code ==
                                              '1608') {
                                            await actions.showToast(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                arText:
                                                    'تم استخدام كلمة المرور من قبل',
                                                enText:
                                                    'Password is used before',
                                              ),
                                            );
                                          } else if (ResponseModelStruct
                                                      .maybeFromMap((_model
                                                              .apiResultForgotPassword
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
                                                  insetPadding: EdgeInsets.zero,
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
                                                              _model.apiResultSendOTPPass =
                                                                  await AuthAndRegisterGroup
                                                                      .sendOTPToCustomerCall
                                                                      .call(
                                                                msgId: functions
                                                                    .messageId(),
                                                                idNumber: FFAppState()
                                                                    .forgotPasswordData
                                                                    .idNumber,
                                                                destination:
                                                                    '${FFAppState().forgotPasswordData.prefixMobile}${FFAppState().forgotPasswordData.mobileNumber}',
                                                                destinationType:
                                                                    'MOBILE_NUMBER',
                                                                operationType:
                                                                    'FORGOT_PASSWORD',
                                                                acceptLanguage:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getVariableText(
                                                                  arText: 'AR',
                                                                  enText: 'EN',
                                                                ),
                                                                idType: FFAppState()
                                                                    .forgotPasswordData
                                                                    .idType,
                                                              );

                                                              if ((_model
                                                                      .apiResultSendOTPPass
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                if (ResponseModelStruct.maybeFromMap((_model.apiResultSendOTPPass?.jsonBody ??
                                                                            ''))
                                                                        ?.code ==
                                                                    '00') {
                                                                  context.pushNamed(
                                                                      'otp_phone_forgot_password');
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
                                                arText:
                                                    'فشل محاولة تغير كلمة المرور',
                                                enText:
                                                    'Password change attempt failed',
                                              ),
                                            );
                                          }
                                        }
                                      } else {
                                        if (ResponseModelStruct.maybeFromMap(
                                                    (_model.apiResultForgotPassword
                                                            ?.jsonBody ??
                                                        ''))
                                                ?.code ==
                                            '1608') {
                                          await actions.showToast(
                                            FFLocalizations.of(context)
                                                .getVariableText(
                                              arText:
                                                  'تم استخدام كلمة المرور من قبل',
                                              enText: 'Password is used before',
                                            ),
                                          );
                                        } else {
                                          await actions.showToast(
                                            FFLocalizations.of(context)
                                                .getVariableText(
                                              arText:
                                                  'فشل محاولة تغير كلمة المرور',
                                              enText:
                                                  'Password change attempt failed',
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
                                      FFLocalizations.of(context)
                                          .getVariableText(
                                        arText: 'كلمات المرور غير متطابقة',
                                        enText: 'passwords do not match.',
                                      ),
                                    );
                                  }

                                  safeSetState(() {});
                                },
                                text: FFLocalizations.of(context).getText(
                                  'corv76m6' /* تأكيد */,
                                ),
                                options: FFButtonOptions(
                                  width: MediaQuery.sizeOf(context).width * 0.9,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.06,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: Colors.white,
                                        fontSize: 24.0,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
