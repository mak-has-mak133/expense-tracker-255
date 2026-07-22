import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/constants/image_paths.dart';
import 'package:expense_tracker/core/widgets/app_bar_section.dart';
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
      body: ChangeNotifierProvider(
        create: (BuildContext context) => TabProvider(),
        child: BodySection(),
      ),
      bottomNavigationBar: BottomNavigationSection(),
    );
  }
}
