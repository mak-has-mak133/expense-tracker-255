import 'package:expense_tracker/app_shell.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/expense_tracker_home/expense_home/expense_home.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/history_screen/history_home/history_home.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/new_transaction/new_transaction.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final navigationGlobalKey = GlobalKey<NavigatorState>();
final historyNavigationKey = GlobalKey<NavigatorState>();

enum NavigationStackType { coreStack, historyStack }

enum AppRoutes {
  appShell(
    path: '/appShell',
    routeName: 'app shell',
    stackType: NavigationStackType.coreStack,
  ),
  homeScreen(
    path: '/homeScreen',
    routeName: 'Home Screen',
    stackType: NavigationStackType.coreStack,
  ),
  newTransactionScreen(
    path: '/newTransactionScreen',
    routeName: 'New Transaction Screen',
    stackType: NavigationStackType.coreStack,
  ),
  historyScreen(
    path: '/historyScreen',
    routeName: 'History Screen',
    stackType: NavigationStackType.historyStack,
  );

  final String path;
  final String routeName;
  final NavigationStackType stackType;

  const AppRoutes({required this.path, required this.routeName, required this.stackType});

  static Map<NavigationStackType, GlobalKey<NavigatorState>> _keyRegistry = {
    NavigationStackType.coreStack: navigationGlobalKey,
    NavigationStackType.historyStack: historyNavigationKey,
  };

  GlobalKey<NavigatorState> get navigatorKey => _keyRegistry[stackType]!;

  static void goToPreviousScreen(BuildContext? context) {
    final navigation = context ?? navigationGlobalKey.currentContext;
    if (navigation == null || !navigation.mounted) return;
    navigation.pop();
  }
}

final appRouter = GoRouter(
  navigatorKey: navigationGlobalKey,
  initialLocation: AppRoutes.appShell.path,
  routes: [
    GoRoute(path: AppRoutes.appShell.path, builder: (context, state) => AppShell()),
    GoRoute(
      path: AppRoutes.homeScreen.path,
      name: AppRoutes.homeScreen.routeName,
      builder: (context, state) => const ExpenseHome(),
    ),
    GoRoute(
      path: AppRoutes.newTransactionScreen.path,
      name: AppRoutes.newTransactionScreen.routeName,
      builder: (context, state) => const NewTransaction(),
    ),
    GoRoute(
      path: AppRoutes.historyScreen.path,
      name: AppRoutes.historyScreen.routeName,
      builder: (context, state) => const HistoryHome(),
    ),
  ],
);
