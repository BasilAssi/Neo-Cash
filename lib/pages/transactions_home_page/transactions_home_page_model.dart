import '/flutter_flow/flutter_flow_util.dart';
import 'transactions_home_page_widget.dart' show TransactionsHomePageWidget;
import 'package:flutter/material.dart';

class TransactionsHomePageModel
    extends FlutterFlowModel<TransactionsHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
