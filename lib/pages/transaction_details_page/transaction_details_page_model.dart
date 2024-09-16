import 'dart:async';

import 'package:image_gallery_saver/image_gallery_saver.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'transaction_details_page_widget.dart' show TransactionDetailsPageWidget;
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import '/custom_code/actions/index.dart' as actions;



class TransactionDetailsPageModel
    extends FlutterFlowModel<TransactionDetailsPageWidget> {
  ///  Local state fields for this page.

  bool? selectedValue = true;
  ScreenshotController screenshotController= ScreenshotController();

   Future saveImage() async {
    screenshotController.capture().then((Uint8List? image) async{
     await saveToGallery(image!);
    } );
  }

   saveToGallery(Uint8List imageBytes) async {
    final time = DateTime.now()
        .toIso8601String()
        .replaceAll('.', '-')
        .replaceAll(':', '-');
    final name = 'NeoCashTransaction$time';
    await ImageGallerySaver.saveImage(imageBytes, name: name, quality: 40);
    // Add your function code here!
  }

  @override
  void initState(BuildContext context) {

  }

  @override
  void dispose() {
  }
}
