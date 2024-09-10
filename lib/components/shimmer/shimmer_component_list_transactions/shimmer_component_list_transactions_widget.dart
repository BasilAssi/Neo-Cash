import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'shimmer_component_list_transactions_model.dart';
export 'shimmer_component_list_transactions_model.dart';

class ShimmerComponentListTransactionsWidget extends StatefulWidget {
  const ShimmerComponentListTransactionsWidget({super.key});

  @override
  State<ShimmerComponentListTransactionsWidget> createState() =>
      _ShimmerComponentListTransactionsWidgetState();
}

class _ShimmerComponentListTransactionsWidgetState
    extends State<ShimmerComponentListTransactionsWidget>
    with TickerProviderStateMixin {
  late ShimmerComponentListTransactionsModel _model;

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
        createModel(context, () => ShimmerComponentListTransactionsModel());

    animationsMap.addAll({
      'listViewOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
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
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
      child: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.92,
              height: 80.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).contianerColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 64.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Container(
                            width: 80.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 44.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Container(
                            width: 44.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
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
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.92,
              height: 80.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).contianerColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 64.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Container(
                            width: 80.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 44.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Container(
                            width: 44.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
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
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.92,
              height: 80.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).contianerColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 64.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Container(
                            width: 80.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 44.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Container(
                            width: 44.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
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
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.92,
              height: 80.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).contianerColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 64.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Container(
                            width: 80.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 44.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Container(
                            width: 44.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
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
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.92,
              height: 80.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).contianerColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 64.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Container(
                            width: 80.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 44.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Container(
                            width: 44.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
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
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.92,
              height: 80.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).contianerColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 64.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Container(
                            width: 80.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 44.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Container(
                            width: 44.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
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
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.92,
              height: 80.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).contianerColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 64.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Container(
                            width: 80.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 44.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Container(
                            width: 44.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
                              borderRadius: BorderRadius.circular(12.0),
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
        ],
      ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation']!),
    );
  }
}
