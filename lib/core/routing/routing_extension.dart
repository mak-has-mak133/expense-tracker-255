import 'package:expense_tracker/core/routing/app_routing.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

extension AppNavigation on AppRoutes {
  void goToThisScreen(BuildContext? context) {
    final navigation = context ?? navigatorKey.currentContext;
    if (navigation == null || !navigation.mounted) return;
    navigation.pushNamed(routeName);
  }
}
