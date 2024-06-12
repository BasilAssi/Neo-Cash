import '/flutter_flow/flutter_flow_util.dart';
import 'offers_home_page_widget.dart' show OffersHomePageWidget;
import 'package:flutter/material.dart';

class OffersHomePageModel extends FlutterFlowModel<OffersHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
