import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/constants/image_paths.dart';
import 'package:expense_tracker/core/widgets/app_bar_section.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/history_screen/history_empty_state/bottom_navigation_section.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/history_screen/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class EmptyStateScreen extends StatelessWidget {
  const EmptyStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBarSection(
        title: 'ExpenseTracker',
        leading: Image.asset(ImagePaths.historyAvatarImage),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(IconsConstants.notificationIcon),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            Image.asset(ImagePaths.expenseEmptyStateImage, width: 200, height: 200),
            SizedBox(height: 18),
            Text(
              'No Transactions Yet',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            Text(
              'Your financial journey starts here. Add your\n'
              'first expense or income to see it in your\n'
              'history',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            PrimaryButton(
              height: 56,
              width: 230,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.add, color: Theme.of(context).colorScheme.onPrimary),
                  SizedBox(width: 8),
                  Text(
                    'Add Transaction',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationSection(),
    );
  }
}
