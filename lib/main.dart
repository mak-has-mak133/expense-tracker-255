import 'package:expense_tracker/features/transactions/presentation/screens/history_screen/history_home/history_home.dart';
import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: AppTheme.lightTheme,
      home: const HistoryHome(), //EmptyStateScreen()
    ),
  );
}
