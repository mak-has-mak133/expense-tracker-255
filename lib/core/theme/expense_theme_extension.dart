import 'package:flutter/material.dart';

class ExpenseThemeExtension extends ThemeExtension<ExpenseThemeExtension> {
  final Color budgetImpactOutline;
  final Color onFoodSurface;
  final Color foodSurface;
  final Color onIncomeSurface;
  final Color incomeSurface;
  final Color transportSurface;
  final Color onTransportSurface;

  const ExpenseThemeExtension({
    required this.budgetImpactOutline,
    required this.onFoodSurface,
    required this.foodSurface,
    required this.onIncomeSurface,
    required this.incomeSurface,
    required this.transportSurface,
    required this.onTransportSurface,
  });

  @override
  ExpenseThemeExtension copyWith({
    Color? budgetImpactOutline,
    Color? onFoodSurface,
    Color? foodSurface,
    Color? onIncomeSurface,
    Color? incomeSurface,
    Color? transportSurface,
    Color? onTransportSurface,
  }) {
    return ExpenseThemeExtension(
      budgetImpactOutline: budgetImpactOutline ?? this.budgetImpactOutline,
      onFoodSurface: onFoodSurface ?? this.onFoodSurface,
      foodSurface: foodSurface ?? this.foodSurface,
      onIncomeSurface: onIncomeSurface ?? this.onIncomeSurface,
      incomeSurface: incomeSurface ?? this.incomeSurface,
      transportSurface: transportSurface ?? this.transportSurface,
      onTransportSurface: onTransportSurface ?? this.onTransportSurface,
    );
  }

  @override
  ThemeExtension<ExpenseThemeExtension> lerp(
    covariant ExpenseThemeExtension? other,
    double t,
  ) {
    if (other == null) return this;
    return ExpenseThemeExtension(
      budgetImpactOutline: Color.lerp(budgetImpactOutline, other.budgetImpactOutline, t)!,
      onFoodSurface: Color.lerp(onFoodSurface, other.onFoodSurface, t)!,
      foodSurface: Color.lerp(foodSurface, other.foodSurface, t)!,
      onIncomeSurface: Color.lerp(onIncomeSurface, other.onIncomeSurface, t)!,
      incomeSurface: Color.lerp(incomeSurface, other.incomeSurface, t)!,
      transportSurface: Color.lerp(transportSurface, other.transportSurface, t)!,
      onTransportSurface: Color.lerp(onTransportSurface, other.onTransportSurface, t)!,
    );
  }
}
