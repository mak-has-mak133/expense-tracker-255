import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/constants/image_paths.dart';
import 'package:expense_tracker/core/widgets/app_bar_section.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/expense_tracker_home/expense_home/card_section.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/expense_tracker_home/expense_home/recent_transaction_section.dart';
import 'package:flutter/material.dart';

import 'budget_overview_section.dart';
import 'home_bottom_navigation.dart';

class ExpenseHome extends StatelessWidget {
  const ExpenseHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBarSection(
        title: 'ExpenseTracker',
        leading: Image.asset(ImagePaths.historyAvatarImage),
        actions: [Image.asset(IconsConstants.notificationIcon)],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 30),
                CardSection(),
                SizedBox(height: 16),
                BudgetOverviewSection(),
                SizedBox(height: 30),
                RecentTransactionSection(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Image.asset(
          IconsConstants.addIcon,
          width: 18.9,
          height: 18.9,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      bottomNavigationBar: HomeBottomNavigation(),
    );
  }
}
