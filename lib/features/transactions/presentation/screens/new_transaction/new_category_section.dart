import 'package:expense_tracker/core/models/app_category.dart';
import 'package:expense_tracker/core/theme/expense_theme_extension.dart';
import 'package:expense_tracker/features/transactions/provider/transaction_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'category_card.dart';

class NewCategorySection extends StatelessWidget {
  const NewCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = context.watch<TransactionProvider>().expenseCategories;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Category',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 8),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1,
            crossAxisSpacing: 25,
            mainAxisSpacing: 20,
          ),
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            final themeExt = Theme.of(context).extension<ExpenseThemeExtension>()!;
            final category = categories[index];

            final iconBackgroundColor = category.getIconBackground(themeExt);
            final iconColor = category.getIconColor(themeExt);

            return CategoryCard(
              iconBackgroundColor: iconBackgroundColor,
              iconColor: iconColor,
              iconPath: category.iconPath,
              categoryName: category.name,
            );
          },
        ),
      ],
    );
  }
}
