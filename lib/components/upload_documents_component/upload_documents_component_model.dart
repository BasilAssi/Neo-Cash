import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'upload_documents_component_widget.dart'
    show UploadDocumentsComponentWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class UploadDocumentsComponentModel
    extends FlutterFlowModel<UploadDocumentsComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - isNetworkAvailable] action in IconButton widget.
  bool? isNetworkAvailableOutput1;
  // Stores action output result for [Backend Call - API (Delete Uploaded Document)] action in IconButton widget.
  ApiCallResponse? apiResultDeleteUploadedDocument;
  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.
  bool? isNetworkAvailableOutput;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Upload Document)] action in Button widget.
  ApiCallResponse? apiResultUploadDocument;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
