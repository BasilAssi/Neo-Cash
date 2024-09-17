import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/block_card_component/block_card_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'card_details_widget.dart' show CardDetailsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CardDetailsModel extends FlutterFlowModel<CardDetailsWidget> {
  ///  Local state fields for this page.

  String? cardbalance;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - isNetworkAvailable] action in card_details widget.
  bool? isNetworkAvailable;
  // Stores action output result for [Backend Call - API (List Cards)] action in card_details widget.
  ApiCallResponse? apiResultListCards;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in IconButton widget.
  bool? isNetworkAvailable2;
  // Stores action output result for [Backend Call - API (Get Card PIN)] action in IconButton widget.
  ApiCallResponse? apiResultGetPIN;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in IconButton widget.
  bool? isNetworkAvailableOutput;
  // Stores action output result for [Backend Call - API (Change Card Status)] action in IconButton widget.
  ApiCallResponse? apiResultActiveCard;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
