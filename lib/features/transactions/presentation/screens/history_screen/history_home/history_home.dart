import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/constants/image_paths.dart';
import 'package:expense_tracker/core/widgets/app_bar_section.dart';
import 'package:flutter/material.dart';

import 'history_body_section.dart';

class HistoryHome extends StatelessWidget {
  const HistoryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBarSection(
        title: 'History',
        leading: CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(ImagePaths.historyAvatarImage),
        ),
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
    );
  }
}
