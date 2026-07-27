import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/constants/image_paths.dart';
import 'package:expense_tracker/core/widgets/app_bar_section.dart';
import 'package:expense_tracker/features/transactions/provider/tab_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'history_body_section.dart';

class HistoryHome extends StatelessWidget {
  const HistoryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TabProvider(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBarSection(
          title: 'History',
          leading: Image.asset(ImagePaths.historyAvatarImage),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(IconsConstants.historySearchIcon),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(IconsConstants.historyFilterIcon),
            ),
          ],
        ),
        body: const HistoryBodySection(),
      ),
    );
  }
}
