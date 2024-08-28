import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'block_card_component_model.dart';
export 'block_card_component_model.dart';

class BlockCardComponentWidget extends StatefulWidget {
  /// this component used  for confirm to block the card
  const BlockCardComponentWidget({super.key});

  @override
  State<BlockCardComponentWidget> createState() =>
      _BlockCardComponentWidgetState();
}

class _BlockCardComponentWidgetState extends State<BlockCardComponentWidget> {
  late BlockCardComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlockCardComponentModel());
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
                height: MediaQuery.sizeOf(context).height * 0.45,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
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
                                '7xsfy4k8' /* هل أنت متأكد من أنك تريد قفل ه... */,
                              ),
                              textAlign: TextAlign.justify,
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
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        _model.isNetworkAvailableOutput =
                                            await actions.isNetworkAvailable();
                                        if (_model.isNetworkAvailableOutput ==
                                            true) {
                                          _model.apiResultBlockCard =
                                              await CardGroup
                                                  .changeCardStatusCall
                                                  .call(
                                            msgId: functions.messageId(),
                                            cardToken: functions.getCardToken(
                                                FFAppState()
                                                    .AuthenticatedUser
                                                    .idNumber,
                                                FFAppState()
                                                    .cardData
                                                    .expiryDate,
                                                functions.getLast4Digits(
                                                    FFAppState()
                                                        .cardData
                                                        .cardNumber)),
                                            status: 'BLOCKED',
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

                                          if ((_model.apiResultBlockCard
                                                  ?.succeeded ??
                                              true)) {
                                            if (ResponseModelStruct.maybeFromMap(
                                                        (_model.apiResultBlockCard
                                                                ?.jsonBody ??
                                                            ''))
                                                    ?.code ==
                                                '00') {
                                              await actions.showToast(
                                                FFLocalizations.of(context)
                                                    .getVariableText(
                                                  arText:
                                                      'تم قفل البطاقة بنجاح ',
                                                  enText:
                                                      'Card has been successfully locked.',
                                                ),
                                              );
                                              FFAppState().updateCardDataStruct(
                                                (e) => e..status = 'BLOCKED',
                                              );
                                              FFAppState().update(() {});
                                              Navigator.pop(context);
                                            } else {
                                              Navigator.pop(context);
                                              await actions.showToast(
                                                FFLocalizations.of(context)
                                                    .getVariableText(
                                                  arText: 'خطأ',
                                                  enText: 'error',
                                                ),
                                              );
                                            }
                                          } else {
                                            Navigator.pop(context);
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
                                              arText:
                                                  'عذرا لا يوجد اتصال بالانترنت',
                                              enText:
                                                  'Sorry, no internet connection.',
                                            ),
                                          );
                                        }

                                        setState(() {});
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'ec1qwqbv' /* نعم */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 250.0,
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      Navigator.pop(context);
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'fn8r00q7' /* لا */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 250.0,
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
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
                              ].divide(const SizedBox(width: 16.0)),
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
