import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/constants/image_paths.dart';
import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget implements PreferredSizeWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: UnconstrainedBox(
        child: CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(ImagePaths.historyAvatarImage),
        ),
      ),
      title: Text(
        'History',
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      centerTitle: false,
      titleSpacing: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(IconsConstants.historySearchIcon, width: 18, height: 18),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(IconsConstants.historyFilterIcon, width: 18, height: 18),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
