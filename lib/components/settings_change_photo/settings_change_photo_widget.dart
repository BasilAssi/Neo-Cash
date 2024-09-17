import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'settings_change_photo_model.dart';
export 'settings_change_photo_model.dart';

class SettingsChangePhotoWidget extends StatefulWidget {
  const SettingsChangePhotoWidget({super.key});

  @override
  State<SettingsChangePhotoWidget> createState() =>
      _SettingsChangePhotoWidgetState();
}

class _SettingsChangePhotoWidgetState extends State<SettingsChangePhotoWidget> {
  late SettingsChangePhotoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsChangePhotoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 400.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          thickness: 3.0,
                          indent: 150.0,
                          endIndent: 150.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 16.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'e6kdvpqx' /* تغير الصورة */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .textColor,
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .headlineMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderColor: FlutterFlowTheme.of(context).primary,
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              icon: Icon(
                                Icons.close_sharp,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'ltiag9l2' /* قم بتحميل صورة جديدة. */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 120.0,
                                height: 120.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDBE2E7),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/addImage@2x.png',
                                    ).image,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(4.0),
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
                                              child:
                                                  FlutterFlowExpandedImageView(
                                                image: Image.memory(
                                                  _model.uploadedLocalFile
                                                          .bytes ??
                                                      Uint8List.fromList([]),
                                                  fit: BoxFit.contain,
                                                  errorBuilder: (context, error,
                                                          stackTrace) =>
                                                      Image.asset(
                                                    'assets/images/addImage@2x.png',
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                allowRotation: false,
                                                tag: 'uploadedImageTag',
                                                useHeroAnimation: true,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Hero(
                                          tag: 'uploadedImageTag',
                                          transitionOnUserGestures: true,
                                          child: Container(
                                            width: 200.0,
                                            height: 200.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.memory(
                                              _model.uploadedLocalFile.bytes ??
                                                  Uint8List.fromList([]),
                                              fit: BoxFit.cover,
                                              errorBuilder: (context, error,
                                                      stackTrace) =>
                                                  Image.asset(
                                            'assets/images/addImage@2x.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                      ),
                                    ),],

                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 44.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (_model.uploadedLocalFile != null &&
                                        (_model.uploadedLocalFile.bytes
                                                ?.isNotEmpty ??
                                            false)) {
                                      _model.isNetworkAvailableOutput =
                                          await actions.isNetworkAvailable();
                                      if (_model.isNetworkAvailableOutput ==
                                          true) {
                                        // please add documentTypeId
                                        _model.apiResultUploadDocument =
                                            await AuthAndRegisterGroup
                                                .uploadDocumentCall
                                                .call(
                                          customerId: FFAppState()
                                              .AuthenticatedUser
                                              .encodedId,
                                          file: _model.uploadedLocalFile,
                                          msgId: functions.messageId(),
                                          documentTypeId: 'NA==',
                                          forceUpload: 'false',
                                          moduleType: 'PROFILE_PICTURE',
                                        );

                                        if ((_model.apiResultUploadDocument
                                                ?.succeeded ??
                                            true)) {
                                          if ((ResponseModelStruct.maybeFromMap(
                                                          (_model.apiResultUploadDocument
                                                                  ?.jsonBody ??
                                                              ''))
                                                      ?.code ==
                                                  '00') ||
                                              (ResponseModelStruct.maybeFromMap(
                                                          (_model.apiResultUploadDocument
                                                                  ?.jsonBody ??
                                                              ''))
                                                      ?.hasCode() ==
                                                  false)) {
                                            _model.apiResultSaveMyProfile =
                                                await CardGroup
                                                    .saveMyProfileCall
                                                    .call(
                                              deviceSerial: FFAppState()
                                                  .deviceInformation
                                                  .serial,
                                              msgId: functions.messageId(),
                                              token: FFAppState()
                                                  .AuthenticatedUser
                                                  .accessToken,
                                              acceptLanguage:
                                                  FFLocalizations.of(context)
                                                      .getVariableText(
                                                arText: 'AR',
                                                enText: 'EN',
                                              ),
                                            );

                                            if ((_model.apiResultSaveMyProfile
                                                    ?.succeeded ??
                                                true)) {
                                              if (ResponseModelStruct
                                                          .maybeFromMap((_model
                                                                  .apiResultSaveMyProfile
                                                                  ?.jsonBody ??
                                                              ''))
                                                      ?.code ==
                                                  '00') {
                                                _model.isRegistedOutPut =
                                                    await AuthAndRegisterGroup
                                                        .isRegisteredCall
                                                        .call(
                                                  idType: FFAppState()
                                                      .AuthenticatedUser
                                                      .idType,
                                                  msgId: functions.messageId(),
                                                  idNumber: FFAppState()
                                                      .AuthenticatedUser
                                                      .idNumber,
                                                  deviceSerial: FFAppState()
                                                      .deviceInformation
                                                      .serial,
                                                  acceptLanguage:
                                                      FFLocalizations.of(
                                                              context)
                                                          .getVariableText(
                                                    arText: 'AR',
                                                    enText: 'EN',
                                                  ),
                                                );

                                                if (ResponseModelStruct
                                                            .maybeFromMap((_model
                                                                    .isRegistedOutPut
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.code ==
                                                    '00') {
                                                  FFAppState()
                                                      .updateAuthenticatedUserStruct(
                                                    (e) => e
                                                      ..userProfile =
                                                          '${FFAppConstants.baseURL}${functions.splitURL(AuthAndRegisterGroup.isRegisteredCall.photourl(
                                                                (_model.isRegistedOutPut
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ).toString())}',
                                                  );
                                                  safeSetState(() {});
                                                  await actions.showToast(
                                                    FFLocalizations.of(context)
                                                        .getVariableText(
                                                      arText:
                                                          'تم إضافة الصورة بنجاح',
                                                      enText:
                                                          'Image added successfully',
                                                    ),
                                                  );
                                                  Navigator.pop(context);
                                                } else {
                                                  safeSetState(() {
                                                    _model.isDataUploading =
                                                        false;
                                                    _model.uploadedLocalFile =
                                                        FFUploadedFile(
                                                            bytes: Uint8List
                                                                .fromList([]));
                                                  });

                                                  await actions.showToast(
                                                    FFLocalizations.of(context)
                                                        .getVariableText(
                                                      arText:
                                                          'فشل إرفاق الصورة. يُرجى المحاولة مرة أخرى',
                                                      enText:
                                                          'Failed to attach the photo. Please try again',
                                                    ),
                                                  );
                                                }
                                              } else {
                                                safeSetState(() {
                                                  _model.isDataUploading =
                                                      false;
                                                  _model.uploadedLocalFile =
                                                      FFUploadedFile(
                                                          bytes: Uint8List
                                                              .fromList([]));
                                                });

                                                await actions.showToast(
                                                  FFLocalizations.of(context)
                                                      .getVariableText(
                                                    arText:
                                                        'فشل إرفاق الصورة. يُرجى المحاولة مرة أخرى',
                                                    enText:
                                                        'Failed to attach the photo. Please try again',
                                                  ),
                                                );
                                              }
                                            }
                                          } else {
                                            safeSetState(() {
                                              _model.isDataUploading = false;
                                              _model.uploadedLocalFile =
                                                  FFUploadedFile(
                                                      bytes: Uint8List.fromList(
                                                          []));
                                            });

                                            await actions.showToast(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                arText:
                                                    'فشل إرفاق الصورة. يُرجى المحاولة مرة أخرى',
                                                enText:
                                                    'Failed to attach the photo. Please try again',
                                              ),
                                            );
                                          }
                                        } else {
                                          safeSetState(() {
                                            _model.isDataUploading = false;
                                            _model.uploadedLocalFile =
                                                FFUploadedFile(
                                                    bytes:
                                                        Uint8List.fromList([]));
                                          });

                                          await actions.showToast(
                                            FFLocalizations.of(context)
                                                .getVariableText(
                                              arText: 'خطأ',
                                              enText: 'Error',
                                            ),
                                          );
                                        }
                                      } else {
                                        await actions.showToast(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            arText:
                                                'عذرا لا يوجد اتصال بالانترنت',
                                            enText:
                                                'Sorry, no internet connection.',
                                          ),
                                        );
                                      }
                                    } else {
                                      await actions.showToast(
                                        FFLocalizations.of(context)
                                            .getVariableText(
                                          arText: 'الرجاء تحميل الصورة',
                                          enText: 'Please upload the image.',
                                        ),
                                      );
                                    }

                                    safeSetState(() {});
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'def6ozqk' /* حفظ */,
                                  ),
                                  options: FFButtonOptions(
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Lexend Deca'),
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    final selectedMedia =
                                        await selectMediaWithSourceBottomSheet(
                                      context: context,
                                      imageQuality: 80,
                                      allowPhoto: true,
                                      pickerFontFamily: 'Cairo',
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      safeSetState(
                                          () => _model.isDataUploading = true);
                                      var selectedUploadedFiles =
                                          <FFUploadedFile>[];

                                      try {
                                        selectedUploadedFiles = selectedMedia
                                            .map((m) => FFUploadedFile(
                                                  name: m.storagePath
                                                      .split('/')
                                                      .last,
                                                  bytes: m.bytes,
                                                  height: m.dimensions?.height,
                                                  width: m.dimensions?.width,
                                                  blurHash: m.blurHash,
                                                ))
                                            .toList();
                                      } finally {
                                        _model.isDataUploading = false;
                                      }
                                      if (selectedUploadedFiles.length ==
                                          selectedMedia.length) {
                                        safeSetState(() {
                                          _model.uploadedLocalFile =
                                              selectedUploadedFiles.first;
                                        });
                                      } else {
                                        safeSetState(() {});
                                        return;
                                      }
                                    }
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'cda62kdp' /* تحميل صورة */,
                                  ),
                                  options: FFButtonOptions(
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily),
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 34.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
