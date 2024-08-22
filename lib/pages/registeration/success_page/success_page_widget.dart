import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'success_page_model.dart';
export 'success_page_model.dart';

class SuccessPageWidget extends StatefulWidget {
  /// This page  used after registeration completed
  const SuccessPageWidget({super.key});

  @override
  State<SuccessPageWidget> createState() => _SuccessPageWidgetState();
}

class _SuccessPageWidgetState extends State<SuccessPageWidget>
    with TickerProviderStateMixin {
  late SuccessPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuccessPageModel());

    animationsMap.addAll({
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 2000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(25.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondary,
            automaticallyImplyLeading: false,
            actions: const [],
            toolbarHeight: 10.0,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondary,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondary,
                    width: 2.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.network(
                        'https://assets10.lottiefiles.com/packages/lf20_xlkxtmul.json',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                        frameRate: FrameRate(60.0),
                        animate: true,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 16.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'kh49fpqs' /* مبااارك! */,
                      ),
                      style: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .override(
                            fontFamily: FlutterFlowTheme.of(context)
                                .headlineMediumFamily,
                            color: FlutterFlowTheme.of(context).textAppbarColor,
                            fontSize: 32.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context)
                                    .headlineMediumFamily),
                          ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '7uvhtze5' /* تهانينا! تم تقديم طلبك بنجاح س... */,
                        ),
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: FlutterFlowTheme.of(context).textColor,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleSmallFamily),
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'login',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.leftToRight,
                              ),
                            },
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'pm7u8x69' /* الصفحة الرئيسية  */,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.5,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).textColor,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
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
                      ).animateOnPageLoad(
                          animationsMap['buttonOnPageLoadAnimation']!),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
