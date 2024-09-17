import 'dart:async';
import 'dart:io';

import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';

import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'transaction_details_page_widget.dart' show TransactionDetailsPageWidget;
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';


import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class TransactionDetailsPageModel
    extends FlutterFlowModel<TransactionDetailsPageWidget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;
  ScreenshotController screenshotController= ScreenshotController();





  Future<String?> saveImage() async {
    try {
      final time = DateTime.now()
          .toIso8601String()
          .replaceAll('.', '-')
          .replaceAll(':', '-');
      final name = 'NeoCashTransaction$time';
      // Capture screenshot
      final image = await screenshotController.capture(delay: const Duration(milliseconds: 10));

      if (image != null) {
        // Save the image to the local directory
        final directory = await getApplicationDocumentsDirectory();
        final imagePath = File('${directory.path}/$name.png');

        // Save the image file
        await imagePath.writeAsBytes(image);
        return imagePath.path;  // Return the file path for sharing
      } else {
        print('Capture failed. Image is null.');
      }
    } catch (e) {
      print('Error occurred while saving the image: $e');
    }
    return null;  // Return null if something fails
  }
  Future saveImageToDevice() async {
    try {
      final time = DateTime.now()
          .toIso8601String()
          .replaceAll('.', '-')
          .replaceAll(':', '-');
      final name = 'NeoCashTransaction$time';
      // Capture screenshot
      final image = await screenshotController.capture(delay: const Duration(milliseconds: 10));

      if (image != null) {

        return image!;  // Return the file path for sharing
      } else {
        print('Capture failed. Image is null.');
      }
    } catch (e) {
      print('Error occurred while Capture failed: $e');
    }
    return null;  // Return null if something fails
  }

  saveToGallery(Uint8List imageBytes) async {
    final time = DateTime.now()
        .toIso8601String()
        .replaceAll('.', '-')
        .replaceAll(':', '-');
    final name = 'NeoCashTransaction$time';
    final imagePath = await ImageGallerySaver.saveImage(imageBytes, name: name, quality: 40);
    print('imagePath   ${imagePath['filePath']}');
    return imagePath['filePath'];
    // Add your function code here!
  }

  @override
  void initState(BuildContext context) {

  }

  @override
  void dispose() {
  }
}
