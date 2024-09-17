import 'dart:async';
import 'dart:io';

import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'transaction_details_page_widget.dart' show TransactionDetailsPageWidget;
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';



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
