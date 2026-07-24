import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/theme/expense_theme_extension.dart';
import 'package:expense_tracker/core/widgets/list_card.dart';
import 'package:flutter/material.dart';

enum Categories {
  food(
    categoryName: 'Food',
    iconPath: IconsConstants.foodIcon,
    categoryAmount:
        '-'
        '\$420',
    item: 'Grocery Mart',
  ),
  transport(
    categoryName: 'Transport',
    iconPath: IconsConstants.transportIcon,
    categoryAmount: '\$720',
    item: 'Uber Ride',
  ),
  rent(
    categoryName: 'Rent',
    iconPath: IconsConstants.rentIcon,
    categoryAmount:
        '-\$1,'
        '200',
    item: 'July Rent',
  );

  final String categoryName;
  final String iconPath;
  final String categoryAmount;
  final String item;

  const Categories({
    required this.categoryName,
    required this.iconPath,
    required this.categoryAmount,
    required this.item,
  });
}

class RecentTransactionSection extends StatelessWidget {
  const RecentTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
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
          itemCount: Categories.values.length,
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, index) => SizedBox(height: 16),
          itemBuilder: (context, index) {
            final category = Categories.values[index];
            final themeExt = Theme.of(context).extension<ExpenseThemeExtension>()!;
            Color iconBackground = switch (category) {
              Categories.food => themeExt.foodSurface,
              Categories.transport => themeExt.transportSurface,
              Categories.rent => themeExt.rentSurface,
            };
            return ListCard(
              iconBackground: iconBackground,
              iconPath: category.iconPath,
              expenseTitle: category.categoryName,
              categoryName: category.item,
              date: '31-july-2023',
              transactionAmount: category.categoryAmount,
            );
          },
        ),
      ],
    );
  }
}
