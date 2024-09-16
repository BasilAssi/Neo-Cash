import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_lists/empty_list_of_cards/empty_list_of_cards_widget.dart';
import '/components/pin_code_component/pin_code_component_widget.dart';
import '/components/shimmer/shimmer_component_list_cards/shimmer_component_list_cards_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'home_page_list_cards_component_model.dart';
export 'home_page_list_cards_component_model.dart';

class HomePageListCardsComponentWidget extends StatefulWidget {
  /// this component used to   list the cards
  const HomePageListCardsComponentWidget({
    super.key,
    this.refresh,
  });

  final Future Function()? refresh;

  @override
  State<HomePageListCardsComponentWidget> createState() =>
      _HomePageListCardsComponentWidgetState();
}

class _HomePageListCardsComponentWidgetState
    extends State<HomePageListCardsComponentWidget>
    with TickerProviderStateMixin {
  late HomePageListCardsComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageListCardsComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() => _model.apiRequestCompleter = null);
      await _model.waitForApiRequestCompleted();
      await widget.refresh?.call();
    });

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
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
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: FutureBuilder<ApiCallResponse>(
          future: (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
                ..complete(CardGroup.listCardsCall.call(
                  msgId: functions.messageId(),
                  idNumber: FFAppState().AuthenticatedUser.idNumber,
                  token: FFAppState().AuthenticatedUser.accessToken,
                  acceptLanguage: FFLocalizations.of(context).getVariableText(
                    arText: 'AR',
                    enText: 'EN',
                  ),
                )))
              .future,
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return const ShimmerComponentListCardsWidget();
            }
            final swipeableStackListCardsResponse = snapshot.data!;
print('swipeableStackListCardsResponse ${swipeableStackListCardsResponse.jsonBody}');
            return Builder(
              builder: (context) {
                final cardList = ListCustomerCardsStruct.maybeFromMap(
                            swipeableStackListCardsResponse.jsonBody)
                        ?.records
                        .toList() ??
                    [];
                if (cardList.isEmpty) {
                  return SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    height: MediaQuery.sizeOf(context).height * 0.9,
                    child: const EmptyListOfCardsWidget(),
                  );
                }

                return FlutterFlowSwipeableStack(
                  onSwipeFn: (index) {},
                  onLeftSwipe: (index) {},
                  onRightSwipe: (index) {},
                  onUpSwipe: (index) {},
                  onDownSwipe: (index) {},
                  itemBuilder: (context, cardListIndex) {
                    final cardListItem = cardList[cardListIndex];
                    return Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Builder(
                        builder: (context) => InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (FFAppState().AppSettings.biometricEnabled ==
                                true) {
                              final localAuth = LocalAuthentication();
                              bool isBiometricSupported =
                                  await localAuth.isDeviceSupported();
                              bool canCheckBiometrics =
                                  await localAuth.canCheckBiometrics;
                              if (isBiometricSupported && canCheckBiometrics) {
                                _model.biometricOutput =
                                    await localAuth.authenticate(
                                        localizedReason:
                                            FFLocalizations.of(context).getText(
                                          'sidsk0va' /* تأكيد البصمة للاستمرار */,
                                        ),
                                        options: const AuthenticationOptions(
                                            biometricOnly: true));
                                safeSetState(() {});
                              }

                              if (_model.biometricOutput == true) {
                                FFAppState().cardData = CardDataStruct(
                                  cardNumber: cardListItem.hasCardNumber()
                                      ? cardListItem.cardNumber
                                      : ' ',
                                  expiryDate: cardListItem.hasExpiryDate()
                                      ? cardListItem.expiryDate
                                      : ' ',
                                  status: cardListItem.hasStatus()
                                      ? cardListItem.status
                                      : ' ',
                                  nameOnCard: cardListItem.hasNameOnCard()
                                      ? cardListItem.nameOnCard
                                      : ' ',
                                  type: cardListItem.hasType()
                                      ? cardListItem.type
                                      : ' ',
                                  cardCvc: cardListItem.hasCardCvc()
                                      ? cardListItem.cardCvc
                                      : ' ',
                                  firstName: cardListItem.hasFirstName()
                                      ? cardListItem.firstName
                                      : ' ',
                                  middleName: cardListItem.hasMiddleName()
                                      ? cardListItem.middleName
                                      : ' ',
                                  lastName: cardListItem.hasLastName()
                                      ? cardListItem.lastName
                                      : ' ',
                                  cardToken: cardListItem.hasCardToken()
                                      ? cardListItem.cardToken
                                      : ' ',
                                  imagePath: cardListItem.hasImagePath()
                                      ? cardListItem.imagePath
                                      : ' ',
                                  voucherValue: cardListItem.hasVoucherValue()
                                      ? cardListItem.voucherValue
                                      : ' ',
                                  programCode: cardListItem.hasProgramCode()
                                      ? cardListItem.programCode
                                      : ' ',
                                  localProgramName:
                                      cardListItem.hasLocalProgramName()
                                          ? cardListItem.localProgramName
                                          : ' ',
                                  latinProgramName:
                                      cardListItem.hasLatinProgramName()
                                          ? cardListItem.latinProgramName
                                          : ' ',
                                  accountNumber: cardListItem.hasAccountNumber()
                                      ? cardListItem.accountNumber
                                      : ' ',
                                  isReloadable: cardListItem.hasIsReloadable()
                                      ? cardListItem.isReloadable
                                      : false,
                                  isDueRenewalFees:
                                      cardListItem.hasIsDueRenewalFees()
                                          ? cardListItem.isDueRenewalFees
                                          : ' ',
                                  renewalDueDate:
                                      cardListItem.hasRenewalDueDate()
                                          ? cardListItem.renewalDueDate
                                          : ' ',
                                  isPhysical: cardListItem.hasIsPhysical()
                                      ? cardListItem.isPhysical
                                      : false,
                                );

                                context.pushNamed('card_details');
                              } else {
                                await actions.showToast(
                                  FFLocalizations.of(context).getVariableText(
                                    arText: 'تعذر استخدام بصمة التعريف',
                                    enText: 'Failed biometric ',
                                  ),
                                );
                              }
                            } else {
                              await showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: const AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: WebViewAware(
                                      child: SizedBox(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                1.0,
                                        child: PinCodeComponentWidget(
                                          actiononPass: () async {
                                            FFAppState().cardData =
                                                CardDataStruct(
                                              cardNumber:
                                                  cardListItem.hasCardNumber()
                                                      ? cardListItem.cardNumber
                                                      : ' ',
                                              expiryDate:
                                                  cardListItem.hasExpiryDate()
                                                      ? cardListItem.expiryDate
                                                      : ' ',
                                              status: cardListItem.hasStatus()
                                                  ? cardListItem.status
                                                  : ' ',
                                              nameOnCard:
                                                  cardListItem.hasNameOnCard()
                                                      ? cardListItem.nameOnCard
                                                      : ' ',
                                              type: cardListItem.hasType()
                                                  ? cardListItem.type
                                                  : ' ',
                                              cardCvc: cardListItem.hasCardCvc()
                                                  ? cardListItem.cardCvc
                                                  : ' ',
                                              firstName:
                                                  cardListItem.hasFirstName()
                                                      ? cardListItem.firstName
                                                      : ' ',
                                              middleName:
                                                  cardListItem.hasMiddleName()
                                                      ? cardListItem.middleName
                                                      : ' ',
                                              lastName:
                                                  cardListItem.hasLastName()
                                                      ? cardListItem.lastName
                                                      : ' ',
                                              cardToken:
                                                  cardListItem.hasCardToken()
                                                      ? cardListItem.cardToken
                                                      : ' ',
                                              imagePath:
                                                  cardListItem.hasImagePath()
                                                      ? cardListItem.imagePath
                                                      : ' ',
                                              voucherValue: cardListItem
                                                      .hasVoucherValue()
                                                  ? cardListItem.voucherValue
                                                  : ' ',
                                              programCode:
                                                  cardListItem.hasProgramCode()
                                                      ? cardListItem.programCode
                                                      : ' ',
                                              localProgramName: cardListItem
                                                      .hasLocalProgramName()
                                                  ? cardListItem
                                                      .localProgramName
                                                  : ' ',
                                              latinProgramName: cardListItem
                                                      .hasLatinProgramName()
                                                  ? cardListItem
                                                      .latinProgramName
                                                  : ' ',
                                              accountNumber: cardListItem
                                                      .hasAccountNumber()
                                                  ? cardListItem.accountNumber
                                                  : ' ',
                                              isReloadable: cardListItem
                                                      .hasIsReloadable()
                                                  ? cardListItem.isReloadable
                                                  : false,
                                              isDueRenewalFees: cardListItem
                                                      .hasIsDueRenewalFees()
                                                  ? cardListItem
                                                      .isDueRenewalFees
                                                  : ' ',
                                              renewalDueDate: cardListItem
                                                      .hasRenewalDueDate()
                                                  ? cardListItem.renewalDueDate
                                                  : ' ',
                                              isPhysical:
                                                  cardListItem.hasIsPhysical()
                                                      ? cardListItem.isPhysical
                                                      : false,
                                            );
                                            _model.updatePage(() {});

                                            context.pushNamed('card_details');
                                          },
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            }

                            safeSetState(() {});
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 6.0,
                                          color: Color(0x4B1A1F24),
                                          offset: Offset(
                                            0.0,
                                            2.0,
                                          ),
                                        )
                                      ],
                                      gradient: LinearGradient(
                                        colors: [
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                          FlutterFlowTheme.of(context)
                                              .primaryText
                                        ],
                                        stops: const [0.0, 1.0],
                                        begin: const AlignmentDirectional(0.94, -1.0),
                                        end: const AlignmentDirectional(-0.94, 1.0),
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Image.asset(
                                                  'assets/images/visa@3x.png',
                                                  width: 44.0,
                                                  height: 14.0,
                                                  fit: BoxFit.cover,
                                                ),
                                                if ((cardListItem.hasStatus()
                                                        ? cardListItem.status
                                                        : ' ') ==
                                                    'BLOCKED')
                                                  Icon(
                                                    Icons.lock_outline,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    size: 32.0,
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 12.0, 20.0, 16.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '${cardListItem.hasCardNumber() ? functions.getLast4Digits(cardListItem.cardNumber) : ' '} **** ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Mono',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Roboto Mono'),
                                                      ),
                                                ),
                                                Text(
                                                  functions.spliteExpiryDate(
                                                      cardListItem.expiryDate)!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Mono',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Roboto Mono'),
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
                            ],
                          ),
                        ).animateOnPageLoad(
                            animationsMap['rowOnPageLoadAnimation']!),
                      ),
                    );
                  },
                  itemCount: cardList.length,
                  controller: _model.swipeableStackController,
                  loop: true,
                  cardDisplayCount: 3,
                  scale: 0.85,
                  threshold: 0.5,
                  maxAngle: 10.0,
                  cardPadding: const EdgeInsets.all(12.0),
                  backCardOffset: const Offset(0.0, 30.0),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
