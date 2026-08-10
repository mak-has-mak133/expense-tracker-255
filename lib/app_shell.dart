import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/widgets/home_bottom_navigation.dart';
import 'features/transactions/presentation/screens/category_screen/category_screen.dart';
import 'features/transactions/presentation/screens/expense_tracker_home/expense_home/expense_home.dart';
import 'features/transactions/presentation/screens/history_screen/history_home/history_home.dart';
import 'features/transactions/presentation/screens/new_transaction/new_transaction.dart';
import 'features/transactions/provider/tab_switching_provider.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  final _screens = [
    const ExpenseHome(),
    const HistoryHome(),
    const NewTransaction(),
    const CategoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabSwitchingProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          body: IndexedStack(index: provider.selectedBottomNavIndex, children: _screens),
          bottomNavigationBar: BottomNavigation(
            selectedIndex: provider.selectedBottomNavIndex,
            onItemTapped: (int index) => provider.setBottomNavIndex(index),
          ),
        );
      },
    );
  }
}
