import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BudgetOverviewCard extends StatelessWidget {
  final String categoryIconPath;
  final String categoryName;
  final String categoryAmount;
  final Color iconBackgroundColor;
  final double progress;
  final Color progressColor;

  const BudgetOverviewCard({
    super.key,
    required this.categoryIconPath,
    required this.categoryName,
    required this.categoryAmount,
    required this.iconBackgroundColor,
    required this.progress,
    required this.progressColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Slightly wider
      padding: const EdgeInsets.all(12), // More internal padding
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(16), // Softer corners
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: iconBackgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: categoryIconPath.endsWith('.svg')
                  ? SvgPicture.asset(categoryIconPath, width: 15, height: 20)
                  : Image.asset(categoryIconPath, width: 15, height: 20),
            ),
          ),
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
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 8,
                decoration: BoxDecoration(
                  color: iconBackgroundColor,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              FractionallySizedBox(
                widthFactor: progress,
                child: Container(
                  height: 8,
                  decoration: BoxDecoration(
                    color: progressColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
