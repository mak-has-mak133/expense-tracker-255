import 'package:expense_tracker/features/transactions/presentation/screens/history_screen/widgets/nav_tab.dart';
import 'package:expense_tracker/features/transactions/provider/tab_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HistoryTab extends StatelessWidget {
  final String tabName;

  const HistoryTab({super.key, required this.tabName});

  @override
  Widget build(BuildContext context) {
    void Function(String tabName) selectTab = context.read<TabProvider>().selectTab;
    String selectedTab = context.watch<TabProvider>().selectedTab; // is it must to be
    // build?
    return GestureDetector(
      onTap: () {
        selectTab(tabName);
      },
      child: SizedBox(
        child: NavTab(
          tabBackground: selectedTab == tabName
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.secondaryContainer,
          tabName: tabName,
          tabForeground: selectedTab == tabName
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
    ;
  }
}
