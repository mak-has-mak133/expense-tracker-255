import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/constants/image_paths.dart';
import 'package:expense_tracker/core/routing/app_routing.dart';
import 'package:expense_tracker/core/routing/routing_extension.dart';
import 'package:expense_tracker/core/widgets/app_bar_section.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/expense_tracker_home/expense_home/card_section.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/expense_tracker_home/expense_home/recent_transaction_section.dart';
import 'package:flutter/material.dart';

import 'budget_overview_section.dart';

class ExpenseHome extends StatelessWidget {
  const ExpenseHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBarSection(
        title: 'ExpenseTracker',
        leading: CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(ImagePaths.historyAvatarImage),
        ),
        actions: [Image.asset(IconsConstants.notificationIcon)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 30),
              const CardSection(),
              const SizedBox(height: 16),
              const BudgetOverviewSection(),
              const SizedBox(height: 30),
              const RecentTransactionSection(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppRoutes.newTransactionScreen.goToThisScreen(context);
        },
        shape: const CircleBorder(),
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Image.asset(
          IconsConstants.addIcon,
          width: 18.9,
          height: 18.9,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
