import 'package:expense_tracker/features/transactions/presentation/screens/new_transaction/app_bar_section.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/new_transaction/enter_amount_section.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/new_transaction/new_category_section.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/new_transaction/notes_section.dart';
import 'package:flutter/material.dart';

import 'budget_impact_section.dart';
import 'button_section.dart';
import 'date_section.dart';

class NewTransaction extends StatelessWidget {
  const NewTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBarSection(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              EnterAmountSection(),
              SizedBox(height: 8),
              NewCategorySection(),
              DateSection(),
              SizedBox(height: 8),
              NotesSection(),
              SizedBox(height: 12),
              BudgetImpactSection(),
              SizedBox(height: 12),
              ButtonSection(),
            ],
          ),
        ),
      ),
    );
  }
}
