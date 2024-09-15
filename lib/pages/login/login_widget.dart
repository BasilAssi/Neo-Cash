import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/error_component_copy/error_component_copy_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>
    with TickerProviderStateMixin {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.setDeviceInfo();
    });

    _model.textFieldValueTextController ??= TextEditingController(
        text: FFAppState().AuthenticatedUser.hasMobileNumber()
            ? FFAppState().AuthenticatedUser.mobileNumber
            : '');
    _model.textFieldValueFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 900.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 80.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.8, 0.8),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 45.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 1.0,
                    ),
                  ),
                  child:
                      // FFLocalizations.of(context).languageCode == 'en'
                      Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: ToggleIcon(
                      onPressed: () async {
                        safeSetState(() =>
                            FFAppState().isEnglish = !FFAppState().isEnglish);
                        if (FFLocalizations.of(context).languageCode == 'en') {
                          setAppLanguage(context, 'ar');
                        } else {
                          setAppLanguage(context, 'en');
                        }
                      },
                      value: FFAppState().isEnglish,
                      onIcon: Icon(
                        Icons.e_mobiledata,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                      offIcon: FaIcon(
                        FontAwesomeIcons.globe,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 25.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            actions: const [],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      height: MediaQuery.sizeOf(context).height * 0.2,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/WhatsApp_Image_2024-06-11_at_8.21.11_PM.jpeg',
                            width: 40.0,
                            height: MediaQuery.sizeOf(context).height * 0.4,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation1']!),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  width: 2.0,
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: SingleChildScrollView(
                                  primary: false,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 20.0),
                                        child: Container(
                                          width: 230.0,
                                          height: 16.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: TextFormField(
                                              controller: _model
                                                  .textFieldValueTextController,
                                              focusNode: _model
                                                  .textFieldValueFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.textFieldValueTextController',
                                                const Duration(milliseconds: 300),
                                                () async {
                                                  safeSetState(() {
                                                    _model.textFieldValueTextController
                                                            ?.text =
                                                        functions.updateTextfield(
                                                            _model
                                                                .textFieldValueTextController
                                                                .text)!;
                                                    _model.textFieldValueTextController
                                                            ?.selection =
                                                        TextSelection.collapsed(
                                                            offset: _model
                                                                .textFieldValueTextController!
                                                                .text
                                                                .length);
                                                  });
                                                },
                                              ),
                                              autofocus: true,
                                              autofillHints: const [
                                                AutofillHints.telephoneNumber
                                              ],
                                              textInputAction:
                                                  TextInputAction.done,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'kcjciuhj' /* 5xxxxxxxx */,
                                                ),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .textColor,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                alignLabelWithHint: false,
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .textColor,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .textFieldBorder,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .textFieldBorder,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsets.all(12.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textColor,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                              textAlign: TextAlign.start,
                                              maxLength: 9,
                                              maxLengthEnforcement:
                                                  MaxLengthEnforcement.enforced,
                                              buildCounter: (context,
                                                      {required currentLength,
                                                      required isFocused,
                                                      maxLength}) =>
                                                  null,
                                              keyboardType: TextInputType.phone,
                                              validator: _model
                                                  .textFieldValueTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController ??=
                                                  FormFieldController<String>(
                                                _model
                                                    .dropDownValue ??= FFAppState()
                                                        .AuthenticatedUser
                                                        .hasMobileNumberPrefix()
                                                    ? FFAppState()
                                                        .AuthenticatedUser
                                                        .mobileNumberPrefix
                                                    : '970',
                                              ),
                                              options: List<String>.from(
                                                  ['970', '972']),
                                              optionLabels: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ke1w6n59' /* 970+ */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'mydegl1b' /* 972+ */,
                                                )
                                              ],
                                              onChanged: (val) => safeSetState(
                                                  () => _model.dropDownValue =
                                                      val),
                                              width: 100.0,
                                              height: 48.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textColor,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textColor,
                                                size: 30.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .textFieldBorder,
                                              borderWidth: 1.0,
                                              borderRadius: 12.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 8.0)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: TextFormField(
                                          controller:
                                              _model.passwordTextController,
                                          focusNode: _model.passwordFocusNode,
                                          autofocus: false,
                                          textCapitalization:
                                              TextCapitalization.sentences,
                                          obscureText:
                                              !_model.passwordVisibility,
                                          decoration: InputDecoration(
                                            isDense: false,
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'wjlvy24l' /* كلمة المرور */,
                                            ),
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .textColor,
                                                      fontSize: 18.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily),
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .textColor,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily),
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textFieldBorder,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textFieldBorder,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            prefixIcon: const Icon(
                                              Icons.key_rounded,
                                            ),
                                            suffixIcon: InkWell(
                                              onTap: () => safeSetState(
                                                () => _model
                                                        .passwordVisibility =
                                                    !_model.passwordVisibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                _model.passwordVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textColor,
                                                size: 20.0,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textColor,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                          validator: _model
                                              .passwordTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 8.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                  'enter_id_page_forgot_password');
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '3d2l5lvx' /* نسيت كلمة المرور؟ */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineSmall
                                                  .override(
                                                    fontFamily: FlutterFlowTheme
                                                            .of(context)
                                                        .headlineSmallFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    decoration: TextDecoration
                                                        .underline,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmallFamily),
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 24.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              if (_model.formKey.currentState ==
                                                      null ||
                                                  !_model.formKey.currentState!
                                                      .validate()) {
                                                return;
                                              }
                                              _model.isNetworkAvailableOutput =
                                                  await actions
                                                      .isNetworkAvailable();
                                              if (_model
                                                      .isNetworkAvailableOutput ==
                                                  true) {
                                                _model.apiResultLogin =
                                                    await AuthAndRegisterGroup
                                                        .loginCall
                                                        .call(
                                                  deviceSerial: FFAppState()
                                                      .deviceInformation
                                                      .serial,
                                                  mobileWithPrefix:
                                                      '${_model.dropDownValue}${_model.textFieldValueTextController.text}',
                                                  password: _model
                                                      .passwordTextController
                                                      .text,
                                                );

                                                if ((_model.apiResultLogin
                                                        ?.succeeded ??
                                                    true)) {
                                                  FFAppState()
                                                      .updateAuthenticatedUserStruct(
                                                    (e) => e
                                                      ..accessToken = LoginAPIResponseStruct
                                                              .maybeFromMap((_model
                                                                      .apiResultLogin
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.accessToken
                                                      ..password = _model
                                                          .passwordTextController
                                                          .text
                                                      ..mobileNumber = _model
                                                          .textFieldValueTextController
                                                          .text,
                                                  );
                                                  safeSetState(() {});
                                                  _model.parsedJWT =
                                                      await actions.parseJWT(
                                                    FFAppState()
                                                        .AuthenticatedUser
                                                        .accessToken,
                                                  );
                                                  await actions
                                                      .setAuthenticatedUserInfo(
                                                    _model.parsedJWT!,
                                                  );
                                                  if (FFAppState()
                                                          .AuthenticatedUser
                                                          .isMissingDocuments ==
                                                      false) {
                                                    await actions.showToast(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getVariableText(
                                                        arText:
                                                            'تم تسجيل دخولك بنجاح ',
                                                        enText:
                                                            'You have successfully logged in.',
                                                      ),
                                                    );

                                                    context
                                                        .pushNamed('home_page');
                                                  } else {
                                                    await actions.showToast(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getVariableText(
                                                        arText:
                                                            'اكمل نسجيل حسابك',
                                                        enText:
                                                            'Complete your account registration',
                                                      ),
                                                    );

                                                    context.pushNamed(
                                                      'registeration_08',
                                                      queryParameters: {
                                                        'fromPage':
                                                            serializeParam(
                                                          'loginMisDoc',
                                                          ParamType.String,
                                                        ),
                                                        'customerId':
                                                            serializeParam(
                                                          FFAppState()
                                                              .AuthenticatedUser
                                                              .encodedId,
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  }
                                                } else {
                                                  if (LoginAPIResponseStruct.maybeFromMap(
                                                              (_model.apiResultLogin
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.code ==
                                                      '401') {
                                                    await actions.showToast(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getVariableText(
                                                        arText:
                                                            'عملية المصادقة غير صحيحة',
                                                        enText:
                                                            'Sorry, no internet connection.',
                                                      ),
                                                    );
                                                  } else if (LoginAPIResponseStruct.maybeFromMap(
                                                              (_model.apiResultLogin
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.code ==
                                                      '1522') {
                                                    await actions.showToast(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getVariableText(
                                                        arText:
                                                            'جهازك غير مفعل ',
                                                        enText:
                                                            'Your device is not activated',
                                                      ),
                                                    );

                                                    context.pushNamed(
                                                        'enter_id_page');
                                                  } else if (LoginAPIResponseStruct.maybeFromMap(
                                                              (_model.apiResultLogin
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.code ==
                                                      '1523') {
                                                    await actions.showToast(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getVariableText(
                                                        arText:
                                                            'تم إغلاق حسابك، يرجى الاتصال بـ نيوكاش.',
                                                        enText:
                                                            'Your account is closed, please contact neocash.',
                                                      ),
                                                    );
                                                  } else if (LoginAPIResponseStruct
                                                              .maybeFromMap((_model
                                                                      .apiResultLogin
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.code ==
                                                      '1011') {
                                                    await actions.showToast(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getVariableText(
                                                        arText:
                                                            'تم تجاوز عدد محاولات تسجيل الدخول المسموح بها يرجى مراجعة نيو كاش',
                                                        enText:
                                                            'The number of allowed login attempts has been exceeded. Please check NeoCash.',
                                                      ),
                                                    );
                                                  } else {
                                                    await actions.showToast(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getVariableText(
                                                        arText:
                                                            'عملية المصادقة غير صحيحة',
                                                        enText:
                                                            'Sorry, no internet connection.',
                                                      ),
                                                    );
                                                  }
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

                                              safeSetState(() {});
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'd8rj43jr' /* تسجيل الدخول */,
                                            ),
                                            options: FFButtonOptions(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.9,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.06,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Builder(
                                                builder: (context) =>
                                                    FFButtonWidget(
                                                  onPressed: () async {
                                                    if (FFAppState()
                                                            .AppSettings
                                                            .biometricEnabled ==
                                                        true) {
                                                      final localAuth =
                                                          LocalAuthentication();
                                                      bool
                                                          isBiometricSupported =
                                                          await localAuth
                                                              .isDeviceSupported();
                                                      bool canCheckBiometrics =
                                                          await localAuth
                                                              .canCheckBiometrics;
                                                      if (isBiometricSupported &&
                                                          canCheckBiometrics) {
                                                        _model.biometricOutput = await localAuth
                                                            .authenticate(
                                                                localizedReason:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'q9ks8jtt' /* تسجيل الدخول من خلال خاصية الت... */,
                                                                ),
                                                                options: const AuthenticationOptions(
                                                                    biometricOnly:
                                                                        true));
                                                        safeSetState(() {});
                                                      }

                                                      if (_model
                                                              .biometricOutput ==
                                                          true) {
                                                        // Set number of failuer to zero
                                                        FFAppState()
                                                            .updateAppSettingsStruct(
                                                          (e) => e
                                                            ..numberOfBiometricFailure =
                                                                0,
                                                        );
                                                        safeSetState(() {});
                                                        _model.isNetworkAvailableOutput1 =
                                                            await actions
                                                                .isNetworkAvailable();
                                                        if (_model
                                                                .isNetworkAvailableOutput1 ==
                                                            true) {
                                                          _model.apiResultLoginBiometric =
                                                              await AuthAndRegisterGroup
                                                                  .loginCall
                                                                  .call(
                                                            deviceSerial:
                                                                FFAppState()
                                                                    .deviceInformation
                                                                    .serial,
                                                            mobileWithPrefix:
                                                                '${FFAppState().AuthenticatedUser.mobileNumberPrefix}${FFAppState().AuthenticatedUser.mobileNumber}',
                                                            password: FFAppState()
                                                                .AuthenticatedUser
                                                                .password,
                                                          );

                                                          if ((_model
                                                                  .apiResultLoginBiometric
                                                                  ?.succeeded ??
                                                              true)) {
                                                            FFAppState()
                                                                .updateAuthenticatedUserStruct(
                                                              (e) => e
                                                                ..accessToken = LoginAPIResponseStruct.maybeFromMap(
                                                                        (_model.apiResultLoginBiometric?.jsonBody ??
                                                                            ''))
                                                                    ?.accessToken,
                                                            );
                                                            safeSetState(() {});
                                                            _model.parsedJWTBiometric =
                                                                await actions
                                                                    .parseJWT(
                                                              FFAppState()
                                                                  .AuthenticatedUser
                                                                  .accessToken,
                                                            );
                                                            await actions
                                                                .setAuthenticatedUserInfo(
                                                              _model
                                                                  .parsedJWTBiometric!,
                                                            );
                                                            if (FFAppState()
                                                                    .AuthenticatedUser
                                                                    .isMissingDocuments ==
                                                                false) {
                                                              await actions
                                                                  .showToast(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getVariableText(
                                                                  arText:
                                                                      'تم تسجيل دخولك بنجاح ',
                                                                  enText:
                                                                      'You have successfully logged in.',
                                                                ),
                                                              );

                                                              context.pushNamed(
                                                                  'home_page');
                                                            } else {
                                                              await actions
                                                                  .showToast(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getVariableText(
                                                                  arText:
                                                                      'اكمل نسجيل حسابك',
                                                                  enText:
                                                                      'Complete your account registration',
                                                                ),
                                                              );

                                                              context.pushNamed(
                                                                'registeration_08',
                                                                queryParameters:
                                                                    {
                                                                  'fromPage':
                                                                      serializeParam(
                                                                    'loginMisDoc',
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'customerId':
                                                                      serializeParam(
                                                                    FFAppState()
                                                                        .AuthenticatedUser
                                                                        .encodedId,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            }
                                                          } else {
                                                            if (LoginAPIResponseStruct.maybeFromMap(
                                                                        (_model.apiResultLogin?.jsonBody ??
                                                                            ''))
                                                                    ?.code ==
                                                                '401') {
                                                              await actions
                                                                  .showToast(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getVariableText(
                                                                  arText:
                                                                      'عملية المصادقة غير صحيحة',
                                                                  enText:
                                                                      'Sorry, no internet connection.',
                                                                ),
                                                              );
                                                            } else if (LoginAPIResponseStruct.maybeFromMap(
                                                                        (_model.apiResultLogin?.jsonBody ??
                                                                            ''))
                                                                    ?.code ==
                                                                '1522') {
                                                              await actions
                                                                  .showToast(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getVariableText(
                                                                  arText:
                                                                      'جهازك غير مفعل ',
                                                                  enText:
                                                                      'Your device is not activated',
                                                                ),
                                                              );

                                                              context.pushNamed(
                                                                  'enter_id_page');
                                                            } else if (LoginAPIResponseStruct.maybeFromMap(
                                                                        (_model.apiResultLogin?.jsonBody ??
                                                                            ''))
                                                                    ?.code ==
                                                                '1523') {
                                                              await actions
                                                                  .showToast(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getVariableText(
                                                                  arText:
                                                                      'تم إغلاق حسابك، يرجى الاتصال بـ نيوكاش.',
                                                                  enText:
                                                                      'Your account is closed, please contact neocash.',
                                                                ),
                                                              );
                                                            } else if (LoginAPIResponseStruct.maybeFromMap(
                                                                        (_model.apiResultLogin?.jsonBody ??
                                                                            ''))
                                                                    ?.code ==
                                                                '1011') {
                                                              await actions
                                                                  .showToast(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getVariableText(
                                                                  arText:
                                                                      'تم تجاوز عدد محاولات تسجيل الدخول المسموح بها يرجى مراجعة نيو كاش',
                                                                  enText:
                                                                      'The number of allowed login attempts has been exceeded. Please check NeoCash.',
                                                                ),
                                                              );
                                                            } else {
                                                              await actions
                                                                  .showToast(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getVariableText(
                                                                  arText:
                                                                      'عملية المصادقة غير صحيحة',
                                                                  enText:
                                                                      'Sorry, no internet connection.',
                                                                ),
                                                              );
                                                            }
                                                          }
                                                        } else {
                                                          await actions
                                                              .showToast(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getVariableText(
                                                              arText:
                                                                  'عذرا لا يوجد اتصال بالانترنت',
                                                              enText:
                                                                  'Sorry, no internet connection.',
                                                            ),
                                                          );
                                                        }
                                                      } else {
                                                        if (FFAppState()
                                                                .AppSettings
                                                                .numberOfBiometricFailure <
                                                            5) {
                                                          // Action 17   increment  number of biometric failure
                                                          FFAppState()
                                                              .updateAppSettingsStruct(
                                                            (e) => e
                                                              ..incrementNumberOfBiometricFailure(
                                                                  1),
                                                          );
                                                          safeSetState(() {});
                                                        } else {
                                                          // Action 17   increment  number of biometric failure
                                                          FFAppState()
                                                              .updateAppSettingsStruct(
                                                            (e) => e
                                                              ..biometricEnabled =
                                                                  false,
                                                          );
                                                          safeSetState(() {});
                                                        }
                                                      }
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child: WebViewAware(
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () =>
                                                                    FocusScope.of(
                                                                            dialogContext)
                                                                        .unfocus(),
                                                                child:
                                                                    SizedBox(
                                                                  height: 410.0,
                                                                  child:
                                                                      ErrorComponentCopyWidget(
                                                                    errorText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'ys56dzfk' /* تعريف البصمة غير مفعل
على هذا ... */
                                                                      ,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    }

                                                    safeSetState(() {});
                                                  },
                                                  text: '',
                                                  icon: Icon(
                                                    Icons.fingerprint_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 60.0,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.35,
                                                    height: 60.0,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 1.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed('about_us');
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'nf068v0h' /* من نحن؟ */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineSmallFamily),
                                                              ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.quiz,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 24.0,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ].addToEnd(const SizedBox(width: 30.0)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Container(
                                          width: 300.0,
                                          height: 1.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0xFFE9DFDF),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 24.0, 0.0, 0.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '3mc67cej' /* ما عندك حساب؟ */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'enter_id_page');
                                                  },
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '07qpw4xc' /*    أنشئ حساب */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmallFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'columnOnPageLoadAnimation']!),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation2']!),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
