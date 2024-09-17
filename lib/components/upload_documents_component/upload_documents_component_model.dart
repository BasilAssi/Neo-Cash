import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'upload_documents_component_widget.dart'
    show UploadDocumentsComponentWidget;
import 'package:flutter/material.dart';

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
