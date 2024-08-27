import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'card_details_widget.dart' show CardDetailsWidget;
import 'package:flutter/material.dart';

class CardDetailsModel extends FlutterFlowModel<CardDetailsWidget> {
  ///  Local state fields for this page.

  String? cardbalance;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - isNetworkAvailable] action in card_details widget.
  bool? isNetworkAvailable;
  // Stores action output result for [Backend Call - API (Get Card Account Info)] action in card_details widget.
  ApiCallResponse? apiResultCardInfo;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in IconButton widget.
  bool? isNetworkAvailable2;
  // Stores action output result for [Backend Call - API (Get Card PIN)] action in IconButton widget.
  ApiCallResponse? apiResultGetPIN;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in Wrap widget.
  bool? isNetworkAvailableOutput;
  // Stores action output result for [Backend Call - API (Change Card Status)] action in Wrap widget.
  ApiCallResponse? apiResultActiveCard;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
