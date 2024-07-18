import '/flutter_flow/flutter_flow_util.dart';
import 'enable_notifications_widget.dart' show EnableNotificationsWidget;
import 'package:flutter/material.dart';

class EnableNotificationsModel
    extends FlutterFlowModel<EnableNotificationsWidget> {
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
