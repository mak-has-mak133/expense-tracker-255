import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:flutter/material.dart';

import 'budget_overview_card.dart';

enum Categories {
  food(name: 'Food', iconPath: IconsConstants.foodIcon, categoryAmount: '\$420');

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
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Categories.values.length,
            itemBuilder: (context, index) {
              return BudgetOverviewCard(
                categoryIconPath: Categories.food.iconPath,
                categoryName: Categories.food.name,
                categoryAmount: '\$420',
              );
            },
          ),
        ),
      ],
    );
  }
}
