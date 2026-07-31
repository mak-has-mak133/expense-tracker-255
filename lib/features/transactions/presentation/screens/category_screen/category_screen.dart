import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/constants/image_paths.dart';
import 'package:expense_tracker/core/widgets/app_bar_section.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/category_screen/category_body.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/history_screen/history_home/history_home_bottom_navigation.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBarSection(
        title: 'Categories',
        leading: Image.asset(ImagePaths.historyAvatarImage),
        actions: [Image.asset(IconsConstants.notificationIcon)],
      ),
      body: CategoryBody(),
      bottomNavigationBar: HistoryHomeBottomNavigation(),
    );
  }
}
