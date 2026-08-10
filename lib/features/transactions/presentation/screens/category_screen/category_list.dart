import 'package:expense_tracker/core/models/app_category.dart';
import 'package:expense_tracker/core/theme/expense_theme_extension.dart';
import 'package:expense_tracker/features/transactions/provider/transaction_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'category_list_card.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = context.watch<TransactionProvider>().expenseCategories;
    return SizedBox(
      child: ListView.separated(
        itemBuilder: (context, index) {
          final category = categories[index];
          final themeExt = Theme.of(context).extension<ExpenseThemeExtension>()!;

          final iconBackgroundColor = category.getIconBackground(themeExt);
          final iconColor = category.getIconColor(themeExt);
          final iconPath = category.iconPath;

          final bool isUnderBudget =
              category.mockAmountSpent < category.defaultBudget;

          final statusColor = isUnderBudget
              ? (category == AppCategory.shopping ||
                      category == AppCategory.utilities
                  ? Theme.of(context).colorScheme.primary
                  : iconColor)
              : themeExt.amountDecrease;

          final progressBarColor = isUnderBudget ? iconColor : statusColor;

          return CategoryListCard(
            iconPath: iconPath,
            iconBackground: iconBackgroundColor,
            categoryTitle: category.name,
            numberOfTransactions: '${category.mockNumTransactions} Transactions',
            amountSpent: category.mockAmountSpent,
            budget: category.defaultBudget,
            statusColor: statusColor,
            progressBarColor: progressBarColor,
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: categories.length,
      ),
    );
  }
}
