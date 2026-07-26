import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Color iconBackgroundColor;
  final Color iconColor;
  final IconData icon;
  final String categoryName;

  const CategoryCard({
    super.key,
    required this.iconBackgroundColor,
    required this.iconColor,
    required this.icon,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Theme.of(context).colorScheme.outline),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,

          children: [
            Container(
              decoration: BoxDecoration(
                color: iconBackgroundColor,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(icon, color: iconColor, size: 24),
              ),
            ),
            SizedBox(height: 8),
            Text(
              categoryName,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
