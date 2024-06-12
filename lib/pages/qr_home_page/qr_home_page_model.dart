import '/flutter_flow/flutter_flow_util.dart';
import 'qr_home_page_widget.dart' show QrHomePageWidget;
import 'package:flutter/material.dart';

class QrHomePageModel extends FlutterFlowModel<QrHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
