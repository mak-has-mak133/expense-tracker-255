import 'package:expense_tracker/features/transactions/presentation/screens/history_screen/history_home/home_transaction_section.dart';
import 'package:flutter/material.dart';

import 'hst_hm_search_section.dart';
import 'hst_home_tab.dart';

class HistoryBodySection extends StatefulWidget {
  const HistoryBodySection({super.key});

  @override
  State<HistoryBodySection> createState() => _HistoryBodySectionState();
}

class _HistoryBodySectionState extends State<HistoryBodySection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 26),
          HstHomeTab(),
          SizedBox(height: 26),
          HstHmSearchSection(),
          SizedBox(height: 26),
          Expanded(child: HomeTransactionSection()),
        ],
      ),
    );
  }
}
