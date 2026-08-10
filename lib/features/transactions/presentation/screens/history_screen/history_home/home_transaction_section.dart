import 'package:expense_tracker/core/theme/expense_theme_extension.dart';
import 'package:expense_tracker/core/widgets/list_card.dart';
import 'package:expense_tracker/features/transactions/provider/transaction_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeTransactionSection extends StatelessWidget {
  const HomeTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = context.watch<TransactionProvider>().categories;
    return ListView.separated(
      padding: const EdgeInsets.only(bottom: 20),
      itemBuilder: (BuildContext context, int index) {
        final themeExt = Theme.of(context).extension<ExpenseThemeExtension>()!;
        final category = categories[index];

        final iconBackground = category.getIconBackground(themeExt);
        final iconPath = category.iconPath;
        final expenseTitle = category.name;
        final categoryName = category.mockItemName;
        // Mocking some dates based on index to keep it looking dynamic
        final date = '${27 + index} July 2023';
        final amountPrefix = category.isIncome ? '+' : '-';
        final amountValue =
            category.isIncome ? 500 : (category.mockAmountSpent / 10);
        final transactionAmount = '$amountPrefix\$${amountValue.toStringAsFixed(2)}';

        return ListCard(
          iconBackground: iconBackground,
          iconPath: iconPath,
          expenseTitle: expenseTitle,
          categoryName: categoryName,
          date: date,
          transactionAmount: transactionAmount,
        );
      },
      separatorBuilder: (BuildContext context, int index) => SizedBox(height: 10),
      itemCount: categories.length,
    );
  }
}
