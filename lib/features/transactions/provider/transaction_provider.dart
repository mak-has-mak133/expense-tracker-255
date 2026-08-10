import 'package:expense_tracker/core/models/app_category.dart';
import 'package:flutter/material.dart';

class TransactionProvider extends ChangeNotifier {
  final List<AppCategory> _categories = AppCategory.values;

  List<AppCategory> get categories => _categories;

  List<AppCategory> get expenseCategories =>
      _categories.where((c) => !c.isIncome).toList();

  List<AppCategory> get incomeCategories =>
      _categories.where((c) => c.isIncome).toList();
}
