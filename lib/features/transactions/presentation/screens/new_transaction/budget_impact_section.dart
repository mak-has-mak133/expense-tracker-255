import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/theme/expense_theme_extension.dart';
import 'package:flutter/material.dart';

class BudgetImpactSection extends StatelessWidget {
  const BudgetImpactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final themeExt = Theme.of(context).extension<ExpenseThemeExtension>()!;
    return Container(
      decoration: BoxDecoration(
        color: themeExt.budgetImpactOutline,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: themeExt.budgetImpactOutline.withValues(alpha: 0.1)),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(IconsConstants.cautionIcon, width: 17, height: 17),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Budget Impact',
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'This purchase will use 12% of your \n'
                      'monthly Food & Dining budget.',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
