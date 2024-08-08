import '/flutter_flow/flutter_flow_util.dart';
import 'card61_transfer_details_small_widget.dart'
    show Card61TransferDetailsSmallWidget;
import 'package:flutter/material.dart';

class Card61TransferDetailsSmallModel
    extends FlutterFlowModel<Card61TransferDetailsSmallWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
