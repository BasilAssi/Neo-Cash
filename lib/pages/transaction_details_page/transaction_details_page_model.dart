import '/flutter_flow/flutter_flow_util.dart';
import 'transaction_details_page_widget.dart' show TransactionDetailsPageWidget;
import 'package:flutter/material.dart';

class TransactionDetailsPageModel
    extends FlutterFlowModel<TransactionDetailsPageWidget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
