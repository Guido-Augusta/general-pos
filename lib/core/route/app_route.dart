import 'dart:async';

import 'package:general_pos/core/route/app_route_redirect.dart';
import 'package:general_pos/core/route/app_route_name.dart';
import 'package:general_pos/module/auth/presentation/pages/login/login_page.dart';
import 'package:general_pos/module/dashboard/dashboard_page.dart';
import 'package:general_pos/module/home/presentation/pages/home/home_page.dart';
import 'package:general_pos/module/setting/presentation/pages/setting/setting_page.dart';
import 'package:general_pos/module/splash/presentation/pages/splash/splash_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:general_pos/module/store/presentation/pages/store/store_page.dart';
import 'package:general_pos/module/transaction/presentation/pages/orders/orders_page.dart';
import 'package:general_pos/module/transaction/presentation/pages/transaction/transaction_page.dart';
import 'package:general_pos/module/users/presentation/pages/users/users_page.dart';
import 'package:go_router/go_router.dart';

final Completer<void> rootNavigatorCompleter = Completer<void>();
final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final bottomNavigatorKey = GlobalKey<StatefulNavigationShellState>(
  debugLabel: 'bottom',
);

class AppRoute {
  AppRoute._();

  static final GoRouter router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    navigatorKey: rootNavigatorKey,
    initialLocation: "/",
    routes: [
      // default path is to /home
      GoRoute(path: "/", redirect: (context, state) => "/splash"),
      GoRoute(
        path: "/splash",
        name: AppRouteName.splash,
        builder: (context, state) {
          return SplashPage();
        },
      ),
      GoRoute(
        path: "/auth",
        name: AppRouteName.login,
        redirect: AppRouteRedirect.needNoAuth,
        builder: (context, state) {
          return LoginPage();
        },
      ),
      StatefulShellRoute.indexedStack(
        key: bottomNavigatorKey,
        builder: (context, state, child) {
          return DashboardPage(state: state, child: child);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/home",
                name: AppRouteName.home,
                builder: (context, state) {
                  return HomePage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/orders",
                name: AppRouteName.orders,
                builder: (context, state) {
                  return OrdersPage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/transaction",
                name: AppRouteName.transaction,
                builder: (context, state) {
                  return TransactionPage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/store",
                name: AppRouteName.store,
                redirect: AppRouteRedirect.needAuth,
                builder: (context, state) {
                  return StorePage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/users",
                name: AppRouteName.users,
                redirect: AppRouteRedirect.needAuth,
                builder: (context, state) {
                  return UsersPage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/setting",
                name: AppRouteName.setting,
                redirect: AppRouteRedirect.needAuth,
                builder: (context, state) {
                  return SettingPage();
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
