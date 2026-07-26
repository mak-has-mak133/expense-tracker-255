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
  static Color foodSurface = Color(0xFFFFEDD5).withValues(alpha: 0.5);
  static const Color onIncomeSurface = Color(0xFF16A34A);
  static const Color incomeSurface = Color(0xFFF0FDF4);
  static Color transportSurface = Color(0xFFDBEAFE).withValues(alpha: 0.5);
  static const Color onTransportSurface = Color(0xFF4B5563);
  static Color rentSurface = Color(0xFFF3E8FF).withValues(alpha: 0.5);
  static const Color amountDecrease = Color(0xFFBA1A1A);
  static const Color amountIncrease = Color(0xFF16A34A);
  static const Color foodPrimary = Color(0xFFF97316);
  static const Color transportPrimary = Color(0xFF3B82F6);
  static const Color rentPrimary = Color(0xFFA855F7);
}
