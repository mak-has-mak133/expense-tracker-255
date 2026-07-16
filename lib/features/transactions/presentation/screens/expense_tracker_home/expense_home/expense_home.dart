import 'package:expense_tracker/features/transactions/presentation/screens/expense_tracker_home/empty_state_screen/home_app_bar_section.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/expense_tracker_home/expense_home/card_section.dart';
import 'package:flutter/material.dart';

class ExpenseHome extends StatelessWidget {
  const ExpenseHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: HomeAppBarSection(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CardSection(),
            ),
          ],
        ),
      ),
    );
  }
}
