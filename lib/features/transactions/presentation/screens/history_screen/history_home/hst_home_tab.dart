import 'package:expense_tracker/features/transactions/presentation/screens/history_screen/components/history_tab.dart';
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
        Expanded(child: HistoryTab(tabName: 'All')),
        SizedBox(width: 8),
        Expanded(child: HistoryTab(tabName: 'Income')),
        SizedBox(width: 8),
        Expanded(child: HistoryTab(tabName: 'Expenses')),
      ],
    );
  }
}
