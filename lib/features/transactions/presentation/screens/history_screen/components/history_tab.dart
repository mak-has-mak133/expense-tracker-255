import 'package:expense_tracker/features/transactions/presentation/screens/history_screen/widgets/nav_tab.dart';
import 'package:expense_tracker/features/transactions/provider/tab_switching_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HistoryTab extends StatelessWidget {
  final String tabName;

  const HistoryTab({super.key, required this.tabName});

  @override
  Widget build(BuildContext context) {
    return Consumer<TabSwitchingProvider>(
      builder: (BuildContext context, TabSwitchingProvider value, Widget? child) {
        return GestureDetector(
          onTap: () {
            value.setHistoryTabIndex(tabName);
          },
          child: SizedBox(
            child: NavTab(
              tabBackground: tabName == value.selectedHistoryTab
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.secondaryContainer,
              tabName: tabName,
              tabForeground: tabName == value.selectedHistoryTab
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.secondary,
            ),
          ),
        );
      },
    );
  }
}
