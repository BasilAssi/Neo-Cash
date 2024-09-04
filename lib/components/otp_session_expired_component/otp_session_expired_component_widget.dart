import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'otp_session_expired_component_model.dart';
export 'otp_session_expired_component_model.dart';

class OtpSessionExpiredComponentWidget extends StatefulWidget {
  /// this component used  expired otp  ,  other errors
  const OtpSessionExpiredComponentWidget({super.key});

  @override
  State<OtpSessionExpiredComponentWidget> createState() =>
      _OtpSessionExpiredComponentWidgetState();
}

class _OtpSessionExpiredComponentWidgetState
    extends State<OtpSessionExpiredComponentWidget> {
  late OtpSessionExpiredComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpSessionExpiredComponentModel());
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
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.9,
        height: MediaQuery.sizeOf(context).height * 1.0,
        child: Stack(
          alignment: const AlignmentDirectional(0.0, 0.0),
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.7,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '7qtlctjf' /* انتهت صلاحية رمز التحقق، الرجا... */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color:
                                        FlutterFlowTheme.of(context).textColor,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 30.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  _model.isNetworkAvaiableOutPut =
                                      await actions.isNetworkAvailable();
                                  if (_model.isNetworkAvaiableOutPut == true) {
                                    _model.apiResultSendOTPSelfReg =
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
                                      operationType: 'REGISTER_CUSTOMER',
                                      acceptLanguage:
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                        arText: 'AR',
                                        enText: 'EN',
                                      ),
                                    );

                                    context
                                        .pushNamed('otp_does_not_exist_flow');
                                  } else {
                                    await actions.showToast(
                                      FFLocalizations.of(context)
                                          .getVariableText(
                                        arText: 'عذرا لا يوجد اتصال بالانترنت',
                                        enText:
                                            'Sorry, no internet connection.',
                                      ),
                                    );
                                  }

                                  setState(() {});
                                },
                                text: FFLocalizations.of(context).getText(
                                  'weybzccb' /* موافق */,
                                ),
                                options: FFButtonOptions(
                                  width: 250.0,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: Colors.white,
                                        letterSpacing: 0.0,
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
                                  borderRadius: BorderRadius.circular(8.0),
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
          ],
        ),
      ),
    );
  }
}
