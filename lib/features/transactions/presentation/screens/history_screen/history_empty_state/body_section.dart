import 'package:expense_tracker/features/transactions/presentation/screens/history_screen/components/history_tab.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/history_screen/widgets/empty_state_widget.dart';
import 'package:expense_tracker/features/transactions/provider/tab_switching_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BodySection extends StatefulWidget {
  const BodySection({super.key});

  @override
  State<BodySection> createState() => _BodySectionState();
}

class _BodySectionState extends State<BodySection> {
  @override
  Widget build(BuildContext context) {
    String selectedTab = context.watch<TabSwitchingProvider>().selectedHistoryTab;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 26),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HistoryTab(tabName: 'All'),
              HistoryTab(tabName: 'Income'),
              HistoryTab(tabName: 'Expenses'),
            ],
          ),
        ),
        Expanded(
          child: AnimatedSwitcher(
            duration: Duration(seconds: 2),
            child: _buildContentSection(selectedTab),
          ),
        ),
      ],
    );
  }

  Widget _buildContentSection(String selectedTab) {
    switch (selectedTab) {
      case 'All':
        return EmptyStateWidget(uniqueKey: UniqueKey());
      case 'Income':
        return Text('ycdhsbyghbs');
      case 'Expense':
        return EmptyStateWidget(uniqueKey: UniqueKey());
      default:
        return EmptyStateWidget(uniqueKey: UniqueKey());
    }
  }
}
