import 'package:expense_tracker/core/theme/expense_theme_extension.dart';
import 'package:expense_tracker/core/widgets/list_card.dart';
import 'package:expense_tracker/features/transactions/provider/transaction_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecentTransactionSection extends StatelessWidget {
  const RecentTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = context.watch<TransactionProvider>().expenseCategories;
    // Show only a few recent ones, e.g., first 3
    final recentCategories = categories.take(3).toList();

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recent Transactions',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 18,
              ),
            ),
            Text(
              'Sorted by Date',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 11,
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: recentCategories.length,
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, index) => SizedBox(height: 16),
          itemBuilder: (context, index) {
            final category = recentCategories[index];
            final themeExt = Theme.of(context).extension<ExpenseThemeExtension>()!;
            Color iconBackground = category.getIconBackground(themeExt);

            return ListCard(
              iconBackground: iconBackground,
              iconPath: category.iconPath,
              expenseTitle: category.name,
              categoryName: category.mockItemName,
              date: '31-july-2023',
              transactionAmount: '-\$${category.mockAmountSpent}',
            );
          },
        ),
      ],
    );
  }
}
