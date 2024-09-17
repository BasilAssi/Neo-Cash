import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'block_card_component_widget.dart' show BlockCardComponentWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BlockCardComponentModel
    extends FlutterFlowModel<BlockCardComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.
  bool? isNetworkAvailableOutput;
  // Stores action output result for [Backend Call - API (Change Card Status)] action in Button widget.
  ApiCallResponse? apiResultBlockCard;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
