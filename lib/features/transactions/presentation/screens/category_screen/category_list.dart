import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/theme/expense_theme_extension.dart';
import 'package:flutter/material.dart';

import 'category_list_card.dart';

enum CategoryTransactions {
  food(
    title: 'Food & Dining',
    numOfTransactions: '24 Transactions',
    amountSpent: 650,
    budget: 600,
    iconPath: IconsConstants.foodIcon,
  ),
  transport(
    title: 'Transport',
    numOfTransactions: '12 Transactions',
    amountSpent: 320,
    budget: 450,
    iconPath: IconsConstants.transportIcon,
  ),
  shopping(
    title: 'Shopping',
    numOfTransactions: '8 Transactions',
    amountSpent: 410,
    budget: 500,
    iconPath: IconsConstants.shoppingIcon,
  ),
  utilities(
    title: 'Utilities',
    numOfTransactions: '4 Transactions',
    amountSpent: 250,
    budget: 300,
    iconPath: IconsConstants.utilitiesIcon,
  );

  final String title;
  final String numOfTransactions;
  final String iconPath;
  final int amountSpent;
  final int budget;

  const CategoryTransactions({
    required this.title,
    required this.numOfTransactions,
    required this.amountSpent,
    required this.budget,
    required this.iconPath,
  });
}

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        itemBuilder: (context, index) {
          final category = CategoryTransactions.values[index];
          final themeExt = Theme.of(context).extension<ExpenseThemeExtension>()!;
          final (
            iconBackgroundColor,
            iconColor,
            iconPath,
            statusColor,
            progressBarColor,
          ) = switch (category) {
            CategoryTransactions.food => (
              themeExt.foodSurface,
              themeExt.foodPrimary,
              IconsConstants.foodIcon,
              (category.amountSpent < category.budget)
                  ? themeExt.foodPrimary
                  : themeExt.amountDecrease,
              themeExt.foodPrimary,
            ),
            CategoryTransactions.transport => (
              themeExt.transportSurface.withValues(),
              themeExt.transportPrimary,
              IconsConstants.transportIcon,
              (category.amountSpent < category.budget
                  ? themeExt.transportPrimary
                  : themeExt.amountDecrease),
              themeExt.transportPrimary,
            ),

            CategoryTransactions.shopping => (
              themeExt.shoppingSurface,
              themeExt.shoppingPrimary,
              IconsConstants.shoppingIcon,
              (category.amountSpent < category.budget)
                  ? Theme.of(context).colorScheme.primary
                  : themeExt.amountDecrease,
              themeExt.shoppingPrimary,
            ),

            CategoryTransactions.utilities => (
              themeExt.utilitiesSurface,
              themeExt.utilitiesPrimary,
              IconsConstants.utilitiesIcon,
              (category.amountSpent < category.budget)
                  ? Theme.of(context).colorScheme.primary
                  : themeExt.amountDecrease,
              themeExt.utilitiesPrimary,
            ),
          };
          return CategoryListCard(
            iconPath: iconPath,
            iconBackground: iconBackgroundColor,
            categoryTitle: category.title,
            numberOfTransactions: category.numOfTransactions,
            amountSpent: category.amountSpent,
            budget: category.budget,
            statusColor: statusColor,
            progressBarColor: (category.amountSpent < category.budget)
                ? progressBarColor
                : statusColor,
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: CategoryTransactions.values.length,
      ),
    );
  }
}
