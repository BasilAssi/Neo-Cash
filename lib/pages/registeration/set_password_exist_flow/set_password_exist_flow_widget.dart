import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/otp_session_expired_component/otp_session_expired_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'set_password_exist_flow_model.dart';
export 'set_password_exist_flow_model.dart';

class SetPasswordExistFlowWidget extends StatefulWidget {
  const SetPasswordExistFlowWidget({super.key});

  @override
  State<SetPasswordExistFlowWidget> createState() =>
      _SetPasswordExistFlowWidgetState();
}

class _SetPasswordExistFlowWidgetState
    extends State<SetPasswordExistFlowWidget> {
  late SetPasswordExistFlowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetPasswordExistFlowModel());

    _model.passwordTextFieldTextController ??= TextEditingController();
    _model.passwordTextFieldFocusNode ??= FocusNode();

    _model.confirmPasswordTextFieldTextController ??= TextEditingController();
    _model.confirmPasswordTextFieldFocusNode ??= FocusNode();

    _model.emailTextFieldTextController ??= TextEditingController();
    _model.emailTextFieldFocusNode ??= FocusNode();
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterFlowIconButton(
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 32.0,
                  ),
                  onPressed: () async {
                    if (FFAppState().AppSettings.routeNavigationg == '0') {
                      context.pushNamed('enter_id_page_forgot_password');
                    } else {
                      context.pushNamed('phone_number');
                    }
                  },
                ),
                Expanded(
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'qj8edcp1' /* فعل حسابك على هذا الجهاز */,
                      ),
                      style: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .override(
                            fontFamily: FlutterFlowTheme.of(context)
                                .headlineMediumFamily,
                            color: FlutterFlowTheme.of(context).textAppbarColor,
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context)
                                    .headlineMediumFamily),
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
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 30.0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '5hbla8hx' /* أدخل باقي المعلومات */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleMediumFamily,
                                color: FlutterFlowTheme.of(context).textColor,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleMediumFamily),
                              ),
                        ),
                      ),
                      Form(
                        key: _model.formKey1,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: TextFormField(
                                controller:
                                    _model.passwordTextFieldTextController,
                                focusNode: _model.passwordTextFieldFocusNode,
                                autofocus: true,
                                textCapitalization:
                                    TextCapitalization.sentences,
                                obscureText:
                                    !_model.passwordTextFieldVisibility,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'pqomtgby' /* كلمة السر */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .textColor,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily),
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .textColor,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily),
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .textFieldBorder,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .textColor,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor:
                                      FlutterFlowTheme.of(context).accent4,
                                  suffixIcon: InkWell(
                                    onTap: () => safeSetState(
                                      () => _model.passwordTextFieldVisibility =
                                          !_model.passwordTextFieldVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.passwordTextFieldVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .textColor,
                                      size: 28.0,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                                validator: _model
                                    .passwordTextFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: TextFormField(
                                controller: _model
                                    .confirmPasswordTextFieldTextController,
                                focusNode:
                                    _model.confirmPasswordTextFieldFocusNode,
                                autofocus: true,
                                textCapitalization:
                                    TextCapitalization.sentences,
                                obscureText:
                                    !_model.confirmPasswordTextFieldVisibility,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'b4d362pe' /* تأكيد كلمة السر */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .textColor,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily),
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .textColor,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily),
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .textFieldBorder,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .textFieldBorder,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor:
                                      FlutterFlowTheme.of(context).accent4,
                                  suffixIcon: InkWell(
                                    onTap: () => safeSetState(
                                      () => _model
                                              .confirmPasswordTextFieldVisibility =
                                          !_model
                                              .confirmPasswordTextFieldVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.confirmPasswordTextFieldVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .textColor,
                                      size: 28.0,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                                validator: _model
                                    .confirmPasswordTextFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '5qtwq427' /* أدخل الرمز السري الخاص بحركاتك... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .displaySmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .textColor,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .displaySmallFamily),
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: PinCodeTextField(
                                autoDisposeControllers: false,
                                appContext: context,
                                length: 4,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily),
                                    ),
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                enableActiveFill: false,
                                autoFocus: true,
                                enablePinAutofill: false,
                                errorTextSpace: 16.0,
                                showCursor: true,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primary,
                                obscureText: false,
                                keyboardType: TextInputType.number,
                                pinTheme: PinTheme(
                                  fieldHeight: 44.0,
                                  fieldWidth: 44.0,
                                  borderWidth: 1.0,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                  ),
                                  shape: PinCodeFieldShape.box,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  inactiveColor: FlutterFlowTheme.of(context)
                                      .textFieldBorder,
                                  selectedColor:
                                      FlutterFlowTheme.of(context).primary,
                                ),
                                controller: _model.pinCodeController,
                                onChanged: (_) {},
                                autovalidateMode: AutovalidateMode.disabled,
                                validator: _model.pinCodeControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'xhrkcmyz' /* الرمز المكون من 4 أرقام سيستخد... */,
                                ),
                                textAlign: TextAlign.justify,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .textAppbarColor,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (FFAppState().registerationFormData.hasEmail() ==
                          false)
                        Form(
                          key: _model.formKey2,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: TextFormField(
                                  controller:
                                      _model.emailTextFieldTextController,
                                  focusNode: _model.emailTextFieldFocusNode,
                                  autofocus: true,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      'm6sf741h' /* الإيميل */,
                                    ),
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .textColor,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily),
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .textColor,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily),
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .textFieldBorder,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .textFieldBorder,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).accent4,
                                    suffixIcon: Icon(
                                      Icons.email_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 28.0,
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .textColor,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                  validator: _model
                                      .emailTextFieldTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ],
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 48.0, 0.0, 24.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 8.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (FFAppState()
                                              .registerationFormData
                                              .hasEmail() ==
                                          true) {
                                        if (_model.formKey1.currentState ==
                                                null ||
                                            !_model.formKey1.currentState!
                                                .validate()) {
                                          return;
                                        }
                                        _model.isValidPINResult1 =
                                            await actions.isValidPIN(
                                          _model.pinCodeController!.text,
                                          FFLocalizations.of(context)
                                              .languageCode,
                                        );
                                        if (_model.isValidPINResult1 ==
                                            'true') {
                                          if (_model
                                                  .passwordTextFieldTextController
                                                  .text ==
                                              _model
                                                  .confirmPasswordTextFieldTextController
                                                  .text) {
                                            _model.isNetworkAvailableOutput1 =
                                                await actions
                                                    .isNetworkAvailable();
                                            if (_model
                                                    .isNetworkAvailableOutput1 ==
                                                true) {
                                              _model.apiResultCustomerRegisterDevice1 =
                                                  await AuthAndRegisterGroup
                                                      .registerACustomerDeviceCall
                                                      .call(
                                                msgId: functions.messageId(),
                                                idNumber: FFAppState()
                                                    .registerationFormData
                                                    .idNumber,
                                                idType: FFAppState()
                                                    .registerationFormData
                                                    .idType,
                                                hashedOTP: FFAppState()
                                                    .registerationFormData
                                                    .hashedOTP,
                                                serial: FFAppState()
                                                    .deviceInformation
                                                    .serial,
                                                deviceName: FFAppState()
                                                    .deviceInformation
                                                    .name,
                                                osName: FFAppState()
                                                    .deviceInformation
                                                    .osName,
                                                osVersion: FFAppState()
                                                    .deviceInformation
                                                    .osVersion,
                                                brandName: FFAppState()
                                                    .deviceInformation
                                                    .brandName,
                                                brandVersion: FFAppState()
                                                    .deviceInformation
                                                    .brandVersion,
                                                biometricSupported: FFAppState()
                                                    .deviceInformation
                                                    .biometricSupported,
                                                pin: _model
                                                    .pinCodeController!.text,
                                                password: _model
                                                    .passwordTextFieldTextController
                                                    .text,
                                                emailAddress: FFAppState()
                                                    .registerationFormData
                                                    .email,
                                              );

                                              if ((_model
                                                      .apiResultCustomerRegisterDevice1
                                                      ?.succeeded ??
                                                  true)) {
                                                await actions.showToast(
                                                  FFLocalizations.of(context)
                                                      .getVariableText(
                                                    arText:
                                                        'تم تسجيل جهازك  بنجاح',
                                                    enText:
                                                        'Your device has been successfully registered.',
                                                  ),
                                                );
                                                // clear  the navigation action
                                                FFAppState()
                                                    .updateAppSettingsStruct(
                                                  (e) =>
                                                      e..routeNavigationg = '',
                                                );
                                                safeSetState(() {});

                                                context.pushNamed('login');
                                              } else {
                                                if (ResponseModelStruct
                                                            .maybeFromMap((_model
                                                                    .apiResultCustomerRegisterDevice1
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.code ==
                                                    '1605') {
                                                  await showDialog(
                                                    barrierDismissible: false,
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                    -0.0, 0.0)
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
                                                            child: const SizedBox(
                                                              height: 300.0,
                                                              child:
                                                                  OtpSessionExpiredComponentWidget(),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                } else if (ResponseModelStruct
                                                            .maybeFromMap((_model
                                                                    .apiResultCustomerRegisterDevice1
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.code ==
                                                    '1520') {
                                                  await actions.showToast(
                                                    FFLocalizations.of(context)
                                                        .getVariableText(
                                                      arText:
                                                          'الإيميل المدخل مسجل سابقا',
                                                      enText:
                                                          'Email is already registered',
                                                    ),
                                                  );
                                                } else if (ResponseModelStruct
                                                            .maybeFromMap((_model
                                                                    .apiResultCustomerRegisterDevice1
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.code ==
                                                    '1608') {
                                                  await actions.showToast(
                                                    FFLocalizations.of(context)
                                                        .getVariableText(
                                                      arText:
                                                          'تم استخدام كلمة المرور من قبل',
                                                      enText:
                                                          'Password is used before',
                                                    ),
                                                  );
                                                } else {
                                                  await actions.showToast(
                                                    FFLocalizations.of(context)
                                                        .getVariableText(
                                                      arText: 'خطأ',
                                                      enText: 'error',
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
                                          } else {
                                            await actions.showToast(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                arText:
                                                    'كلمات المرور غير متطابقة',
                                                enText:
                                                    'passwords do not match.',
                                              ),
                                            );
                                          }
                                        } else {
                                          await actions.showToast(
                                            _model.isValidPINResult1,
                                          );
                                        }
                                      } else {
                                        if (_model.formKey2.currentState ==
                                                null ||
                                            !_model.formKey2.currentState!
                                                .validate()) {
                                          return;
                                        }
                                        if (_model.formKey1.currentState ==
                                                null ||
                                            !_model.formKey1.currentState!
                                                .validate()) {
                                          return;
                                        }
                                        _model.isValidPINResult =
                                            await actions.isValidPIN(
                                          _model.pinCodeController!.text,
                                          FFLocalizations.of(context)
                                              .languageCode,
                                        );
                                        if (_model.isValidPINResult == 'true') {
                                          if (_model
                                                  .passwordTextFieldTextController
                                                  .text ==
                                              _model
                                                  .confirmPasswordTextFieldTextController
                                                  .text) {
                                            _model.isNetworkAvailableOutput =
                                                await actions
                                                    .isNetworkAvailable();
                                            if (_model
                                                    .isNetworkAvailableOutput ==
                                                true) {
                                              _model.apiResultCustomerRegisterDevice =
                                                  await AuthAndRegisterGroup
                                                      .registerACustomerDeviceCall
                                                      .call(
                                                msgId: functions.messageId(),
                                                idNumber: FFAppState()
                                                    .registerationFormData
                                                    .idNumber,
                                                idType: FFAppState()
                                                    .registerationFormData
                                                    .idType,
                                                hashedOTP: FFAppState()
                                                    .registerationFormData
                                                    .hashedOTP,
                                                serial: FFAppState()
                                                    .deviceInformation
                                                    .serial,
                                                deviceName: FFAppState()
                                                    .deviceInformation
                                                    .name,
                                                osName: FFAppState()
                                                    .deviceInformation
                                                    .osName,
                                                osVersion: FFAppState()
                                                    .deviceInformation
                                                    .osVersion,
                                                brandName: FFAppState()
                                                    .deviceInformation
                                                    .brandName,
                                                brandVersion: FFAppState()
                                                    .deviceInformation
                                                    .brandVersion,
                                                biometricSupported: FFAppState()
                                                    .deviceInformation
                                                    .biometricSupported,
                                                pin: _model
                                                    .pinCodeController!.text,
                                                password: _model
                                                    .passwordTextFieldTextController
                                                    .text,
                                                emailAddress:
                                                    (_model.emailTextFieldFocusNode
                                                                ?.hasFocus ??
                                                            false)
                                                        .toString(),
                                              );

                                              if ((_model
                                                      .apiResultCustomerRegisterDevice
                                                      ?.succeeded ??
                                                  true)) {
                                                await actions.showToast(
                                                  FFLocalizations.of(context)
                                                      .getVariableText(
                                                    arText:
                                                        'تم تسجيل جهازك  بنجاح',
                                                    enText:
                                                        'Your device has been successfully registered.',
                                                  ),
                                                );
                                                // clear  the navigation action
                                                FFAppState()
                                                    .updateAppSettingsStruct(
                                                  (e) =>
                                                      e..routeNavigationg = '',
                                                );
                                                safeSetState(() {});

                                                context.pushNamed('login');
                                              } else {
                                                if (ResponseModelStruct
                                                            .maybeFromMap((_model
                                                                    .apiResultCustomerRegisterDevice
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.code ==
                                                    '1605') {
                                                  await showDialog(
                                                    barrierDismissible: false,
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                    -0.0, 0.0)
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
                                                            child: const SizedBox(
                                                              height: 300.0,
                                                              child:
                                                                  OtpSessionExpiredComponentWidget(),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                } else if (ResponseModelStruct
                                                            .maybeFromMap((_model
                                                                    .apiResultCustomerRegisterDevice
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.code ==
                                                    '1608') {
                                                  await actions.showToast(
                                                    FFLocalizations.of(context)
                                                        .getVariableText(
                                                      arText:
                                                          'تم استخدام كلمة المرور من قبل',
                                                      enText:
                                                          'Password is used before',
                                                    ),
                                                  );
                                                } else {
                                                  await actions.showToast(
                                                    FFLocalizations.of(context)
                                                        .getVariableText(
                                                      arText: 'خطأ',
                                                      enText: 'error',
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
                                          } else {
                                            await actions.showToast(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                arText:
                                                    'كلمات المرور غير متطابقة',
                                                enText:
                                                    'passwords do not match.',
                                              ),
                                            );
                                          }
                                        } else {
                                          await actions.showToast(
                                            _model.isValidPINResult,
                                          );
                                        }
                                      }

                                      safeSetState(() {});
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'zsckrnmu' /* تسجيل */,
                                    ),
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.9,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.06,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
