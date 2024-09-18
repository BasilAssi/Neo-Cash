import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_lists/empty_list_of_transactions/empty_list_of_transactions_widget.dart';
import '/components/shimmer/shimmer_component_list_transactions/shimmer_component_list_transactions_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_list_transaction_component_model.dart';
export 'home_page_list_transaction_component_model.dart';

class HomePageListTransactionComponentWidget extends StatefulWidget {
  const HomePageListTransactionComponentWidget({super.key});

  @override
  State<HomePageListTransactionComponentWidget> createState() =>
      _HomePageListTransactionComponentWidgetState();
}

class _HomePageListTransactionComponentWidgetState
    extends State<HomePageListTransactionComponentWidget>
    with TickerProviderStateMixin {
  late HomePageListTransactionComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => HomePageListTransactionComponentModel());

    animationsMap.addAll({
      'listViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 30.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.4, 0.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return ListView(
      padding: EdgeInsets.zero,
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            FFAppState().clearTransactionsHomePageCache();
            safeSetState(() {
              FFAppState().clearTransactionsHomePageCache();
              _model.apiRequestCompleted = false;
            });
            await _model.waitForApiRequestCompleted();
          },
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                child: Icon(
                  Icons.refresh_outlined,
                  color: FlutterFlowTheme.of(context).textColor,
                  size: 24.0,
                ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  '02fs2jmu' /* إعادة التحميل */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: FlutterFlowTheme.of(context).textColor,
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
          child: FutureBuilder<ApiCallResponse>(
            future: FFAppState()
                .transactionsHomePage(
              requestFn: () => CardGroup.listCardTransactionsCall.call(
                msgId: functions.messageId(),
                token: FFAppState().AuthenticatedUser.accessToken,
                acceptLanguage: FFLocalizations.of(context).getVariableText(
                  arText: 'AR',
                  enText: 'EN',
                ),
                cardToken: functions.getCardToken(
                    FFAppState().AuthenticatedUser.idNumber,
                    FFAppState().cardData.expiryDate,
                    functions.getLast4Digits(FFAppState().cardData.cardNumber)),
                dateFrom: '09/09/1970',
                dateTo: FFAppState().filterTransactions.hasDateTo()
                    ? FFAppState().filterTransactions.dateTo
                    : functions.dateFromCalculate(DateTypes.TODAY),
              ),
            )
                .then((result) {
              _model.apiRequestCompleted = true;
              return result;
            }),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return const ShimmerComponentListTransactionsWidget();
              }
              final listViewListCardTransactionsResponse = snapshot.data!;

              return Builder(
                builder: (context) {
                  final listTransactions =
                      (ListCustomerTransactionsStruct.maybeFromMap(
                                      listViewListCardTransactionsResponse
                                          .jsonBody)
                                  ?.records
                                  .toList() ??
                              [])
                          .take(3)
                          .toList();
                  if (listTransactions.isEmpty) {
                    return const EmptyListOfTransactionsWidget();
                  }

                  return RefreshIndicator(
                    color: FlutterFlowTheme.of(context).primary,
                    backgroundColor: FlutterFlowTheme.of(context).alternate,
                    strokeWidth: 4.0,
                    onRefresh: () async {
                      FFAppState().clearTransactionsHomePageCache();
                      safeSetState(() {
                        FFAppState().clearTransactionsHomePageCache();
                        _model.apiRequestCompleted = false;
                      });
                      await _model.waitForApiRequestCompleted();
                    },
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listTransactions.length,
                      itemBuilder: (context, listTransactionsIndex) {
                        final listTransactionsItem =
                            listTransactions[listTransactionsIndex];
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 8.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'transaction_details_page',
                                queryParameters: {
                                  'transactionData': serializeParam(
                                    TransactionDataStruct(
                                      id: listTransactionsItem.id,
                                      transactionType:
                                          listTransactionsItem.transactionType,
                                      transactionDate:
                                          listTransactionsItem.transactionDate,
                                      merchantName:
                                          listTransactionsItem.merchantName,
                                      transactionPostDate: listTransactionsItem
                                          .transactionPostDate,
                                      transactionStatus: listTransactionsItem
                                          .transactionStatus,
                                      merchantCode:
                                          listTransactionsItem.merchantCode,
                                      transactionReference: listTransactionsItem
                                          .transactionReference,
                                      transactionAmount: listTransactionsItem
                                          .transactionAmount,
                                      creditDebit:
                                          listTransactionsItem.creditDebit,
                                      transactionCurrencyCode:
                                          listTransactionsItem
                                              .transactionCurrencyCode,
                                      billingAmount:
                                          listTransactionsItem.billingAmount,
                                      billingCurrencyCode: listTransactionsItem
                                          .billingCurrencyCode,
                                    ),
                                    ParamType.DataStruct,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.92,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).contianerColor,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              listTransactionsItem
                                                      .hasMerchantName()
                                                  ? listTransactionsItem
                                                      .merchantName
                                                  : ' ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily),
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '5hnon1gy' /*   */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(),
                                            child: Text(
                                              '${listTransactionsItem.hasTransactionAmount() ? listTransactionsItem.transactionAmount : ' '} ${listTransactionsItem.hasBillingCurrencyCode() ? listTransactionsItem.billingCurrencyCode : ' '}',
                                              textAlign: TextAlign.end,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              listTransactionsItem
                                                      .hasTransactionDate()
                                                  ? listTransactionsItem
                                                      .transactionDate
                                                  : ' ',
                                              textAlign: TextAlign.end,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
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
                        );
                      },
                    ),
                  ).animateOnPageLoad(
                      animationsMap['listViewOnPageLoadAnimation']!);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
