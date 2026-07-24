import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/transactions/presentation/screens/expense_tracker_home/expense_home/expense_home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: AppTheme.lightTheme,
      home: SafeArea(child: ExpenseHome()), //EmptyStateScreen()
    ),
  );
}
