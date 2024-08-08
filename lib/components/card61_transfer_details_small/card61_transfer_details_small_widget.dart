import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'card61_transfer_details_small_model.dart';
export 'card61_transfer_details_small_model.dart';

class Card61TransferDetailsSmallWidget extends StatefulWidget {
  const Card61TransferDetailsSmallWidget({super.key});

  @override
  State<Card61TransferDetailsSmallWidget> createState() =>
      _Card61TransferDetailsSmallWidgetState();
}

class _Card61TransferDetailsSmallWidgetState
    extends State<Card61TransferDetailsSmallWidget> {
  late Card61TransferDetailsSmallModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Card61TransferDetailsSmallModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      constraints: const BoxConstraints(
        maxWidth: 570.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primary,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'cyiq8fob' /* يبدو انه الشخص عند أكثر من بطا... */,
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            color: FlutterFlowTheme.of(context).textColor,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelLargeFamily),
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'nm3mpspk' /* يرجى ادخال اخر اربع ارقام  من ... */,
                      ),
                      textAlign: TextAlign.end,
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).displaySmallFamily,
                            color: FlutterFlowTheme.of(context).textColor,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context)
                                    .displaySmallFamily),
                          ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
              ),
              Divider(
                height: 2.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: PinCodeTextField(
                  autoDisposeControllers: false,
                  appContext: context,
                  length: 4,
                  textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyLargeFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyLargeFamily),
                      ),
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  enableActiveFill: false,
                  autoFocus: true,
                  enablePinAutofill: false,
                  errorTextSpace: 16.0,
                  showCursor: true,
                  cursorColor: FlutterFlowTheme.of(context).primary,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    fieldHeight: 44.0,
                    fieldWidth: 44.0,
                    borderWidth: 2.0,
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
                    activeFillColor: FlutterFlowTheme.of(context).primaryText,
                    inactiveFillColor: FlutterFlowTheme.of(context).alternate,
                    selectedFillColor: FlutterFlowTheme.of(context).primary,
                  ),
                  controller: _model.pinCodeController,
                  onChanged: (_) {},
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator:
                      _model.pinCodeControllerValidator.asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: FFLocalizations.of(context).getText(
                          'sgku2hqq' /* تأكيد */,
                        ),
                        options: FFButtonOptions(
                          height: 50.0,
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
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          elevation: 4.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                          hoverColor: FlutterFlowTheme.of(context).accent1,
                          hoverBorderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                          hoverTextColor:
                              FlutterFlowTheme.of(context).primaryText,
                          hoverElevation: 2.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: FFLocalizations.of(context).getText(
                          '3zrntypz' /* إلغاء */,
                        ),
                        options: FFButtonOptions(
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).info,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).textColor,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).textFieldBorder,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                          hoverColor:
                              FlutterFlowTheme.of(context).contianerColor,
                          hoverBorderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).textFieldBorder,
                            width: 1.0,
                          ),
                          hoverTextColor:
                              FlutterFlowTheme.of(context).primaryText,
                          hoverElevation: 2.0,
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(width: 16.0)),
                ),
              ),
            ].divide(const SizedBox(height: 4.0)).addToEnd(const SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
