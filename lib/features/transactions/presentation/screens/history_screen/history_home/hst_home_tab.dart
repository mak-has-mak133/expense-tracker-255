import 'package:expense_tracker/features/transactions/presentation/screens/history_screen/components/history_tab.dart';
import 'package:expense_tracker/features/transactions/provider/tab_switching_provider.dart';
import 'package:flutter/material.dart';

class HstHomeTab extends StatefulWidget {
  const HstHomeTab({super.key});

  @override
  State<HstHomeTab> createState() => _HstHomeTabState();
}

class _HstHomeTabState extends State<HstHomeTab> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: HistoryTab(tabName: HistoryCategoryTabs.all)),
        SizedBox(width: 8),
        Expanded(child: HistoryTab(tabName: HistoryCategoryTabs.income)),
        SizedBox(width: 8),
        Expanded(child: HistoryTab(tabName: HistoryCategoryTabs.expenses)),
      ],
    );
  }
}
