import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/constants/image_paths.dart';
import 'package:expense_tracker/core/widgets/app_bar_section.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/expense_tracker_home/expense_home/card_section.dart';
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
        leading: Image.asset(ImagePaths.historyAvatarImage),
        actions: [Image.asset(IconsConstants.notificationIcon)],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch, //try remove
            children: [
              SizedBox(height: 30),
              CardSection(),
              SizedBox(height: 16),
              BudgetOverviewSection(),
            ],
          ),
        ),
      ),
    );
  }
}
