import '/flutter_flow/flutter_flow_util.dart';
import 'settings_change_photo_widget.dart' show SettingsChangePhotoWidget;
import 'package:flutter/material.dart';

class SettingsChangePhotoModel
    extends FlutterFlowModel<SettingsChangePhotoWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
