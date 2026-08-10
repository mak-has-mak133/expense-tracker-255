import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/constants/image_paths.dart';
import 'package:expense_tracker/core/widgets/app_bar_section.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/category_screen/category_body.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBarSection(
        title: 'Categories',
        leading: CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(ImagePaths.historyAvatarImage),
        ),
        actions: [Image.asset(IconsConstants.notificationIcon)],
      ),
      body: CategoryBody(),
    );
  }
}
