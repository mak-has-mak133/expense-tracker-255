import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;

  const AppBarSection({super.key, required this.title, this.leading, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading != null ? UnconstrainedBox(child: leading) : null,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      centerTitle: false,
      titleSpacing: 0,
      actions: actions != null ? [...actions!, SizedBox(width: 10)] : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
