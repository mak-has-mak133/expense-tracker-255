import 'package:expense_tracker/core/theme/expense_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListCard extends StatelessWidget {
  final Color iconBackground;
  final String iconPath;
  final String expenseTitle;
  final String categoryName;
  final String date;
  final String transactionAmount;

  const ListCard({
    super.key,
    required this.iconBackground,
    required this.iconPath,
    required this.expenseTitle,
    required this.categoryName,
    required this.date,
    required this.transactionAmount,
  });

  @override
  Widget build(BuildContext context) {
    final themeExt = Theme.of(context).extension<ExpenseThemeExtension>()!;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: iconBackground,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: iconPath.endsWith('.svg')
                    ? SvgPicture.asset(iconPath, width: 20, height: 20)
                    : Image.asset(iconPath, width: 20, height: 20),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    expenseTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: categoryName,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      children: [
                        TextSpan(
                          text: ' • ',
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        TextSpan(
                          text: date,
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Text(
              transactionAmount,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: transactionAmount.startsWith('-')
                    ? themeExt.amountDecrease
                    : themeExt.amountIncrease,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
