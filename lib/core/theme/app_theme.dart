import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_style.dart';
import 'expense_theme_extension.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      surface: AppColors.surface,
      secondary: AppColors.secondary,
      secondaryContainer: AppColors.secondaryContainer,
      onPrimary: AppColors.onPrimary,
      surfaceContainer: AppColors.surfaceContainer,
      outline: AppColors.outline,
      surfaceContainerHighest: AppColors.surfaceContainerHighest,
      onSurfaceVariant: AppColors.onSurfaceVariant,
      error: AppColors.error,
    ),
    textTheme: TextTheme(
      headlineLarge: AppTextStyle.headlineLarge,
      headlineMedium: AppTextStyle.headlineMedium,
      titleMedium: AppTextStyle.titleMedium,
      bodyMedium: AppTextStyle.bodyMedium,
      bodySmall: AppTextStyle.bodySmall,
    ),

    extensions: [
      ExpenseThemeExtension(
        budgetImpactOutline: AppColors.budgetImpactOutline,
        onFoodSurface: AppColors.onFoodSurface,
        foodSurface: AppColors.foodSurface,
        onIncomeSurface: AppColors.onIncomeSurface,
        incomeSurface: AppColors.incomeSurface,
        transportSurface: AppColors.transportSurface,
        onTransportSurface: AppColors.onTransportSurface,
      ),
    ],
  );
}
