import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/constants/image_paths.dart';
import 'package:flutter/material.dart';

class HomeAppBarSection extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset(ImagePaths.historyAvatarImage, width: 32, height: 32),
      title: Text(
        'ExpenseTracker',
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      centerTitle: false,
      titleSpacing: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(IconsConstants.notificationIcon, width: 18, height: 18),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
