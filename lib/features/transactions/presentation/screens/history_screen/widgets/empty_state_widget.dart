import 'package:expense_tracker/core/constants/image_paths.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/history_screen/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class EmptyStateWidget extends StatelessWidget {
  final Key uniqueKey;

  const EmptyStateWidget({super.key, required this.uniqueKey});

  @override
  Widget build(BuildContext context) {
    return Center(
      key: uniqueKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              shape: BoxShape.circle,
            ),
            child: Image.asset(ImagePaths.noTransactionImage, width: 40, height: 50),
          ),
          SizedBox(height: 36),
          Text(
            'No Transactions',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Start tracking your spending by \n adding your first transaction.',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          SizedBox(height: 50),
          PrimaryButton(
            height: 48,
            width: MediaQuery.of(context).size.width * 0.55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add, color: Theme.of(context).colorScheme.onPrimary),
                SizedBox(width: 8),
                Text(
                  'Add '
                  'Transaction',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
