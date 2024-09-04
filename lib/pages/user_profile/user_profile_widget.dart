import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_profile_model.dart';
export 'user_profile_model.dart';

class UserProfileWidget extends StatefulWidget {
  const UserProfileWidget({super.key});

  @override
  State<UserProfileWidget> createState() => _UserProfileWidgetState();
}

class _UserProfileWidgetState extends State<UserProfileWidget> {
  late UserProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserProfileModel());
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
                  context.safePop();
                },
              ),
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '897rfc7a' /* ملفي الشخصي */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
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
        body: Padding(
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
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Stack(
                    alignment: const AlignmentDirectional(-0.0, 1.0),
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 36.0, 0.0, 0.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 2.0,
                            shape: const CircleBorder(),
                            child: ClipOval(
                              child: Container(
                                width: 140.0,
                                height: 140.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    width: 2.0,
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
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
                                              image: CachedNetworkImage(
                                                fadeInDuration:
                                                    const Duration(milliseconds: 500),
                                                fadeOutDuration:
                                                    const Duration(milliseconds: 500),
                                                imageUrl:
                                                    'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                                                fit: BoxFit.contain,
                                                errorWidget: (context, error,
                                                        stackTrace) =>
                                                    Image.asset(
                                                  'assets/images/error_image.jpeg',
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              allowRotation: false,
                                              tag: 'dash',
                                              useHeroAnimation: true,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: 'dash',
                                        transitionOnUserGestures: true,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(170.0),
                                          child: CachedNetworkImage(
                                            fadeInDuration:
                                                const Duration(milliseconds: 500),
                                            fadeOutDuration:
                                                const Duration(milliseconds: 500),
                                            imageUrl:
                                                'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                                            width: double.infinity,
                                            height: double.infinity,
                                            fit: BoxFit.cover,
                                            errorWidget:
                                                (context, error, stackTrace) =>
                                                    Image.asset(
                                              'assets/images/error_image.jpeg',
                                              width: double.infinity,
                                              height: double.infinity,
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
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.3, 0.4),
                        child: FlutterFlowIconButton(
                          borderColor:
                              FlutterFlowTheme.of(context).textFieldBorder,
                          borderRadius: 24.0,
                          borderWidth: 1.0,
                          buttonSize: 48.0,
                          fillColor:
                              FlutterFlowTheme.of(context).iconBackground,
                          icon: Icon(
                            Icons.edit,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .iconBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .textFieldBorder,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.person_outline_sharp,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 28.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'bp7pe903' /* اسم المستخدم */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .textColor,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 8.0),
                                      child: Text(
                                        FFLocalizations.of(context)
                                            .getVariableText(
                                          arText: FFAppState()
                                                  .AuthenticatedUser
                                                  .hasFirstNameAr()
                                              ? FFAppState()
                                                  .AuthenticatedUser
                                                  .firstNameAr
                                              : ' ',
                                          enText: FFAppState()
                                                  .AuthenticatedUser
                                                  .hasFirstName()
                                              ? FFAppState()
                                                  .AuthenticatedUser
                                                  .firstName
                                              : '  ',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textColor,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumFamily),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .iconBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .textFieldBorder,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.date_range_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 28.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'dbqmodex' /* رقم الموبايل */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .textColor,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 8.0),
                                      child: Text(
                                        FFAppState()
                                                .AuthenticatedUser
                                                .hasMobileNumber()
                                            ? FFAppState()
                                                .AuthenticatedUser
                                                .mobileNumber
                                            : ' ',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textColor,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumFamily),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .iconBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .textFieldBorder,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.email_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 28.0,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, -1.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'ag1hrdqa' /* الإيميل */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 8.0),
                                            child: Text(
                                              FFAppState()
                                                      .AuthenticatedUser
                                                      .hasEmailAddress()
                                                  ? FFAppState()
                                                      .AuthenticatedUser
                                                      .emailAddress
                                                  : ' ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .textColor,
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMediumFamily),
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Builder(
                                  builder: (context) {
                                    if ((FFAppState()
                                                .AuthenticatedUser
                                                .hasEmailVerified()
                                            ? FFAppState()
                                                .AuthenticatedUser
                                                .emailVerified
                                            : false) ==
                                        true) {
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: Container(
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: const Color(0xB2E9E4E4),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.check_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                size: 28.0,
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'g3fbaqeh' /* تم التحقق   */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    } else {
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.isNetworkAvailableOutput =
                                                await actions
                                                    .isNetworkAvailable();
                                            if (_model
                                                    .isNetworkAvailableOutput ==
                                                true) {
                                              _model.apiResultSendOTPEmail =
                                                  await AuthAndRegisterGroup
                                                      .sendOTPToCustomerCall
                                                      .call(
                                                msgId: functions.messageId(),
                                                idNumber: FFAppState()
                                                    .AuthenticatedUser
                                                    .idNumber,
                                                idType: FFAppState()
                                                    .AuthenticatedUser
                                                    .idType,
                                                destinationType: 'EMAIL',
                                                operationType:
                                                    'VERIFY_DESTINATION',
                                                destination: FFAppState()
                                                    .AuthenticatedUser
                                                    .emailAddress,
                                                acceptLanguage:
                                                    FFLocalizations.of(context)
                                                        .getVariableText(
                                                  arText: 'AR',
                                                  enText: 'EN',
                                                ),
                                              );

                                              if ((_model.apiResultSendOTPEmail
                                                      ?.succeeded ??
                                                  true)) {
                                                if (ResponseModelStruct
                                                            .maybeFromMap((_model
                                                                    .apiResultSendOTPEmail
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.code ==
                                                    '00') {
                                                  await actions.showToast(
                                                    FFLocalizations.of(context)
                                                        .getVariableText(
                                                      arText:
                                                          'تم إرسال رمز التحقق بنجاح  على الايميل ${FFAppState().AuthenticatedUser.emailAddress}',
                                                      enText:
                                                          'Verification code has been sent successfully to your email ${FFAppState().AuthenticatedUser.emailAddress}',
                                                    ),
                                                  );

                                                  context.pushNamed(
                                                      'otp_verify_email');
                                                } else {
                                                  await actions.showToast(
                                                    FFLocalizations.of(context)
                                                        .getVariableText(
                                                      arText:
                                                          'فشل إرسال رمز التحقق',
                                                      enText:
                                                          'Failed to send verification code.',
                                                    ),
                                                  );
                                                }
                                              } else {
                                                await actions.showToast(
                                                  FFLocalizations.of(context)
                                                      .getVariableText(
                                                    arText:
                                                        'فشل إرسال رمز التحقق',
                                                    enText:
                                                        'Failed to send verification code.',
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

                                            setState(() {});
                                          },
                                          child: Container(
                                            height: 45.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0xB2E9E4E4),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'uemhjyul' /* التحقق من
 البريد الإلكتروني */
                                                        ,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleMediumFamily),
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
                                  },
                                ),
                                FlutterFlowIconButton(
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 48.0,
                                  icon: Icon(
                                    Icons.edit,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ],
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
