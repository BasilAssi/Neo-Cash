import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_lists/empty_list_of_transactions/empty_list_of_transactions_widget.dart';
import '/components/filter_transactions_component1/filter_transactions_component1_widget.dart';
import '/components/shimmer/shimmer_component_list_transactions/shimmer_component_list_transactions_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'transactions_page_model.dart';
export 'transactions_page_model.dart';

class TransactionsPageWidget extends StatefulWidget {
  const TransactionsPageWidget({super.key});

  @override
  State<TransactionsPageWidget> createState() => _TransactionsPageWidgetState();
}

class _TransactionsPageWidgetState extends State<TransactionsPageWidget>
    with TickerProviderStateMixin {
  late TransactionsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionsPageModel());

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
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 32.0,
                          ),
                          onPressed: () async {
                            context.safePop();
                          },
                        ),
                      ),
                      Builder(
                        builder: (context) => FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.calendar_month,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 40.0,
                          ),
                          onPressed: () async {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: const AlignmentDirectional(-0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: WebViewAware(
                                    child: GestureDetector(
                                      onTap: () => FocusScope.of(dialogContext)
                                          .unfocus(),
                                      child: SizedBox(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.4,
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.7,
                                        child:
                                            FilterTransactionsComponent1Widget(
                                          refreshListTransaction: () async {
                                            safeSetState(() => _model
                                                .apiRequestCompleter = null);
                                            await _model
                                                .waitForApiRequestCompleted();
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
                        '${FFAppState().filterTransactions.hasDateTo() ? FFAppState().filterTransactions.dateTo : functions.dateFromCalculate(DateTypes.TODAY)} - ${FFAppState().filterTransactions.hasDateFrom() ? FFAppState().filterTransactions.dateFrom : functions.dateFromCalculate(DateTypes.LAST_WEEK)}',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleLargeFamily,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleLargeFamily),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ].divide(const SizedBox(height: 8.0)).around(const SizedBox(height: 8.0)),
          ),
          actions: const [],
          bottom: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.sizeOf(context).height * 0.02),
            child: Container(),
          ),
          centerTitle: false,
          toolbarHeight: MediaQuery.sizeOf(context).height * 0.15,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: FutureBuilder<ApiCallResponse>(
              future: (_model
                      .apiRequestCompleter ??= Completer<ApiCallResponse>()
                    ..complete(CardGroup.listCardTransactionsCall.call(
                      msgId: functions.messageId(),
                      token: FFAppState().AuthenticatedUser.accessToken,
                      acceptLanguage:
                          FFLocalizations.of(context).getVariableText(
                        arText: 'AR',
                        enText: 'EN',
                      ),
                      cardToken: functions.getCardToken(
                          FFAppState().AuthenticatedUser.idNumber,
                          FFAppState().cardData.expiryDate,
                          functions.getLast4Digits(
                              FFAppState().cardData.cardNumber)),
                      dateFrom: FFAppState().filterTransactions.hasDateFrom()
                          ? FFAppState().filterTransactions.dateFrom
                          : functions.dateFromCalculate(DateTypes.LAST_WEEK),
                      dateTo: FFAppState().filterTransactions.hasDateTo()
                          ? FFAppState().filterTransactions.dateTo
                          : functions.dateFromCalculate(DateTypes.TODAY),
                    )))
                  .future,
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return const ShimmerComponentListTransactionsWidget();
                }
                final listViewListCardTransactionsResponse = snapshot.data!;

                return Builder(
                  builder: (context) {
                    final listTransactions =
                        ListCustomerTransactionsStruct.maybeFromMap(
                                    listViewListCardTransactionsResponse
                                        .jsonBody)
                                ?.records
                                .toList() ??
                            [];
                    if (listTransactions.isEmpty) {
                      return const EmptyListOfTransactionsWidget();
                    }

                    return ListView.builder(
                      padding: EdgeInsets.zero,
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
                                                  'ry73pybn' /*   */,
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
                    ).animateOnPageLoad(
                        animationsMap['listViewOnPageLoadAnimation']!);
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
