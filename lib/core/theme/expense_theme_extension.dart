import 'package:flutter/material.dart';

class ExpenseThemeExtension extends ThemeExtension<ExpenseThemeExtension> {
  final Color budgetImpactOutline;
  final Color onFoodSurface;
  final Color foodSurface;
  final Color onIncomeSurface;
  final Color incomeSurface;
  final Color transportSurface;
  final Color onTransportSurface;
  final Color rentSurface;
  final Color amountDecrease;
  final Color amountIncrease;
  final Color transportPrimary;
  final Color foodPrimary;
  final Color rentPrimary;

  const ExpenseThemeExtension({
    required this.budgetImpactOutline,
    required this.onFoodSurface,
    required this.foodSurface,
    required this.onIncomeSurface,
    required this.incomeSurface,
    required this.transportSurface,
    required this.onTransportSurface,
    required this.rentSurface,
    required this.amountDecrease,
    required this.amountIncrease,
    required this.transportPrimary,
    required this.foodPrimary,
    required this.rentPrimary,
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
    Color? rentSurface,
    Color? amountDecrease,
    Color? amountIncrease,
    Color? transportPrimary,
    Color? foodPrimary,
    Color? rentPrimary,
  }) {
    return ExpenseThemeExtension(
      budgetImpactOutline: budgetImpactOutline ?? this.budgetImpactOutline,
      onFoodSurface: onFoodSurface ?? this.onFoodSurface,
      foodSurface: foodSurface ?? this.foodSurface,
      onIncomeSurface: onIncomeSurface ?? this.onIncomeSurface,
      incomeSurface: incomeSurface ?? this.incomeSurface,
      transportSurface: transportSurface ?? this.transportSurface,
      onTransportSurface: onTransportSurface ?? this.onTransportSurface,
      rentSurface: rentSurface ?? this.rentSurface,
      amountDecrease: amountDecrease ?? this.amountDecrease,
      amountIncrease: amountIncrease ?? this.amountIncrease,
      transportPrimary: transportPrimary ?? this.transportPrimary,
      foodPrimary: foodPrimary ?? this.foodPrimary,
      rentPrimary: rentPrimary ?? this.rentPrimary,
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
      rentSurface: Color.lerp(rentSurface, other.rentSurface, t)!,
      amountDecrease: Color.lerp(amountDecrease, other.amountDecrease, t)!,
      amountIncrease: Color.lerp(amountIncrease, other.amountIncrease, t)!,
      transportPrimary: Color.lerp(transportPrimary, other.transportPrimary, t)!,
      foodPrimary: Color.lerp(foodPrimary, other.foodPrimary, t)!,
      rentPrimary: Color.lerp(rentPrimary, other.rentPrimary, t)!,
    );
  }
}
