import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/routing/app_routing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarSection extends StatelessWidget implements PreferredSizeWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: context.canPop()
          ? IconButton(
              onPressed: () => AppRoutes.goToPreviousScreen(context),
              icon: Image.asset(
                IconsConstants.arrowBackIcon,
                width: 16,
                height: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
            )
          : null,

      title: Text(
        'New Transaction',
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
