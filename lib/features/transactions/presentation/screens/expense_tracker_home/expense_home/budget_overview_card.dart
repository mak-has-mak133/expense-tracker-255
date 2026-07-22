import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BudgetOverviewCard extends StatelessWidget {
  final String categoryIconPath;
  final String categoryName;
  final String categoryAmount;

  const BudgetOverviewCard({
    super.key,
    required this.categoryIconPath,
    required this.categoryName,
    required this.categoryAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.3),
            blurRadius: 12,
            offset: Offset(1, 2),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(categoryIconPath, width: 40, height: 40),
            Text(
              categoryName,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            Text(
              categoryAmount,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontSize: 18,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
