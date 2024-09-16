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
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'upload_documents_component_model.dart';
export 'upload_documents_component_model.dart';

class UploadDocumentsComponentWidget extends StatefulWidget {
  const UploadDocumentsComponentWidget({
    super.key,
    required this.encodedId,
    this.name,
    this.description,
    required this.moduleType,
    required this.customerId,
  });

  final String? encodedId;
  final String? name;
  final String? description;
  final String? moduleType;
  final String? customerId;

  @override
  State<UploadDocumentsComponentWidget> createState() =>
      _UploadDocumentsComponentWidgetState();
}

class _UploadDocumentsComponentWidgetState
    extends State<UploadDocumentsComponentWidget> {
  late UploadDocumentsComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UploadDocumentsComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
            child: Text(
              '${FFLocalizations.of(context).getVariableText(
                arText: ' ارفق ',
                enText: 'Upload ',
              )}${widget.name}',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineMediumFamily,
                    color: FlutterFlowTheme.of(context).textColor,
                    fontSize: 24.0,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).headlineMediumFamily),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
            child: Text(
              widget.description!,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineMediumFamily,
                    color: FlutterFlowTheme.of(context).textColor,
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).headlineMediumFamily),
                  ),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 3.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 180.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 0.0,
                        sigmaY: 0.0,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: FlutterFlowExpandedImageView(
                                  image: Image.memory(
                                    _model.uploadedLocalFile.bytes ??
                                        Uint8List.fromList([]),
                                    fit: BoxFit.contain,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            Image.asset(
                                      'assets/images/error_image.jpeg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  allowRotation: false,
                                  tag: 'imageTag',
                                  useHeroAnimation: false,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'imageTag',
                            transitionOnUserGestures: true,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(16.0),
                              ),
                              child: Image.memory(
                                _model.uploadedLocalFile.bytes ??
                                    Uint8List.fromList([]),
                                width: MediaQuery.sizeOf(context).width * 0.5,
                                height: 180.0,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    Image.asset(
                                  'assets/images/error_image.jpeg',
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  height: 180.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.9, 0.47),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primary,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                    icon: const Icon(
                      Icons.delete_sharp,
                      color: Color(0xFFE20505),
                      size: 24.0,
                    ),
                    onPressed: () async {
                      _model.isNetworkAvailableOutput1 =
                          await actions.isNetworkAvailable();
                      if (_model.isNetworkAvailableOutput1 == true) {
                        _model.apiResultDeleteUploadedDocument =
                            await AuthAndRegisterGroup
                                .deleteUploadedDocumentCall
                                .call(
                          deleteURL:
                              CustomerUploadedDocumentsStruct.maybeFromMap(
                                      (_model.apiResultUploadDocument
                                              ?.jsonBody ??
                                          ''))
                                  ?.deleteUrl,
                        );
print(' _model.apiResultDeleteUploadedDocument ${ _model.apiResultDeleteUploadedDocument?.jsonBody}');
                        if ((_model
                                .apiResultDeleteUploadedDocument?.succeeded ??
                            true)) {
                          if ((ResponseModelStruct.maybeFromMap((_model
                                              .apiResultDeleteUploadedDocument
                                              ?.jsonBody ??
                                          ''))
                                      ?.code ==
                                  '00') ||
                              (ResponseModelStruct.maybeFromMap((_model
                                              .apiResultDeleteUploadedDocument
                                              ?.jsonBody ??
                                          ''))
                                      ?.hasCode() ==
                                  false)) {
                            safeSetState(() {
                              _model.isDataUploading = false;
                              _model.uploadedLocalFile =
                                  FFUploadedFile(bytes: Uint8List.fromList([]));
                            });

                            await actions.showToast(
                              FFLocalizations.of(context).getVariableText(
                                arText: 'تم حذف الصورة بنجاح',
                                enText:
                                    'The image has been successfully deleted.',
                              ),
                            );
                          } else {
                            await actions.showToast(
                              FFLocalizations.of(context).getVariableText(
                                arText:
                                    'فشل حذف الصورة الرجاء المحاولة مرة اخرى',
                                enText:
                                    'Image deletion failed, please try again.',
                              ),
                            );
                          }
                        } else {
                          await actions.showToast(
                            FFLocalizations.of(context).getVariableText(
                              arText: 'خطأ',
                              enText: 'Error',
                            ),
                          );
                        }
                      } else {
                        await actions.showToast(
                          FFLocalizations.of(context).getVariableText(
                            arText: 'عذرا لا يوجد اتصال بالانترنت',
                            enText: 'Sorry, no internet connection.',
                          ),
                        );
                      }

                      safeSetState(() {});
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 3.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                _model.isNetworkAvailableOutput =
                    await actions.isNetworkAvailable();
                if (_model.isNetworkAvailableOutput == true) {
                  final selectedMedia = await selectMediaWithSourceBottomSheet(
                    context: context,
                    imageQuality: 70,
                    allowPhoto: true,
                    includeDimensions: true,
                  );
                  if (selectedMedia != null &&
                      selectedMedia.every(
                          (m) => validateFileFormat(m.storagePath, context))) {
                    safeSetState(() => _model.isDataUploading = true);
                    var selectedUploadedFiles = <FFUploadedFile>[];

                    try {
                      selectedUploadedFiles = selectedMedia
                          .map((m) => FFUploadedFile(
                                name: m.storagePath.split('/').last,
                                bytes: m.bytes,
                                height: m.dimensions?.height,
                                width: m.dimensions?.width,
                                blurHash: m.blurHash,
                              ))
                          .toList();
                    } finally {
                      _model.isDataUploading = false;
                    }
                    if (selectedUploadedFiles.length == selectedMedia.length) {
                      safeSetState(() {
                        _model.uploadedLocalFile = selectedUploadedFiles.first;
                      });
                    } else {
                      safeSetState(() {});
                      return;
                    }
                  }

                  _model.apiResultUploadDocument =
                      await AuthAndRegisterGroup.uploadDocumentCall.call(
                    customerId: widget.customerId,
                    file: _model.uploadedLocalFile,
                    msgId: functions.messageId(),
                    documentTypeId: widget.encodedId,
                    forceUpload: 'false',
                  );

                  print('_model.apiResultUploadDocument?.jsonBody  ${_model.apiResultUploadDocument?.jsonBody}');
                  if ((_model.apiResultUploadDocument?.succeeded ?? true)) {
                    if ((ResponseModelStruct.maybeFromMap(
                                    (_model.apiResultUploadDocument?.jsonBody ??
                                        ''))
                                ?.code ==
                            '00') ||
                        (ResponseModelStruct.maybeFromMap(
                                    (_model.apiResultUploadDocument?.jsonBody ??
                                        ''))
                                ?.hasCode() ==
                            false)) {
                      await actions.showToast(
                        FFLocalizations.of(context).getVariableText(
                          arText: 'تم إضافة الصورة بنجاح',
                          enText: 'Image added successfully',
                        ),
                      );
                    } else {
                      safeSetState(() {
                        _model.isDataUploading = false;
                        _model.uploadedLocalFile =
                            FFUploadedFile(bytes: Uint8List.fromList([]));
                      });

                      await actions.showToast(
                        FFLocalizations.of(context).getVariableText(
                          arText: 'فشل إرفاق الصورة. يُرجى المحاولة مرة أخرى',
                          enText:
                              'Failed to attach the photo. Please try again',
                        ),
                      );
                    }
                  } else {
                    safeSetState(() {
                      _model.isDataUploading = false;
                      _model.uploadedLocalFile =
                          FFUploadedFile(bytes: Uint8List.fromList([]));
                    });

                    await actions.showToast(
                      FFLocalizations.of(context).getVariableText(
                        arText: 'خطأ',
                        enText: 'Error',
                      ),
                    );
                  }
                } else {
                  await actions.showToast(
                    FFLocalizations.of(context).getVariableText(
                      arText: 'عذرا لا يوجد اتصال بالانترنت',
                      enText: 'Sorry, no internet connection.',
                    ),
                  );
                }

                safeSetState(() {});
              },
              text: FFLocalizations.of(context).getVariableText(
                arText: 'ارفق',
                enText: 'Upload ',
              ),
              icon: const Icon(
                Icons.upload,
                size: 15.0,
              ),
              options: FFButtonOptions(
                width: double.infinity,
                height: 50.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: Colors.white,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleSmallFamily),
                    ),
                elevation: 3.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
            child: Container(
              width: double.infinity,
              height: 4.0,
              decoration: const BoxDecoration(
                color: Color(0x74D7DEE3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
