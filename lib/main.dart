import 'package:expense_tracker/features/transactions/presentation/screens/category_screen/category_screen.dart';
import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: AppTheme.lightTheme,
      home: CategoryScreen(), //EmptyStateScreen()
    ),
  );
}
