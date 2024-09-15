import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'shimmer_component_list_exchange_rate_model.dart';
export 'shimmer_component_list_exchange_rate_model.dart';

class ShimmerComponentListExchangeRateWidget extends StatefulWidget {
  const ShimmerComponentListExchangeRateWidget({super.key});

  @override
  State<ShimmerComponentListExchangeRateWidget> createState() =>
      _ShimmerComponentListExchangeRateWidgetState();
}

class _ShimmerComponentListExchangeRateWidgetState
    extends State<ShimmerComponentListExchangeRateWidget>
    with TickerProviderStateMixin {
  late ShimmerComponentListExchangeRateModel _model;

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
        createModel(context, () => ShimmerComponentListExchangeRateModel());

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
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(
              maxWidth: 570.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
                width: 0.0,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).contianerColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(12.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.circular(0.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).contianerColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(0.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(
              maxWidth: 570.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
                width: 0.0,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).contianerColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(12.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.circular(0.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).contianerColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(0.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(
              maxWidth: 570.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
                width: 0.0,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).contianerColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(12.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.circular(0.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).contianerColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(0.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(
              maxWidth: 570.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
                width: 0.0,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).contianerColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(12.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.circular(0.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).contianerColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(0.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(
              maxWidth: 570.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
                width: 0.0,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).contianerColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(12.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.circular(0.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).contianerColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(0.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(
              maxWidth: 570.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
                width: 0.0,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).contianerColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(12.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.circular(0.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).contianerColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(0.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(
              maxWidth: 570.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
                width: 0.0,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).contianerColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(12.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.circular(0.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).contianerColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(0.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(
              maxWidth: 570.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
                width: 0.0,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).contianerColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(12.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.circular(0.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).contianerColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(0.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).textFieldBorder,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 44.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ].divide(const SizedBox(height: 16.0)),
      ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation']!),
    );
  }
}
