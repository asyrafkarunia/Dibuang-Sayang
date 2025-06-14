import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

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
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : OnboardingWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : OnboardingWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: RegisterWidget.routeName,
          path: RegisterWidget.routePath,
          builder: (context, params) => RegisterWidget(),
        ),
        FFRoute(
          name: ChatPenjualWidget.routeName,
          path: ChatPenjualWidget.routePath,
          builder: (context, params) => ChatPenjualWidget(),
        ),
        FFRoute(
          name: OnboardingWidget.routeName,
          path: OnboardingWidget.routePath,
          builder: (context, params) => OnboardingWidget(
            gambar: params.getParam(
              'gambar',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: ForgotpasswordWidget.routeName,
          path: ForgotpasswordWidget.routePath,
          builder: (context, params) => ForgotpasswordWidget(),
        ),
        FFRoute(
          name: BookFoodWidget.routeName,
          path: BookFoodWidget.routePath,
          builder: (context, params) => BookFoodWidget(),
        ),
        FFRoute(
          name: MapsWidget.routeName,
          path: MapsWidget.routePath,
          builder: (context, params) => MapsWidget(
            addressinput: params.getParam(
              'addressinput',
              ParamType.String,
            ),
            getcurrent: params.getParam(
              'getcurrent',
              ParamType.LatLng,
            ),
          ),
        ),
        FFRoute(
          name: AddProductWidget.routeName,
          path: AddProductWidget.routePath,
          builder: (context, params) => AddProductWidget(),
        ),
        FFRoute(
          name: ProfileWidget.routeName,
          path: ProfileWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'profile')
              : ProfileWidget(),
        ),
        FFRoute(
          name: UbahAkunWidget.routeName,
          path: UbahAkunWidget.routePath,
          builder: (context, params) => UbahAkunWidget(),
        ),
        FFRoute(
          name: UbahPasswordWidget.routeName,
          path: UbahPasswordWidget.routePath,
          builder: (context, params) => UbahPasswordWidget(),
        ),
        FFRoute(
            name: DiscoverPageWidget.routeName,
            path: DiscoverPageWidget.routePath,
            builder: (context, params) => params.isEmpty
                ? NavBarPage(initialPage: 'DiscoverPage')
                : NavBarPage(
                    initialPage: 'DiscoverPage',
                    page: DiscoverPageWidget(),
                  )),
        FFRoute(
          name: DashboardBusinessWidget.routeName,
          path: DashboardBusinessWidget.routePath,
          builder: (context, params) => DashboardBusinessWidget(),
        ),
        FFRoute(
          name: ReviewBusinessWidget.routeName,
          path: ReviewBusinessWidget.routePath,
          builder: (context, params) => ReviewBusinessWidget(),
        ),
        FFRoute(
          name: ProductaddedbWidget.routeName,
          path: ProductaddedbWidget.routePath,
          builder: (context, params) => ProductaddedbWidget(),
        ),
        FFRoute(
          name: GamificationProfileWidget.routeName,
          path: GamificationProfileWidget.routePath,
          builder: (context, params) => GamificationProfileWidget(),
        ),
        FFRoute(
          name: RegisterBusinessWidget.routeName,
          path: RegisterBusinessWidget.routePath,
          builder: (context, params) => RegisterBusinessWidget(
            receiveMapsBis: params.getParam(
              'receiveMapsBis',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['stores'],
            ),
            pinpointLatLng: params.getParam(
              'pinpointLatLng',
              ParamType.LatLng,
            ),
            pintpointName: params.getParam(
              'pintpointName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: HalamanPenjualanWidget.routeName,
          path: HalamanPenjualanWidget.routePath,
          builder: (context, params) => HalamanPenjualanWidget(),
        ),
        FFRoute(
            name: YourFavoritesWidget.routeName,
            path: YourFavoritesWidget.routePath,
            builder: (context, params) => NavBarPage(
                  initialPage: '',
                  page: YourFavoritesWidget(),
                )),
        FFRoute(
          name: BusinessProfileWidget.routeName,
          path: BusinessProfileWidget.routePath,
          builder: (context, params) => BusinessProfileWidget(),
        ),
        FFRoute(
          name: ReservePagesWidget.routeName,
          path: ReservePagesWidget.routePath,
          builder: (context, params) => ReservePagesWidget(
            receiveFood: params.getParam(
              'receiveFood',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['food'],
            ),
            receiveStore: params.getParam(
              'receiveStore',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['stores'],
            ),
          ),
        ),
        FFRoute(
          name: CustomerTransactionWidget.routeName,
          path: CustomerTransactionWidget.routePath,
          builder: (context, params) => CustomerTransactionWidget(),
        ),
        FFRoute(
          name: DonationPageWidget.routeName,
          path: DonationPageWidget.routePath,
          builder: (context, params) => DonationPageWidget(),
        ),
        FFRoute(
          name: PaymentWidget.routeName,
          path: PaymentWidget.routePath,
          builder: (context, params) => PaymentWidget(),
        ),
        FFRoute(
          name: BarcodeCustomerWidget.routeName,
          path: BarcodeCustomerWidget.routePath,
          builder: (context, params) => BarcodeCustomerWidget(),
        ),
        FFRoute(
          name: TransactionWidget.routeName,
          path: TransactionWidget.routePath,
          builder: (context, params) => TransactionWidget(),
        ),
        FFRoute(
          name: Transaction2Widget.routeName,
          path: Transaction2Widget.routePath,
          builder: (context, params) => Transaction2Widget(),
        ),
        FFRoute(
          name: MessagesWidget.routeName,
          path: MessagesWidget.routePath,
          builder: (context, params) => MessagesWidget(),
        ),
        FFRoute(
          name: NumberActionWidget.routeName,
          path: NumberActionWidget.routePath,
          builder: (context, params) => NumberActionWidget(),
        ),
        FFRoute(
          name: ListViewTestingWidget.routeName,
          path: ListViewTestingWidget.routePath,
          builder: (context, params) => ListViewTestingWidget(),
        ),
        FFRoute(
          name: PassingParameterWidget.routeName,
          path: PassingParameterWidget.routePath,
          builder: (context, params) => PassingParameterWidget(),
        ),
        FFRoute(
          name: PassingParameterStoresInfoWidget.routeName,
          path: PassingParameterStoresInfoWidget.routePath,
          builder: (context, params) => PassingParameterStoresInfoWidget(
            receiveStores: params.getParam(
              'receiveStores',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['stores'],
            ),
          ),
        ),
        FFRoute(
          name: AppStateVariableWidget.routeName,
          path: AppStateVariableWidget.routePath,
          builder: (context, params) => AppStateVariableWidget(),
        ),
        FFRoute(
          name: GiveRatingWidget.routeName,
          path: GiveRatingWidget.routePath,
          builder: (context, params) => GiveRatingWidget(),
        ),
        FFRoute(
          name: Sample1Widget.routeName,
          path: Sample1Widget.routePath,
          builder: (context, params) => Sample1Widget(),
        ),
        FFRoute(
          name: Sample2Widget.routeName,
          path: Sample2Widget.routePath,
          builder: (context, params) => Sample2Widget(),
        ),
        FFRoute(
          name: CommunityHubWidget.routeName,
          path: CommunityHubWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'CommunityHub')
              : CommunityHubWidget(),
        ),
        FFRoute(
          name: ProductDatabaseWidget.routeName,
          path: ProductDatabaseWidget.routePath,
          builder: (context, params) => ProductDatabaseWidget(),
        ),
        FFRoute(
            name: HomeFixWidget.routeName,
            path: HomeFixWidget.routePath,
            builder: (context, params) => params.isEmpty
                ? NavBarPage(initialPage: 'homeFix')
                : NavBarPage(
                    initialPage: 'homeFix',
                    page: HomeFixWidget(
                      receivemaps: params.getParam(
                        'receivemaps',
                        ParamType.DocumentReference,
                        isList: false,
                        collectionNamePath: ['users'],
                      ),
                    ),
                  )),
        FFRoute(
          name: PaymentMethodTestWidget.routeName,
          path: PaymentMethodTestWidget.routePath,
          builder: (context, params) => PaymentMethodTestWidget(),
        ),
        FFRoute(
          name: MapsCopyWidget.routeName,
          path: MapsCopyWidget.routePath,
          builder: (context, params) => MapsCopyWidget(
            addressinput: params.getParam(
              'addressinput',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MapDemo1Widget.routeName,
          path: MapDemo1Widget.routePath,
          builder: (context, params) => MapDemo1Widget(
            googlemap: params.getParam(
              'googlemap',
              ParamType.LatLng,
            ),
          ),
        ),
        FFRoute(
          name: MapDemo2Widget.routeName,
          path: MapDemo2Widget.routePath,
          builder: (context, params) => MapDemo2Widget(),
        ),
        FFRoute(
          name: StoreMapsWidget.routeName,
          path: StoreMapsWidget.routePath,
          builder: (context, params) => StoreMapsWidget(
            addressinput: params.getParam(
              'addressinput',
              ParamType.String,
            ),
            currentLocation: params.getParam(
              'currentLocation',
              ParamType.LatLng,
            ),
            foodreference: params.getParam(
              'foodreference',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['food'],
            ),
          ),
        ),
        FFRoute(
          name: RegisterBusinessPageWidget.routeName,
          path: RegisterBusinessPageWidget.routePath,
          builder: (context, params) => RegisterBusinessPageWidget(),
        ),
        FFRoute(
          name: ProductDatabaseOriginalWidget.routeName,
          path: ProductDatabaseOriginalWidget.routePath,
          builder: (context, params) => ProductDatabaseOriginalWidget(),
        ),
        FFRoute(
          name: RefillProductWidget.routeName,
          path: RefillProductWidget.routePath,
          builder: (context, params) => RefillProductWidget(
            receiveFoodFromDB: params.getParam(
              'receiveFoodFromDB',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['food'],
            ),
          ),
        ),
        FFRoute(
          name: ReservePagesCopyWidget.routeName,
          path: ReservePagesCopyWidget.routePath,
          builder: (context, params) => ReservePagesCopyWidget(
            receiveFood: params.getParam(
              'receiveFood',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['food'],
            ),
            receiveStore: params.getParam(
              'receiveStore',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['stores'],
            ),
          ),
        ),
        FFRoute(
          name: ReservePage2Widget.routeName,
          path: ReservePage2Widget.routePath,
          builder: (context, params) => ReservePage2Widget(),
        ),
        FFRoute(
          name: ReservePageDemoWidget.routeName,
          path: ReservePageDemoWidget.routePath,
          builder: (context, params) => ReservePageDemoWidget(),
        ),
        FFRoute(
          name: StorePageWidget.routeName,
          path: StorePageWidget.routePath,
          builder: (context, params) => StorePageWidget(
            receiveFood: params.getParam(
              'receiveFood',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['food'],
            ),
            receiveStores: params.getParam(
              'receiveStores',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['stores'],
            ),
          ),
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
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/onboarding';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
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
