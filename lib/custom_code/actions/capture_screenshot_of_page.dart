// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future captureScreenshotOfPage() async {
  // capture Screenshot of  widget  ,  and save it to gallary  ,
// 1. Create a global key for the widget you want to capture
  GlobalKey widgetKey = GlobalKey();

  // 2. Render the widget to a picture
  RenderRepaintBoundary boundary =
      widgetKey.currentContext.findRenderObject() as RenderRepaintBoundary;
  ui.Image image = await boundary.toImage(pixelRatio: 3.0);

  // 3. Convert the image to bytes
  ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);
  Uint8List pngBytes = byteData.buffer.asUint8List();

  // 4. Save the image to the device's gallery
  final result = await ImageGallerySaver.saveImage(pngBytes);

  // 5. Return the result of the save operation
  return result;
}
