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
  final Color shoppingSurface;
  final Color utilitiesSurface;
  final Color categoryProgressBar;
  final Color shoppingPrimary;
  final Color utilitiesPrimary;

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
    required this.shoppingSurface,
    required this.utilitiesSurface,
    required this.categoryProgressBar,
    required this.shoppingPrimary,
    required this.utilitiesPrimary,
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
    Color? shoppingSurface,
    Color? utilitiesSurface,
    Color? categoryProgressBar,
    Color? utilitiesPrimary,
    Color? shoppingPrimary,
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
      shoppingSurface: shoppingSurface ?? this.shoppingSurface,
      utilitiesSurface: utilitiesSurface ?? this.utilitiesSurface,
      categoryProgressBar: categoryProgressBar ?? this.categoryProgressBar,
      shoppingPrimary: shoppingPrimary ?? this.shoppingPrimary,
      utilitiesPrimary: utilitiesPrimary ?? this.utilitiesPrimary,
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
      shoppingSurface: Color.lerp(shoppingSurface, other.shoppingSurface, t)!,
      utilitiesSurface: Color.lerp(utilitiesSurface, other.utilitiesSurface, t)!,
      categoryProgressBar: Color.lerp(categoryProgressBar, other.categoryProgressBar, t)!,
      shoppingPrimary: Color.lerp(shoppingPrimary, other.shoppingPrimary, t)!,
      utilitiesPrimary: Color.lerp(utilitiesPrimary, other.utilitiesPrimary, t)!,
    );
  }
}
