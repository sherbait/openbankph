import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/schema/enums/enums.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const LoginPageWidget(),
        ),
        FFRoute(
          name: 'loginPage',
          path: '/login',
          builder: (context, params) => const LoginPageWidget(),
        ),
        FFRoute(
          name: 'registerAccountPage',
          path: '/registerAccount',
          builder: (context, params) => const RegisterAccountPageWidget(),
        ),
        FFRoute(
          name: 'completeProfilePage',
          path: '/completeProfile',
          requireAuth: true,
          builder: (context, params) => const CompleteProfilePageWidget(),
        ),
        FFRoute(
          name: 'forgotPasswordPage',
          path: '/forgotPassword',
          builder: (context, params) => const ForgotPasswordPageWidget(),
        ),
        FFRoute(
          name: 'onboarding',
          path: '/onboarding',
          builder: (context, params) => const OnboardingWidget(),
        ),
        FFRoute(
          name: 'createBudgetBegin',
          path: '/createBudgetBegin',
          builder: (context, params) => const CreateBudgetBeginWidget(),
        ),
        FFRoute(
          name: 'MY_Card',
          path: '/mYCard',
          requireAuth: true,
          builder: (context, params) => const MYCardWidget(),
        ),
        FFRoute(
          name: 'MY_Budgets',
          path: '/mYBudgets',
          requireAuth: true,
          builder: (context, params) => const MYBudgetsWidget(),
        ),
        FFRoute(
          name: 'paymentDetails',
          path: '/paymentDetails',
          builder: (context, params) => PaymentDetailsWidget(
            transactionDetails: params.getParam('transactionDetails',
                ParamType.DocumentReference, false, ['transactions']),
            userSpent: params.getParam(
                'userSpent', ParamType.DocumentReference, false, ['users']),
          ),
        ),
        FFRoute(
          name: 'MY_profilePage',
          path: '/mYProfile',
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'MY_profilePage')
              : MYProfilePageWidget(
                  userProfile: params.getParam('userProfile',
                      ParamType.DocumentReference, false, ['users']),
                ),
        ),
        FFRoute(
          name: 'budgetDetails',
          path: '/budgetDetails',
          builder: (context, params) => BudgetDetailsWidget(
            budgetDetails: params.getParam('budgetDetails',
                ParamType.DocumentReference, false, ['budgets']),
          ),
        ),
        FFRoute(
          name: 'transferComplete',
          path: '/transferComplete',
          requireAuth: true,
          builder: (context, params) => const TransferCompleteWidget(),
        ),
        FFRoute(
          name: 'transferFunds',
          path: '/transferFunds',
          requireAuth: true,
          builder: (context, params) => const TransferFundsWidget(),
        ),
        FFRoute(
          name: 'requestFunds',
          path: '/requestFunds',
          builder: (context, params) => const RequestFundsWidget(),
        ),
        FFRoute(
          name: 'createBudget',
          path: '/createBudget',
          builder: (context, params) => const CreateBudgetWidget(),
        ),
        FFRoute(
          name: 'transaction_ADD',
          path: '/transactionADD',
          builder: (context, params) => const TransactionADDWidget(),
        ),
        FFRoute(
          name: 'transaction_EDIT',
          path: '/transactionEDIT',
          builder: (context, params) => TransactionEDITWidget(
            transactionDetails: params.getParam('transactionDetails',
                ParamType.DocumentReference, false, ['transactions']),
          ),
        ),
        FFRoute(
          name: 'editProfilePage',
          path: '/editProfile',
          requireAuth: true,
          builder: (context, params) => EditProfilePageWidget(
            userProfile: params.getParam(
                'userProfile', ParamType.DocumentReference, false, ['users']),
          ),
        ),
        FFRoute(
          name: 'changePassword',
          path: '/changePassword',
          requireAuth: true,
          builder: (context, params) => const ChangePasswordWidget(),
        ),
        FFRoute(
          name: 'notificationsSettings',
          path: '/notificationsSettings',
          requireAuth: true,
          builder: (context, params) => const NotificationsSettingsWidget(),
        ),
        FFRoute(
          name: 'privacyPolicyPage',
          path: '/privacyPolicy',
          requireAuth: true,
          builder: (context, params) => const PrivacyPolicyPageWidget(),
        ),
        FFRoute(
          name: 'tutorial_PROFILE',
          path: '/tutorialPROFILE',
          builder: (context, params) => const TutorialPROFILEWidget(),
        ),
        FFRoute(
          name: 'MY_homePage',
          path: '/myHome',
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'MY_homePage')
              : const MYHomePageWidget(),
        ),
        FFRoute(
          name: 'homePage_alt',
          path: '/homePageAlt',
          builder: (context, params) => const HomePageAltWidget(),
        ),
        FFRoute(
          name: 'homePage_alt_1',
          path: '/homePageAlt1',
          builder: (context, params) => const HomePageAlt1Widget(),
        ),
        FFRoute(
          name: 'budget_DELETE',
          path: '/budgetDELETE',
          builder: (context, params) => BudgetDELETEWidget(
            budgetList: params.getParam(
                'budgetList', ParamType.DocumentReference, false, ['budgets']),
          ),
        ),
        FFRoute(
          name: 'profilepage',
          path: '/profilepage',
          builder: (context, params) => const ProfilepageWidget(),
        ),
        FFRoute(
          name: 'supportPage',
          path: '/support',
          requireAuth: true,
          builder: (context, params) => const SupportPageWidget(),
        ),
        FFRoute(
          name: 'searchBranches',
          path: '/searchBranches',
          builder: (context, params) => const SearchBranchesWidget(),
        ),
        FFRoute(
          name: 'aboutPage',
          path: '/about',
          builder: (context, params) => const AboutPageWidget(),
        ),
        FFRoute(
          name: 'bankBranchesPage',
          path: '/branches',
          builder: (context, params) => const BankBranchesPageWidget(),
        ),
        FFRoute(
          name: 'bankAtmsPage',
          path: '/atms',
          builder: (context, params) => const BankAtmsPageWidget(),
        ),
        FFRoute(
          name: 'bankDepositsPage',
          path: '/deposits',
          builder: (context, params) => const BankDepositsPageWidget(),
        ),
        FFRoute(
          name: 'bankLoansPage',
          path: '/loans',
          builder: (context, params) => const BankLoansPageWidget(),
        ),
        FFRoute(
          name: 'productApplicationPage',
          path: '/productApplication',
          requireAuth: true,
          builder: (context, params) => ProductApplicationPageWidget(
            customerId: params.getParam('customerId', ParamType.String),
            customerNumber: params.getParam('customerNumber', ParamType.String),
            productType:
                params.getParam<ProductType>('productType', ParamType.Enum),
          ),
        ),
        FFRoute(
          name: 'testProfile',
          path: '/testProfile',
          builder: (context, params) => const TestProfileWidget(),
        ),
        FFRoute(
          name: 'MY_depositAccountsPage',
          path: '/myDepositAccounts',
          requireAuth: true,
          builder: (context, params) => const MYDepositAccountsPageWidget(),
        ),
        FFRoute(
          name: 'MY_accountDetails',
          path: '/mYAccountDetails',
          builder: (context, params) => MYAccountDetailsWidget(
            accountId: params.getParam('accountId', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'MY_loanAccountsPage',
          path: '/myLoanAccounts',
          requireAuth: true,
          builder: (context, params) => const MYLoanAccountsPageWidget(),
        )
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
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

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

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
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
      (state.extraMap.length == 1 &&
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
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
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
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
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
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? isWeb
                  ? Container()
                  : Container(
                      color: FlutterFlowTheme.of(context).primary,
                      child: Center(
                        child: Image.asset(
                          'assets/images/banking-system_(1).png',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
              : page;

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
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
