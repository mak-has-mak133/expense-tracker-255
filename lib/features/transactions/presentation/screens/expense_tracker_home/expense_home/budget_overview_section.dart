import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/theme/expense_theme_extension.dart';
import 'package:flutter/material.dart';

import 'budget_overview_card.dart';

enum Categories {
  food(name: 'Food', iconPath: IconsConstants.foodIcon, categoryAmount: '\$420'),
  transport(
    name: 'Transport',
    iconPath: IconsConstants.transportIcon,
    categoryAmount: '\$720',
  ),
  rent(name: 'Rent', iconPath: IconsConstants.rentIcon, categoryAmount: '\$1,200');

  final String name;
  final String iconPath;
  final String categoryAmount;

  const Categories({
    required this.name,
    required this.iconPath,
    required this.categoryAmount,
  });
}

class BudgetOverviewSection extends StatelessWidget {
  const BudgetOverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
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
            itemCount: Categories.values.length,
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemBuilder: (context, index) {
              final category = Categories.values[index];
              final themeExt = Theme.of(context).extension<ExpenseThemeExtension>()!;
              
              final (backgroundColor, progressColor, progress) = switch (category) {
                Categories.food => (themeExt.foodSurface, const Color(0xFFF97316), 0.4),
                Categories.transport => (themeExt.transportSurface, const Color(0xFF3B82F6), 0.7),
                Categories.rent => (themeExt.rentSurface, const Color(0xFFA855F7), 0.9),
              };

              return BudgetOverviewCard(
                categoryIconPath: category.iconPath,
                categoryName: category.name,
                categoryAmount: category.categoryAmount,
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
