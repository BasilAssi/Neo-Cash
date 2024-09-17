import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/upload_documents_component/upload_documents_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'registeration08_model.dart';
export 'registeration08_model.dart';

class Registeration08Widget extends StatefulWidget {
  const Registeration08Widget({
    super.key,
    this.fromPage,
    required this.customerId,
  });

  final String? fromPage;
  final String? customerId;

  @override
  State<Registeration08Widget> createState() => _Registeration08WidgetState();
}

class _Registeration08WidgetState extends State<Registeration08Widget> {
  late Registeration08Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Registeration08Model());
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'zwhfi7na' /* إرفاق الصور */,
                      ),
                      style: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .override(
                            fontFamily: FlutterFlowTheme.of(context)
                                .headlineMediumFamily,
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
            actions: [],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FutureBuilder<ApiCallResponse>(
                      future: FFAppState().documentsTypesAPIResponse(
                        requestFn: () =>
                            AuthAndRegisterGroup.lOOKUPsAPIsCall.call(
                          msgId: functions.messageId(),
                          type: 'DOCUMENT_TYPE',
                          acceptLanguage:
                              FFLocalizations.of(context).getVariableText(
                            arText: 'AR',
                            enText: 'EN',
                          ),
                          moduleType: 'CUSTOMER_REGISTRATION',
                        ),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        final listViewLOOKUPsAPIsResponse = snapshot.data!;

                        return Builder(
                          builder: (context) {
                            final documentTypes =
                                LookupCitiesAPIResponseStruct.maybeFromMap(
                                            listViewLOOKUPsAPIsResponse
                                                .jsonBody)
                                        ?.records
                                        ?.toList() ??
                                    [];

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: documentTypes.length,
                              itemBuilder: (context, documentTypesIndex) {
                                final documentTypesItem =
                                    documentTypes[documentTypesIndex];
                                return UploadDocumentsComponentWidget(
                                  key: Key(
                                      'Keylee_${documentTypesIndex}_of_${documentTypes.length}'),
                                  encodedId: documentTypesItem.hasEncodedId()
                                      ? documentTypesItem.encodedId
                                      : ' ',
                                  name: FFLocalizations.of(context)
                                              .languageCode ==
                                          'ar'
                                      ? (documentTypesItem.hasLocalName()
                                          ? documentTypesItem.localName
                                          : ' ')
                                      : (documentTypesItem.hasLatinName()
                                          ? documentTypesItem.latinName
                                          : ' '),
                                  description:
                                      documentTypesItem.hasDescription()
                                          ? documentTypesItem.description
                                          : ' ',
                                  moduleType: documentTypesItem.hasModuleType()
                                      ? documentTypesItem.moduleType
                                      : ' ',
                                  customerId: widget!.customerId!,
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 32.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.isNetworkAvailableOutput =
                              await actions.isNetworkAvailable();
                          if (_model.isNetworkAvailableOutput == true) {
                            _model.apiResultSendToApproval =
                                await AuthAndRegisterGroup.sendToApprovalCall
                                    .call(
                              idNumber:
                                  FFAppState().registerationFormData.idNumber,
                              idType: FFAppState().registerationFormData.idType,
                              msgId: functions.messageId(),
                            );

                            if ((_model.apiResultSendToApproval?.succeeded ??
                                true)) {
                              if (ResponseModelStruct.maybeFromMap((_model
                                              .apiResultSendToApproval
                                              ?.jsonBody ??
                                          ''))
                                      ?.code ==
                                  '00') {
                                context.pushNamed('success_page');
                              } else {
                                await actions.showToast(
                                  FFLocalizations.of(context).getVariableText(
                                    arText: 'الرجاء المحاولة مرة اخرى',
                                    enText: 'Please try again',
                                  ),
                                );
                              }
                            } else {
                              await actions.showToast(
                                FFLocalizations.of(context).getVariableText(
                                  arText: 'الرجاء إكمال تحميل الصور',
                                  enText: 'Please Complete uploading photos',
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

                          safeSetState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          'c4fvj91y' /* حفظ */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
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
