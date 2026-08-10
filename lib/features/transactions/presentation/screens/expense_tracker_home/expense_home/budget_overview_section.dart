import 'package:expense_tracker/core/theme/expense_theme_extension.dart';
import 'package:expense_tracker/features/transactions/provider/transaction_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'budget_overview_card.dart';

class BudgetOverviewSection extends StatelessWidget {
  const BudgetOverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = context.watch<TransactionProvider>().expenseCategories;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Budget Overviews',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 18,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'See All',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemBuilder: (context, index) {
              final category = categories[index];
              final themeExt = Theme.of(context).extension<ExpenseThemeExtension>()!;

              final backgroundColor = category.getIconBackground(themeExt);
              final progressColor = category.getIconColor(themeExt);
              final progress = (category.mockAmountSpent / category.defaultBudget)
                  .clamp(0.0, 1.0);

              return BudgetOverviewCard(
                categoryIconPath: category.iconPath,
                categoryName: category.name,
                categoryAmount: '\$${category.mockAmountSpent}',
                iconBackgroundColor: backgroundColor,
                progress: progress,
                progressColor: progressColor,
              );
            },
          ),
        ),
      ],
    );
  }
}
