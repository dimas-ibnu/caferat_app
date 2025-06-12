import 'package:caferat_app/src/common/routes/app_routes.dart';
import 'package:caferat_app/src/presentation/page/auth/signin_page.dart';
import 'package:caferat_app/src/presentation/page/auth/signup_page.dart';
import 'package:caferat_app/src/presentation/page/dashboard/dashboard_page.dart';
import 'package:caferat_app/src/presentation/page/error/error_page.dart';
import 'package:caferat_app/src/presentation/page/splash/splash_page.dart';
import 'package:caferat_app/src/untilities/logger.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter routerInit = GoRouter(
  navigatorKey: AppRoutes.navigatorKey,
  initialLocation: AppRoutes.SPLASH_ROUTE_PATH,
  routes: <RouteBase>[
    ///  =================================================================
    ///  ********************** Splash Route *****************************
    /// ==================================================================
    GoRoute(
      name: AppRoutes.SPLASH_ROUTE_NAME,
      path: AppRoutes.SPLASH_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashPage();
      },
    ),

    ///  =================================================================
    /// ********************** Authentication Routes ********************
    /// ==================================================================
    GoRoute(
      name: AppRoutes.LOGIN_ROUTE_NAME,
      path: AppRoutes.LOGIN_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const SignInPage();
      },
    ),
    GoRoute(
      name: AppRoutes.SIGNUP_ROUTE_NAME,
      path: AppRoutes.SIGNUP_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterPage();
      },
    ),

    ///  =================================================================
    /// ********************** DashBoard Route ******************************
    /// ==================================================================
    GoRoute(
      name: AppRoutes.DASHBOARD_ROUTE_NAME,
      path: AppRoutes.DASHBOARD_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const DashboardPage();
      },
    ),
  ],
  errorPageBuilder: (context, state) {
    return const MaterialPage(child: ErrorPage());
  },
  redirect: (context, state) {
    logger.info('redirect: ${state.uri}');

    return null;
  },
);
