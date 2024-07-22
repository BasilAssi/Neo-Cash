import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

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
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Center(
                  child: Image.asset(
                    'assets/images/WhatsApp_Image_2024-06-11_at_8.21.11_PM.jpeg',
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            )
          : const LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Center(
                      child: Image.asset(
                        'assets/images/WhatsApp_Image_2024-06-11_at_8.21.11_PM.jpeg',
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                )
              : const LoginWidget(),
          routes: [
            FFRoute(
              name: 'home_page',
              path: 'homePage',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'home_page')
                  : const HomePageWidget(),
            ),
            FFRoute(
              name: 'login',
              path: 'login',
              builder: (context, params) => const LoginWidget(),
            ),
            FFRoute(
              name: 'transactions_home_page',
              path: 'transactionsHomePage',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'transactions_home_page')
                  : const TransactionsHomePageWidget(),
            ),
            FFRoute(
              name: 'notification_page',
              path: 'notificationPage',
              builder: (context, params) => const NotificationPageWidget(),
            ),
            FFRoute(
              name: 'register_page_1',
              path: 'registerPage1',
              builder: (context, params) => const RegisterPage1Widget(),
            ),
            FFRoute(
              name: 'register_page_2_phone_number',
              path: 'registerPage2PhoneNumber',
              builder: (context, params) => const RegisterPage2PhoneNumberWidget(),
            ),
            FFRoute(
              name: 'register_page_3_otp',
              path: 'registerPage3Otp',
              builder: (context, params) => RegisterPage3OtpWidget(
                phoneNumber: params.getParam(
                  'phoneNumber',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'card_details',
              path: 'cardDetails',
              builder: (context, params) => const CardDetailsWidget(),
            ),
            FFRoute(
              name: 'user_page',
              path: 'userPage',
              builder: (context, params) => const UserPageWidget(),
            ),
            FFRoute(
              name: 'settings_page',
              path: 'settingsPage',
              builder: (context, params) => const SettingsPageWidget(),
            ),
            FFRoute(
              name: 'transaction_details_page',
              path: 'transactionDetailsPage',
              builder: (context, params) => const TransactionDetailsPageWidget(),
            ),
            FFRoute(
              name: 'card_settings_page',
              path: 'cardSettingsPage',
              builder: (context, params) => const CardSettingsPageWidget(),
            ),
            FFRoute(
              name: 'view_pin_code_page',
              path: 'viewPinCodePage',
              builder: (context, params) => const ViewPinCodePageWidget(),
            ),
            FFRoute(
              name: 'pin_code',
              path: 'pinCode',
              builder: (context, params) => const PinCodeWidget(),
            ),
            FFRoute(
              name: 'registeration_01',
              path: 'registeration01',
              builder: (context, params) => const Registeration01Widget(),
            ),
            FFRoute(
              name: 'enable_notifications',
              path: 'enableNotifications',
              builder: (context, params) => const EnableNotificationsWidget(),
            ),
            FFRoute(
              name: 'qr_code_page',
              path: 'qrCodePage',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'qr_code_page')
                  : const QrCodePageWidget(),
            ),
            FFRoute(
              name: 'select_id_page',
              path: 'selectIdPage',
              builder: (context, params) => const SelectIdPageWidget(),
            ),
            FFRoute(
              name: 'enter_id_page',
              path: 'enterIdPage',
              builder: (context, params) => const EnterIdPageWidget(),
            ),
            FFRoute(
              name: 'otp_exist_person_page',
              path: 'otpExistPersonPage',
              builder: (context, params) => OtpExistPersonPageWidget(
                phoneNumber: params.getParam(
                  'phoneNumber',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'registeration_02',
              path: 'registeration02',
              builder: (context, params) => const Registeration02Widget(),
            ),
            FFRoute(
              name: 'registeration_04',
              path: 'registeration04',
              builder: (context, params) => const Registeration04Widget(),
            ),
            FFRoute(
              name: 'registeration_03',
              path: 'registeration03',
              builder: (context, params) => const Registeration03Widget(),
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

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
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
