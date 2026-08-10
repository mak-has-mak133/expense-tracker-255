import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  final Color iconBackgroundColor;
  final Color iconColor;
  final String iconPath;
  final String categoryName;

  const CategoryCard({
    super.key,
    required this.iconBackgroundColor,
    required this.iconColor,
    required this.iconPath,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.1),
        ),
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
                padding: const EdgeInsets.all(12.0), // Slightly more padding
                child: iconPath.endsWith('.svg')
                    ? SvgPicture.asset(
                        iconPath,
                        height: 24, // Bigger
                        width: 24,
                        colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
                        placeholderBuilder: (context) => const Icon(Icons.shopping_bag_outlined),
                      )
                    : Image.asset(
                        iconPath,
                        height: 24,
                        width: 24,
                        color: iconColor,
                        errorBuilder: (context, error, stackTrace) =>
                            Icon(Icons.shopping_bag_outlined, color: iconColor, size: 24),
                      ),
              ),
            ),
            const SizedBox(height: 8),
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
