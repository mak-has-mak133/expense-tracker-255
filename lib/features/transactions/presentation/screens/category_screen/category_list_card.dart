import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryListCard extends StatelessWidget {
  final String iconPath;
  final Color iconBackground;
  final String categoryTitle;
  final String numberOfTransactions;
  final int amountSpent;
  final int budget;
  final Color statusColor;
  final Color progressBarColor;

  const CategoryListCard({
    super.key,
    required this.iconPath,
    required this.iconBackground,
    required this.categoryTitle,
    required this.numberOfTransactions,
    required this.amountSpent,
    required this.budget,
    required this.statusColor,
    required this.progressBarColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: iconBackground,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: iconPath.endsWith('.svg')
                          ? SvgPicture.asset(
                              iconPath,
                              height: 20,
                              width: 20,
                              colorFilter: ColorFilter.mode(
                                Theme.of(context).colorScheme.primary,
                                BlendMode.srcIn,
                              ),
                            )
                          : Image.asset(iconPath, height: 20, width: 20),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categoryTitle,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      numberOfTransactions,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$$amountSpent',
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: statusColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                (budget > amountSpent)
                    ? Text(
                        'Remaining: \$${budget - amountSpent}',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      )
                    : Text(
                        'Over Budget',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                const Spacer(),
                Text(
                  '${(amountSpent / budget * 100).toStringAsFixed(0)}%',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Stack(
              children: [
                Container(
                  height: 8,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.surfaceContainer.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: (amountSpent / budget).clamp(0.0, 1.0),
                  child: Container(
                    height: 8,
                    decoration: BoxDecoration(
                      color: progressBarColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
