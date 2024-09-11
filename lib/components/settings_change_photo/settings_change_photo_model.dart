import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'settings_change_photo_widget.dart' show SettingsChangePhotoWidget;
import 'package:flutter/material.dart';

class SettingsChangePhotoModel
    extends FlutterFlowModel<SettingsChangePhotoWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - isNetworkAvailable] action in Button widget.
  bool? isNetworkAvailableOutput;
  // Stores action output result for [Backend Call - API (Upload Document)] action in Button widget.
  ApiCallResponse? apiResultUploadDocument;
  // Stores action output result for [Backend Call - API (Save My Profile)] action in Button widget.
  ApiCallResponse? apiResultSaveMyProfile;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
