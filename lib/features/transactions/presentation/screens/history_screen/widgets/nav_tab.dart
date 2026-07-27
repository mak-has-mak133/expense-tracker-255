import 'package:flutter/material.dart';

class NavTab extends StatelessWidget {
  final Color tabBackground;
  final String tabName;
  final Color tabForeground;

  const NavTab({
    super.key,
    required this.tabBackground,
    required this.tabName,
    required this.tabForeground,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 38,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: tabBackground,
      ),
      child: Center(
        child: Text(
          tabName,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: tabForeground,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
