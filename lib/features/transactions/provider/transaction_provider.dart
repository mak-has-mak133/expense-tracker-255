import 'package:expense_tracker/core/models/app_category.dart';
import 'package:expense_tracker/features/transactions/provider/tab_switching_provider.dart';
import 'package:flutter/material.dart';

//remove categoryFilter functions
class TransactionProvider extends ChangeNotifier {
  final List<AppCategory> _categories = AppCategory.values;
  String _searchQuery = '';

  List<AppCategory> get categories => _categories;

  late final List<AppCategory> expenseCategories = _categories
      .where((c) => !c.isIncome)
      .toList();

  late final List<AppCategory> incomeCategories = _categories
      .where((c) => c.isIncome)
      .toList();

  void updateSearchQuery(String query) {
    _searchQuery = query.trim().toLowerCase();
    notifyListeners();
  }

  List<AppCategory> getSelectedCategories(HistoryCategoryTabs tab) {
    final basaCategory = switch (tab) {
      HistoryCategoryTabs.all => categories,
      HistoryCategoryTabs.expenses => expenseCategories,
      HistoryCategoryTabs.income => incomeCategories,
    };
    if (_searchQuery.trim().isEmpty) return basaCategory;
    return categories
        .where((c) => c.name.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();
  }
}
