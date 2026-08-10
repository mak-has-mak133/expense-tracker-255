import 'package:expense_tracker/features/transactions/provider/tab_switching_provider.dart';
import 'package:expense_tracker/features/transactions/provider/transaction_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/routing/app_routing.dart';
import 'core/theme/app_theme.dart';

class ExpenseTrackerApp extends StatelessWidget {
  const ExpenseTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TabSwitchingProvider()),
        ChangeNotifierProvider(create: (_) => TransactionProvider()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Expense Tracker',
        theme: AppTheme.lightTheme,
        routerConfig: appRouter,
      ),
    );
  }
}
