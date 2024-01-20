import 'package:wisebiteapp/data/get_store/get_store_helper.dart';
import 'package:wisebiteapp/di/components/service_locator.dart';
import 'package:wisebiteapp/feature/auth/login/login.dart';
import 'package:wisebiteapp/feature/home/home.dart';
import 'package:wisebiteapp/feature/not_found/not_found.dart';
import 'package:wisebiteapp/feature/splash/splash.dart';
import 'package:wisebiteapp/feature/splash/splash_web.dart';
import 'package:wisebiteapp/utils/routers/app_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GetStoreHelper getStoreHelper = getIt<GetStoreHelper>();

@Singleton()
class AppRouter {
  final GoRouter goRoute = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoute.splash.getRoute,
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        path: AppRoute.splash.getRoute,
        name: AppRoute.splash.name,
        builder: (context, state) {
          return !kIsWeb ? const SplashPage() : const SplashWebPage();
        },
      ),
      GoRoute(
        path: AppRoute.home.getRoute,
        name: AppRoute.home.name,
        builder: (context, state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: AppRoute.login.getRoute,
        name: AppRoute.login.name,
        builder: (context, state) {
          return const LoginPage();
        },
      ),
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );

  // get go router
  GoRouter get getGoRouter => goRoute;
}

// ignore: prefer_function_declarations_over_variables
final _authGuard = (BuildContext context, GoRouterState state) {
  if (!(getStoreHelper.getToken() != null)) {
    return AppRoute.login.getRoute;
  }
  return null;
};
