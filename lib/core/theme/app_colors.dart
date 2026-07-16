import 'dart:ui';

class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF091426);
  static const Color surface = Color(0xFFFBF8FA);
  static const Color secondary = Color(0xFF505F76);
  static const Color secondaryContainer = Color(0xFFF5F3F4);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color surfaceContainer = Color(0xFFFFFFFF);
  static const Color outline = Color(0xFFC5C6CD);
  static Color surfaceContainerHighest = Color(0xFF091426).withValues(alpha: 0.05);
  static const Color onSurfaceVariant = Color(0xFFD3E4FE);
  static const Color error = Color(0xFFBA1A1A);
  static final Color tertiary = const Color(0xFFFFFFFF).withValues(alpha: 0.2);

  // out of color scheme properties
  static Color budgetImpactOutline = Color(0xFF091426).withValues(alpha: 0.1);
  static const Color onFoodSurface = Color(0xFF2563EB);
  static const Color foodSurface = Color(0xFFEFF6FF);
  static const Color onIncomeSurface = Color(0xFF16A34A);
  static const Color incomeSurface = Color(0xFFF0FDF4);
  static const Color transportSurface = Color(0xFFF3F4F6);
  static const Color onTransportSurface = Color(0xFF4B5563);
}
