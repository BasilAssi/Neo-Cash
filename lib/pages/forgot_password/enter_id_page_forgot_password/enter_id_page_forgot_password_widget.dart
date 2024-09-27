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
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'enter_id_page_forgot_password_model.dart';
export 'enter_id_page_forgot_password_model.dart';

class EnterIdPageForgotPasswordWidget extends StatefulWidget {
  const EnterIdPageForgotPasswordWidget({super.key});

  @override
  State<EnterIdPageForgotPasswordWidget> createState() =>
      _EnterIdPageForgotPasswordWidgetState();
}

class _EnterIdPageForgotPasswordWidgetState
    extends State<EnterIdPageForgotPasswordWidget> {
  late EnterIdPageForgotPasswordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextInputType _keyboardType = TextInputType.number;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnterIdPageForgotPasswordModel());

    _model.idNumberTextFieldTextController ??= TextEditingController();
    _model.idNumberTextFieldFocusNode ??= FocusNode();
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
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          context.pop();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Align(
          alignment: const AlignmentDirectional(0.0, -1.0),
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'bvpaznti' /*   هويتك الشخصية */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          color: FlutterFlowTheme.of(context).textAppbarColor,
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context)
                                  .headlineMediumFamily),
                        ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 8.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'ot6z8cbr' /* الرجاء اختيار نوع وثيقتك  الشخ... */,
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleSmallFamily),
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.idTypeDropDownValueController ??=
                          FormFieldController<String>(
                        _model.idTypeDropDownValue ??= 'NATIONAL',
                      ),
                      options: List<String>.from(
                          ['NATIONAL', 'JERUSALEM', 'OCCUPIED_ID', 'PASSPORT']),
                      optionLabels: [
                        FFLocalizations.of(context).getText(
                          '382qm4sy' /* الهوية  الفلسطينية */,
                        ),
                        FFLocalizations.of(context).getText(
                          '1sxsz5bu' /* هوية القدس */,
                        ),
                        FFLocalizations.of(context).getText(
                          '7b0t6go8' /* هوية 48 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'fti5wvz8' /* جواز السفر */,
                        )
                      ],
                      onChanged: (val) {
                        safeSetState(() {
                          _keyboardType = (val == 'PASSPORT')
                              ? TextInputType.text // Text keyboard for passport
                              : TextInputType.number;
                          _model.idTypeDropDownValue = val;
                        });
                      },
                      width: 300.0,
                      height: 56.0,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).textColor,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                      hintText: FFLocalizations.of(context).getText(
                        '9mp5d3qd' /* اختيار نوع الهوية  */,
                      ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 2.0,
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderWidth: 2.0,
                      borderRadius: 8.0,
                      margin:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isOverButton: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 8.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'at1quu1z' /* الرجاء إدخال رقم الوثيقة بشكل ... */,
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleSmallFamily),
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: _model.idNumberTextFieldTextController,
                      focusNode: _model.idNumberTextFieldFocusNode,
                      autofocus: true,
                      textCapitalization: TextCapitalization.sentences,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: false,
                        labelText: FFLocalizations.of(context).getText(
                          'lonwiwbb' /*  رقم الوثيقة */,
                        ),
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).textFieldBorder,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).accent4,
                        suffixIcon: Icon(
                          Icons.content_paste_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 28.0,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                        keyboardType: _keyboardType,
                      validator: _model.idNumberTextFieldTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (functions.isIDNumberValid(
                                  _model.idNumberTextFieldTextController.text,
                                  _model.idTypeDropDownValue) ==
                              true) {
                            _model.isNetworkAvailableOutput1 =
                                await actions.isNetworkAvailable();
                            if (_model.isNetworkAvailableOutput1!) {
                              _model.isRegisteredOutPut =
                                  await AuthAndRegisterGroup.isRegisteredCall
                                      .call(
                                msgId: functions.messageId(),
                                idNumber:
                                    _model.idNumberTextFieldTextController.text,
                                idType: _model.idTypeDropDownValue,
                                acceptLanguage:
                                    FFLocalizations.of(context).getVariableText(
                                  arText: 'AR',
                                  enText: 'EN',
                                ),
                                deviceSerial:
                                    FFAppState().deviceInformation.hasSerial()
                                        ? FFAppState().deviceInformation.serial
                                        : '',
                              );
                              String? customerStatus = IsRegisteredCall().customerStatus(_model.isRegisteredOutPut?.jsonBody);
                              if ((_model.isRegisteredOutPut?.succeeded ??
                                  true)) {
                                if (ResponseModelStruct.maybeFromMap((_model
                                                .isRegisteredOutPut?.jsonBody ??
                                            ''))
                                        ?.status ==
                                    true) {
                                   if (customerStatus != 'DEACTIVATED' && customerStatus != 'REJECTED'){
                                  //                                   if (IsRegisteredCall().isDeviceRegistered(_model.isRegisteredOutPut?.jsonBody) ==
                                  //                                                                         true)
                                  // if ((ResponseModelStruct.maybeFromMap((_model
                                  //                     .isRegisteredOutPut
                                  //                     ?.jsonBody ??
                                  //                 ''))
                                  //             ?.customerStatus !=
                                  //         'DEACTIVATED') &&
                                  //     (ResponseModelStruct.maybeFromMap((_model
                                  //                     .isRegisteredOutPut
                                  //                     ?.jsonBody ??
                                  //                 ''))
                                  //             ?.customerStatus !=
                                  //         'REJECTED')) {
                                    // if (IsRegisteredCall().isDeviceRegistered(_model.isRegisteredOutPut?.jsonBody) ==
                                    //                                       false)

                                    // if (AuthenticatedUserStruct.maybeFromMap(
                                    //             (_model.isRegisteredOutPut
                                    //                     ?.jsonBody ??
                                    //                 ''))
                                    //         ?.isDeviceRegistered ==
                                    //     true) {

                                  if (IsRegisteredCall().isDeviceRegistered(_model.isRegisteredOutPut?.jsonBody) ==
                                  true){
                                      FFAppState()
                                          .updateForgotPasswordDataStruct(
                                        (e) => e
                                          ..prefixMobile = AuthAndRegisterGroup
                                              .isRegisteredCall
                                              .mobileNumberPrefix(
                                            (_model.isRegisteredOutPut
                                                    ?.jsonBody ??
                                                ''),
                                          )
                                          ..mobileNumber = AuthAndRegisterGroup
                                              .isRegisteredCall
                                              .mobileNumber(
                                            (_model.isRegisteredOutPut
                                                    ?.jsonBody ??
                                                ''),
                                          )
                                          ..idType = _model.idTypeDropDownValue
                                          ..idNumber = _model
                                              .idNumberTextFieldTextController
                                              .text,
                                      );
                                      safeSetState(() {});
                                      _model.apiResultSendOTPPass =
                                          await AuthAndRegisterGroup
                                              .sendOTPToCustomerCall
                                              .call(
                                        msgId: functions.messageId(),
                                        idNumber: FFAppState()
                                            .forgotPasswordData
                                            .idNumber,
                                        destination:
                                            '${FFAppState().forgotPasswordData.prefixMobile}${FFAppState().forgotPasswordData.mobileNumber}',
                                        destinationType: 'MOBILE_NUMBER',
                                        operationType: 'FORGOT_PASSWORD',
                                        acceptLanguage:
                                            FFLocalizations.of(context)
                                                .getVariableText(
                                          arText: 'AR',
                                          enText: 'EN',
                                        ),
                                        idType: FFAppState()
                                            .forgotPasswordData
                                            .idType,
                                      );

                                        if ((_model.apiResultSendOTPPass
                                                ?.succeeded ??
                                            true)) {
                                          if ((ResponseModelStruct.maybeFromMap(
                                                          (_model.apiResultSendOTPPass
                                                                  ?.jsonBody ??
                                                              ''))
                                                      ?.code ==
                                                  '00') ||
                                              (ResponseModelStruct.maybeFromMap(
                                                          (_model.apiResultSendOTPPass
                                                                  ?.jsonBody ??
                                                              ''))
                                                      ?.code ==
                                                  '1607')) {
                                            context.pushNamed(
                                                'otp_phone_forgot_password');
                                          } else {
                                            await actions.showToast(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                arText: 'خطأ',
                                                enText: 'error',
                                              ),
                                            );
                                          }
                                        } else {
                                          await actions.showToast(
                                            FFLocalizations.of(context)
                                                .getVariableText(
                                              arText: 'خطأ',
                                              enText: 'error',
                                            ),
                                          );
                                        }
                                      } else {
                                        FFAppState()
                                            .updateRegisterationFormDataStruct(
                                          (e) => e
                                            ..isRegisteredStatus = true
                                            ..email = AuthAndRegisterGroup
                                                .isRegisteredCall
                                                .emailAddress(
                                              (_model.isRegisteredOutPut
                                                      ?.jsonBody ??
                                                  ''),
                                            )
                                            ..mobileNumber =
                                                AuthAndRegisterGroup
                                                    .isRegisteredCall
                                                    .mobileNumber(
                                              (_model.isRegisteredOutPut
                                                      ?.jsonBody ??
                                                  ''),
                                            )
                                            ..prefixMobile =
                                                AuthAndRegisterGroup
                                                    .isRegisteredCall
                                                    .mobileNumberPrefix(
                                              (_model.isRegisteredOutPut
                                                      ?.jsonBody ??
                                                  ''),
                                            )
                                            ..customerId = AuthAndRegisterGroup
                                                .isRegisteredCall
                                                .customerId(
                                                  (_model.isRegisteredOutPut
                                                          ?.jsonBody ??
                                                      ''),
                                                )
                                                .toString()
                                            ..idNumber = _model
                                                .idNumberTextFieldTextController
                                                .text
                                            ..idType =
                                                _model.idTypeDropDownValue,
                                        );
                                        safeSetState(() {});
                                        _model.apiResultSendOTP =
                                            await AuthAndRegisterGroup
                                                .sendOTPToCustomerCall
                                                .call(
                                          msgId: functions.messageId(),
                                          idNumber: FFAppState()
                                              .registerationFormData
                                              .idNumber,
                                          idType: FFAppState()
                                              .registerationFormData
                                              .idType,
                                          destination:
                                              '${FFAppState().registerationFormData.prefixMobile}${FFAppState().registerationFormData.mobileNumber}',
                                          destinationType: 'MOBILE_NUMBER',
                                          operationType: 'REGISTER_DEVICE',
                                        );

                                        if ((_model
                                                .apiResultSendOTP?.succeeded ??
                                            true)) {
                                          // fromExistFlow
                                          //
                                          // used for manage the route
                                          // in set password exist flow
                                          // if value equal 0  its from here
                                          FFAppState().updateAppSettingsStruct(
                                            (e) => e..routeNavigationg = '0',
                                          );
                                          safeSetState(() {});

                                          context.pushNamed(
                                              'otp_does_not_exist_flow');
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
                                              'تم إغلاق حسابك، يرجى الاتصال بـ نيوكاش',
                                          enText:
                                              'Your account is closed, please contact neocash.',
                                        ),
                                      );
                                    }
                                  } else {
                                    FFAppState()
                                        .updateRegisterationFormDataStruct(
                                      (e) => e
                                        ..isRegisteredStatus = false
                                        ..customerId = AuthAndRegisterGroup
                                            .isRegisteredCall
                                            .customerId(
                                              (_model.isRegisteredOutPut
                                                      ?.jsonBody ??
                                                  ''),
                                            )
                                            .toString(),
                                    );
                                    safeSetState(() {});

                                    context.pushNamed('phone_number');
                                  }
                                } else if (ResponseModelStruct.maybeFromMap(
                                            (_model.isRegisteredOutPut
                                                    ?.jsonBody ??
                                                ''))
                                        ?.code ==
                                    '1525') {
                                  await actions.showToast(
                                    FFLocalizations.of(context).getVariableText(
                                      arText:
                                          'لا يمكن استرجاع كلمة المرور للحساب من خلال جهاز غير مسجل',
                                      enText:
                                          'Account password cannot be retrieved from an unregistered device.',
                                    ),
                                  );

                                  context.pushNamed('login');
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'error',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                }
                              } else {
                                await actions.showToast(
                                  FFLocalizations.of(context).getVariableText(
                                    arText: 'عذرا لا يوجد اتصال بالانترنت',
                                    enText: 'Sorry, no internet connection.',
                                  ),
                                );
                              }
                            } else {
                              await actions.showToast(
                                FFLocalizations.of(context).getVariableText(
                                  arText: 'الرجاء ادخال رقم صالح  ',
                                  enText: 'Please enter a valid number',
                                ),
                              );
                            }

                            safeSetState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            'qge4504d' /* التالي */,
                          ),
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            height: MediaQuery.sizeOf(context).height * 0.06,
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
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
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
      ),
    );
  }
}
