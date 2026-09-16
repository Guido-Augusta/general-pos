import 'package:flutter/widgets.dart';
import 'package:general_pos/core/utils/app_utils.dart';
import 'package:general_pos/module/auth/domain/usecase/get_login_session_usecase.dart';
import 'package:go_router/go_router.dart';

class AppRouteRedirect {
  AppRouteRedirect._();

  /// will redirect to home if already logged in
  static Future<String?> needNoAuth(
    BuildContext context,
    GoRouterState state,
  ) async {
    final user = await di<GetLoginSessionUsecase>().call();

    if (user != null) {
      return "/home";
    }

    return null;
  }

  /// will redirect to auth/login if not logged in
  static Future<String?> needAuth(
    BuildContext context,
    GoRouterState state,
  ) async {
    final user = await di<GetLoginSessionUsecase>().call();

    if (user == null) {
      return "/auth";
    }

    return null;
  }
}
