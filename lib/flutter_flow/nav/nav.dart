import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';
final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(

      navigatorKey: _navigatorKey ,
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: FlutterFlowTheme.of(context).primaryBackground,
                child: Center(
                  child: Image.asset(
                    'assets/images/WhatsApp_Image_2024-06-11_at_8.21.11_PM.jpeg',
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            )
          : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    child: Center(
                      child: Image.asset(
                        'assets/images/WhatsApp_Image_2024-06-11_at_8.21.11_PM.jpeg',
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                )
              : LoginWidget(),
          routes: [
            FFRoute(
              name: 'home_page',
              path: 'homePage',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'home_page')
                  : HomePageWidget(),
            ),
            FFRoute(
              name: 'login',
              path: 'login',
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: 'transactions_home_page',
              path: 'transactionsHomePage',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'transactions_home_page')
                  : TransactionsHomePageWidget(),
            ),
            FFRoute(
              name: 'notification_page',
              path: 'notificationPage',
              builder: (context, params) => NotificationPageWidget(),
            ),
            FFRoute(
              name: 'phone_number',
              path: 'phoneNumber',
              builder: (context, params) => PhoneNumberWidget(),
            ),
            FFRoute(
              name: 'otp_does_not_exist_flow',
              path: 'otpDoesNotExistFlow',
              builder: (context, params) => OtpDoesNotExistFlowWidget(),
            ),
            FFRoute(
              name: 'card_details',
              path: 'cardDetails',
              builder: (context, params) => CardDetailsWidget(),
            ),
            FFRoute(
              name: 'user_profile',
              path: 'userProfile',
              builder: (context, params) => UserProfileWidget(),
            ),
            FFRoute(
              name: 'settings_page',
              path: 'settingsPage',
              builder: (context, params) => SettingsPageWidget(),
            ),
            FFRoute(
              name: 'transaction_details_page',
              path: 'transactionDetailsPage',
              builder: (context, params) => TransactionDetailsPageWidget(
                transactionData: params.getParam(
                  'transactionData',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: TransactionDataStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: 'view_pin_code_page',
              path: 'viewPinCodePage',
              builder: (context, params) => ViewPinCodePageWidget(
                pinCode: params.getParam(
                  'pinCode',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'registeration_01',
              path: 'registeration01',
              builder: (context, params) => Registeration01Widget(),
            ),
            FFRoute(
              name: 'enter_id_page',
              path: 'enterIdPage',
              builder: (context, params) => EnterIdPageWidget(),
            ),
            FFRoute(
              name: 'registeration_02',
              path: 'registeration02',
              builder: (context, params) => Registeration02Widget(),
            ),
            FFRoute(
              name: 'registeration_07',
              path: 'registeration07',
              builder: (context, params) => Registeration07Widget(),
            ),
            FFRoute(
              name: 'registeration_06',
              path: 'registeration06',
              builder: (context, params) => Registeration06Widget(),
            ),
            FFRoute(
              name: 'registeration_03',
              path: 'registeration03',
              builder: (context, params) => Registeration03Widget(),
            ),
            FFRoute(
              name: 'registeration_05',
              path: 'registeration05',
              builder: (context, params) => Registeration05Widget(),
            ),
            FFRoute(
              name: 'registeration_08',
              path: 'registeration08',
              builder: (context, params) => Registeration08Widget(
                fromPage: params.getParam(
                  'fromPage',
                  ParamType.String,
                ),
                customerId: params.getParam(
                  'customerId',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'registeration_04',
              path: 'registeration04',
              builder: (context, params) => Registeration04Widget(),
            ),
            FFRoute(
              name: 'set_password_exist_flow',
              path: 'setPasswordExistFlow',
              builder: (context, params) => SetPasswordExistFlowWidget(),
            ),
            FFRoute(
              name: 'about_us',
              path: 'aboutUs',
              builder: (context, params) => AboutUsWidget(),
            ),
            FFRoute(
              name: 'terms_and_conditions',
              path: 'termsAndConditions',
              builder: (context, params) => TermsAndConditionsWidget(),
            ),
            FFRoute(
              name: 'confirm_reset_password',
              path: 'confirmResetPassword',
              builder: (context, params) => ConfirmResetPasswordWidget(),
            ),
            FFRoute(
              name: 'agent_list',
              path: 'agentList',
              builder: (context, params) => AgentListWidget(),
            ),
            FFRoute(
              name: 'basic_infi_forgot_pin',
              path: 'basicInfiForgotPin',
              builder: (context, params) => BasicInfiForgotPinWidget(),
            ),
            FFRoute(
              name: 'success_page',
              path: 'successPage',
              builder: (context, params) => SuccessPageWidget(),
            ),
            FFRoute(
              name: 'set_pin_forgot_pin',
              path: 'setPinForgotPin',
              builder: (context, params) => SetPinForgotPinWidget(),
            ),
            FFRoute(
              name: 'transactions_page',
              path: 'transactionsPage',
              builder: (context, params) => TransactionsPageWidget(),
            ),
            FFRoute(
              name: 'frequently_asked_questions',
              path: 'frequentlyAskedQuestions',
              builder: (context, params) => FrequentlyAskedQuestionsWidget(),
            ),
            FFRoute(
              name: 'otp_verify_email',
              path: 'otpVerifyEmail',
              builder: (context, params) => OtpVerifyEmailWidget(),
            ),
            FFRoute(
              name: 'otp_phone_forgot_pin',
              path: 'otpPhoneForgotPin',
              builder: (context, params) => OtpPhoneForgotPinWidget(),
            ),
            FFRoute(
              name: 'enter_id_page_forgot_password',
              path: 'enterIdPageForgotPassword',
              builder: (context, params) => EnterIdPageForgotPasswordWidget(),
            ),
            FFRoute(
              name: 'otp_phone_forgot_password',
              path: 'otpPhoneForgotPassword',
              builder: (context, params) => OtpPhoneForgotPasswordWidget(),
            ),
            FFRoute(
              name: 'confirm_forgot_password',
              path: 'confirmForgotPassword',
              builder: (context, params) => ConfirmForgotPasswordWidget(),
            ),
            FFRoute(
              name: 'pin_code',
              path: 'pinCode',
              builder: (context, params) => PinCodeWidget(),
            ),
            FFRoute(
              name: 'list_exchange_rate',
              path: 'listExchangeRate',
              builder: (context, params) => ListExchangeRateWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
