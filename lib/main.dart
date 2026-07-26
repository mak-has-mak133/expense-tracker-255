import 'package:expense_tracker/features/transactions/presentation/screens/new_transaction/new_transaction.dart';
import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: AppTheme.lightTheme,
      home: NewTransaction(), //EmptyStateScreen()
    ),
  );
}
