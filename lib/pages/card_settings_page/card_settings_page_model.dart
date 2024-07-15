import '/flutter_flow/flutter_flow_util.dart';
import 'card_settings_page_widget.dart' show CardSettingsPageWidget;
import 'package:flutter/material.dart';

class CardSettingsPageModel extends FlutterFlowModel<CardSettingsPageWidget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool biometricVerification = false;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
