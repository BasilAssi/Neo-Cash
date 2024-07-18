import '/flutter_flow/flutter_flow_util.dart';
import 'qr_code_page_widget.dart' show QrCodePageWidget;
import 'package:flutter/material.dart';

class QrCodePageModel extends FlutterFlowModel<QrCodePageWidget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  var qrCodeOutput = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
