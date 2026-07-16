import 'package:expense_tracker/features/transactions/presentation/screens/history_screen/app_bar_section.dart';
import 'package:expense_tracker/features/transactions/provider/tab_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'body_section.dart';
import 'bottom_navigation_section.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBarSection(),
      body: ChangeNotifierProvider(
        create: (BuildContext context) => TabProvider(),
        child: BodySection(),
      ),
      bottomNavigationBar: BottomNavigationSection(),
    );
  }
}
