import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/theme/expense_theme_extension.dart';
import 'package:flutter/material.dart';

import 'category_card.dart';

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

class NewCategorySection extends StatelessWidget {
  const NewCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
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
          itemCount: Categories.values.length,
          itemBuilder: (BuildContext context, int index) {
            final themeExt = Theme.of(context).extension<ExpenseThemeExtension>()!;
            final category = Categories.values[index];
            final (iconBackgroundColor, iconColor, icon) = switch (category) {
              Categories.food => (
                themeExt.foodSurface,
                themeExt.foodPrimary,
                Icons.food_bank_outlined,
              ),
              Categories.transport => (
                themeExt.transportSurface,
                themeExt.transportPrimary,
                Icons.emoji_transportation,
              ),
              Categories.rent => (
                themeExt.rentSurface,
                themeExt.rentPrimary,
                Icons.home_work_outlined,
              ),
            };
            return CategoryCard(
              iconBackgroundColor: iconBackgroundColor,
              iconColor: iconColor,
              icon: icon,
              categoryName: category.name,
            );
          },
        ),
      ],
    );
  }
}
