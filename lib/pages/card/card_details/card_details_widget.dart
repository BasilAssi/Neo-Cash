import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/block_card_component/block_card_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'card_details_model.dart';
export 'card_details_model.dart';

class CardDetailsWidget extends StatefulWidget {
  const CardDetailsWidget({super.key});

  @override
  State<CardDetailsWidget> createState() => _CardDetailsWidgetState();
}

class _CardDetailsWidgetState extends State<CardDetailsWidget> with WidgetsBindingObserver {
  late CardDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardDetailsModel());

    WidgetsBinding.instance.addObserver(this);

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().updateCardDataStruct(
        (e) => e..status = FFAppState().cardData.status,
      );
      safeSetState(() {});
      _model.isNetworkAvailable = await actions.isNetworkAvailable();
      if (_model.isNetworkAvailable == true) {
        _model.apiResultListCards = await CardGroup.listCardsCall.call(
          msgId: functions.messageId(),
          idNumber: FFAppState().AuthenticatedUser.idNumber,
          token: FFAppState().AuthenticatedUser.accessToken,
          cardToken: functions.getCardToken(
              FFAppState().AuthenticatedUser.idNumber,
              FFAppState().cardData.expiryDate,
              functions.getLast4Digits(FFAppState().cardData.cardNumber)),
          acceptLanguage: FFLocalizations.of(context).getVariableText(
            arText: 'AR',
            enText: 'EN',
          ),
        );

        if ((_model.apiResultListCards?.succeeded ?? true)) {
          if (ResponseModelStruct.maybeFromMap(
                      (_model.apiResultListCards?.jsonBody ?? ''))
                  ?.code ==
              '00') {
            print('apiResultListCards  ${_model.apiResultListCards?.jsonBody}');
            safeSetState(() {});
          }
        }
      } else {
        await actions.showToast(
          FFLocalizations.of(context).getVariableText(
            arText: 'عذرا لا يوجد اتصال بالانترنت',
            enText: 'Sorry, no internet connection.',
          ),
        );
      }
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // Handle the different states of the app lifecycle
    if (state == AppLifecycleState.resumed) {
      // App has resumed
      // You can refresh the card details or any other action
    } else if (state == AppLifecycleState.paused) {
      // App is paused
      SchedulerBinding.instance.addPostFrameCallback((_) async {
        context.pushNamed('home_page');
      });
    } else if (state == AppLifecycleState.inactive) {
      // App is inactive
      SchedulerBinding.instance.addPostFrameCallback((_) async {
        context.pushNamed('home_page');
      });
    } else if (state == AppLifecycleState.detached) {
      // App is detached
      SchedulerBinding.instance.addPostFrameCallback((_) async {
        context.pushNamed('home_page');
      });
    }
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
        onWillPop: () async {
          context.pushNamed('home_page');
          return false;
        },
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
                context.pushNamed('home_page');
              },
            ),
            title: Text(
              FFLocalizations.of(context).getText(
                'pbrqcali' /* تفاصيل البطاقة */,
              ),
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineMediumFamily,
                    color: FlutterFlowTheme.of(context).textAppbarColor,
                    fontSize: 24.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).headlineMediumFamily),
                  ),
            ),
            actions: const [],
            centerTitle: true,
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'a0y0st45' /* رصيد البطاقة  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .headlineMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .textColor,
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .headlineMediumFamily),
                                    ),
                              ),
                              RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: CardGroup.listCardsCall
                                                  .availableBalance(
                                                (_model.apiResultListCards
                                                        ?.jsonBody ??
                                                    ''),
                                              ) !=
                                              null
                                          ? CardGroup.listCardsCall
                                              .availableBalance(
                                                (_model.apiResultListCards
                                                        ?.jsonBody ??
                                                    ''),
                                              )
                                              .toString()
                                          : '',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .textColor,
                                            fontSize: 30.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMediumFamily),
                                          ),
                                    ),
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        'jci1ufx5' /*   */,
                                      ),
                                      style: const TextStyle(),
                                    ),
                                    TextSpan(
                                      text:
                                          CardGroup.listCardsCall.currencyCode(
                                                    (_model.apiResultListCards
                                                            ?.jsonBody ??
                                                        ''),
                                                  ) !=
                                                  null
                                              ? CardGroup.listCardsCall
                                                  .currencyCode(
                                                    (_model.apiResultListCards
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  .toString()
                                              : '',
                                      style: const TextStyle(),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 32.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: Image.asset(
                                            'assets/images/whitevisa.png',
                                            width: 63.0,
                                            height: 45.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(1.0, 0.0),
                                          child: Text(
                                            FFAppState().cardData.nameOnCard,
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMediumFamily),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 4.0),
                                                child: Text(
                                                  functions.addSpaceBtnCardNumber(
                                                      CardGroup.listCardsCall
                                                                  .cardNumber(
                                                                (_model.apiResultListCards
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ) !=
                                                              null
                                                          ? CardGroup
                                                              .listCardsCall
                                                              .cardNumber(
                                                                (_model.apiResultListCards
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toString()
                                                          : '')!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMediumFamily,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              CardGroup.listCardsCall.cardCvc(
                                                        (_model.apiResultListCards
                                                                ?.jsonBody ??
                                                            ''),
                                                      ) !=
                                                      null
                                                  ? CardGroup.listCardsCall
                                                      .cardCvc(
                                                        (_model.apiResultListCards
                                                                ?.jsonBody ??
                                                            ''),
                                                      )
                                                      .toString()
                                                  : FFAppState()
                                                      .cardData
                                                      .cardCvc,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto Mono',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        GoogleFonts.asMap()
                                                            .containsKey(
                                                                'Roboto Mono'),
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'e9nhu5rg' /* SECURITY
CODE */
                                                ,
                                              ),
                                              textAlign: TextAlign.end,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto Mono',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    useGoogleFonts:
                                                        GoogleFonts.asMap()
                                                            .containsKey(
                                                                'Roboto Mono'),
                                                  ),
                                            ),
                                          ].divide(const SizedBox(width: 16.0)),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              functions.spliteExpiryDate(
                                                  FFAppState()
                                                      .cardData
                                                      .expiryDate)!,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto Mono',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        GoogleFonts.asMap()
                                                            .containsKey(
                                                                'Roboto Mono'),
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'oc5g9fy5' /* VALID
THRU */
                                                ,
                                              ),
                                              textAlign: TextAlign.end,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto Mono',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    useGoogleFonts:
                                                        GoogleFonts.asMap()
                                                            .containsKey(
                                                                'Roboto Mono'),
                                                  ),
                                            ),
                                          ].divide(const SizedBox(width: 16.0)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 8.0)),
                    ),
                    Builder(
                      builder: (context) {
                        if (FFAppState().cardData.status == 'ACTIVE') {
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    if (FFAppState().cardData.isPhysical ==
                                        false)
                                      Wrap(
                                        spacing: 8.0,
                                        runSpacing: 0.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        direction: Axis.vertical,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.antiAlias,
                                        children: [
                                          Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              shape: BoxShape.circle,
                                            ),
                                            child: FlutterFlowIconButton(
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .textFieldBorder,
                                              borderRadius: 12.0,
                                              borderWidth: 1.0,
                                              buttonSize:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.18,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .iconBackground,
                                              icon: Icon(
                                                Icons.remove_red_eye_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 32.0,
                                              ),
                                              onPressed: () async {
                                                _model.isNetworkAvailable2 =
                                                    await actions
                                                        .isNetworkAvailable();
                                                if (_model
                                                        .isNetworkAvailable2 ==
                                                    true) {
                                                  _model.apiResultGetPIN =
                                                      await CardGroup
                                                          .getCardPINCall
                                                          .call(
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
                                                    msgId:
                                                        functions.messageId(),
                                                    token: FFAppState()
                                                        .AuthenticatedUser
                                                        .accessToken,
                                                    acceptLanguage:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getVariableText(
                                                      arText: 'AR',
                                                      enText: 'EN',
                                                    ),
                                                    cardCvv2: CardGroup
                                                                .listCardsCall
                                                                .cardCvc(
                                                              (_model.apiResultListCards
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) !=
                                                            null
                                                        ? CardGroup
                                                            .listCardsCall
                                                            .cardCvc(
                                                              (_model.apiResultListCards
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )
                                                            .toString()
                                                        : FFAppState()
                                                            .cardData
                                                            .cardCvc,
                                                  );
                                                  print('_model.apiResultGetPIN ${_model.apiResultGetPIN?.jsonBody}');
                                                  if ((_model.apiResultGetPIN
                                                          ?.succeeded ??
                                                      true)) {
                                                    if (ResponseModelStruct
                                                                .maybeFromMap((_model
                                                                        .apiResultGetPIN
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.code ==
                                                        '00') {
                                                      context.pushNamed(
                                                        'view_pin_code_page',
                                                        queryParameters: {
                                                          'pinCode':
                                                              serializeParam(
                                                            functions.generateFinalEPIN(
                                                                CardGroup.getCardPINCall
                                                                    .pinBlock(
                                                                      (_model.apiResultGetPIN
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    .toString(),
                                                                CardGroup.listCardsCall.cardNumber(
                                                                          (_model.apiResultListCards?.jsonBody ??
                                                                              ''),
                                                                        ) !=
                                                                        null
                                                                    ? CardGroup.listCardsCall
                                                                        .cardNumber(
                                                                          (_model.apiResultListCards?.jsonBody ??
                                                                              ''),
                                                                        )
                                                                        .toString()
                                                                    : ''),
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else {
                                                      await actions.showToast(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getVariableText(
                                                          arText: 'خطأ',
                                                          enText: 'error',
                                                        ),
                                                      );
                                                    }
                                                  } else {
                                                    await actions.showToast(
                                                      FFLocalizations.of(
                                                              context)
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

                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '7wf328ns' /* عرض الرمز
السري */
                                              ,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .textColor,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ],
                                      ),
                                    Wrap(
                                      spacing: 8.0,
                                      runSpacing: 0.0,
                                      alignment: WrapAlignment.center,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      direction: Axis.vertical,
                                      runAlignment: WrapAlignment.center,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.antiAlias,
                                      children: [
                                        Container(
                                          width: 70.0,
                                          height: 70.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            shape: BoxShape.circle,
                                          ),
                                          child: FlutterFlowIconButton(
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .textFieldBorder,
                                            borderRadius: 12.0,
                                            borderWidth: 1.0,
                                            buttonSize:
                                                MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.18,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .iconBackground,
                                            icon: Icon(
                                              Icons.stacked_bar_chart,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 32.0,
                                            ),
                                            onPressed: () async {
                                              context.pushNamed(
                                                  'transactions_page');
                                            },
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'bmdetv0i' /* عرض حركات
 البطاقة */
                                            ,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textColor,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ],
                                    ),
                                    Wrap(
                                      spacing: 8.0,
                                      runSpacing: 0.0,
                                      alignment: WrapAlignment.center,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      direction: Axis.vertical,
                                      runAlignment: WrapAlignment.center,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.antiAlias,
                                      children: [
                                        Container(
                                          width: 70.0,
                                          height: 70.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Builder(
                                            builder: (context) =>
                                                FlutterFlowIconButton(
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .textFieldBorder,
                                              borderRadius: 12.0,
                                              borderWidth: 1.0,
                                              buttonSize:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.18,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .iconBackground,
                                              icon: Icon(
                                                Icons.lock_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 32.0,
                                              ),
                                              onPressed: () async {
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
                                                                  -0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: WebViewAware(
                                                        child: GestureDetector(
                                                          onTap: () =>
                                                              FocusScope.of(
                                                                      dialogContext)
                                                                  .unfocus(),
                                                          child:
                                                              const BlockCardComponentWidget(),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'v2p9jewd' /* قفل
البطاقة */
                                            ,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textColor,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 36.0, 0.0, 0.0),
                                child: Wrap(
                                  spacing: 0.0,
                                  runSpacing: 0.0,
                                  alignment: WrapAlignment.center,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.center,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '509evjxa' /* عند قفل البطاقة سيتم إيقاف جمي... */,
                                      ),
                                      textAlign: TextAlign.justify,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        } else {
                          return Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Wrap(
                              spacing: 8.0,
                              runSpacing: 0.0,
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.vertical,
                              runAlignment: WrapAlignment.center,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.antiAlias,
                              children: [
                                Container(
                                  width: 70.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    shape: BoxShape.circle,
                                  ),
                                  child: FlutterFlowIconButton(
                                    borderColor: FlutterFlowTheme.of(context)
                                        .textFieldBorder,
                                    borderRadius: 12.0,
                                    borderWidth: 1.0,
                                    buttonSize:
                                        MediaQuery.sizeOf(context).width * 0.14,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .iconBackground,
                                    icon: Icon(
                                      Icons.lock_open_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 28.0,
                                    ),
                                    onPressed: () async {
                                      _model.isNetworkAvailableOutput =
                                          await actions.isNetworkAvailable();
                                      if (_model.isNetworkAvailableOutput ==
                                          true) {
                                        _model.apiResultActiveCard =
                                            await CardGroup.changeCardStatusCall
                                                .call(
                                          msgId: functions.messageId(),
                                          cardToken: functions.getCardToken(
                                              FFAppState()
                                                  .AuthenticatedUser
                                                  .idNumber,
                                              FFAppState().cardData.expiryDate,
                                              functions.getLast4Digits(
                                                  FFAppState()
                                                      .cardData
                                                      .cardNumber)),
                                          status: 'ACTIVE',
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

                                        if ((_model.apiResultActiveCard
                                                ?.succeeded ??
                                            true)) {
                                          if (ResponseModelStruct.maybeFromMap(
                                                      (_model.apiResultActiveCard
                                                              ?.jsonBody ??
                                                          ''))
                                                  ?.code ==
                                              '00') {
                                            await actions.showToast(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                arText:
                                                    'تم فك  قفل البطاقة بنجاح ',
                                                enText:
                                                    'Card unlocked successfull.',
                                              ),
                                            );
                                            FFAppState().updateCardDataStruct(
                                              (e) => e..status = 'ACTIVE',
                                            );
                                            FFAppState().update(() {});
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

                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '6rfifwnu' /* فك قفل
البطاقة */
                                    ,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .textColor,
                                        fontSize: 14.0,
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
                          );
                        }
                      },
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
