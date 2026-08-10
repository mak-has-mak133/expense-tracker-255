import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/theme/expense_theme_extension.dart';
import 'package:flutter/material.dart';

enum AppCategory {
  food(
    name: 'Food',
    iconPath: IconsConstants.foodIcon,
    isIncome: false,
    defaultBudget: 600,
    mockAmountSpent: 650,
    mockNumTransactions: 24,
    mockItemName: 'Grocery Mart',
  ),
  transport(
    name: 'Transport',
    iconPath: IconsConstants.transportIcon,
    isIncome: false,
    defaultBudget: 450,
    mockAmountSpent: 320,
    mockNumTransactions: 12,
    mockItemName: 'Uber Ride',
  ),
  shopping(
    name: 'Shopping',
    iconPath: IconsConstants.shoppingIcon,
    isIncome: false,
    defaultBudget: 500,
    mockAmountSpent: 410,
    mockNumTransactions: 8,
    mockItemName: 'Amazon',
  ),
  utilities(
    name: 'Utilities',
    iconPath: IconsConstants.utilitiesIcon,
    isIncome: false,
    defaultBudget: 300,
    mockAmountSpent: 250,
    mockNumTransactions: 4,
    mockItemName: 'Electricity Bill',
  ),
  rent(
    name: 'Rent',
    iconPath: IconsConstants.rentIcon,
    isIncome: false,
    defaultBudget: 1500,
    mockAmountSpent: 1200,
    mockNumTransactions: 1,
    mockItemName: 'July Rent',
  ),
  salary(
    name: 'Salary',
    iconPath: IconsConstants.salaryIcon,
    isIncome: true,
    defaultBudget: 0,
    mockAmountSpent: 0,
    mockNumTransactions: 1,
    mockItemName: 'Salary',
  );

  final String name;
  final String iconPath;
  final bool isIncome;
  final int defaultBudget;
  final int mockAmountSpent;
  final int mockNumTransactions;
  final String mockItemName;

  const AppCategory({
    required this.name,
    required this.iconPath,
    required this.isIncome,
    required this.defaultBudget,
    required this.mockAmountSpent,
    required this.mockNumTransactions,
    required this.mockItemName,
  });

  Color getIconBackground(ExpenseThemeExtension themeExt) {
    return switch (this) {
      AppCategory.food => themeExt.foodSurface,
      AppCategory.transport => themeExt.transportSurface,
      AppCategory.shopping => themeExt.shoppingSurface,
      AppCategory.utilities => themeExt.utilitiesSurface,
      AppCategory.rent => themeExt.rentSurface,
      AppCategory.salary => themeExt.incomeSurface,
    };
  }

  Color getIconColor(ExpenseThemeExtension themeExt) {
    return switch (this) {
      AppCategory.food => themeExt.foodPrimary,
      AppCategory.transport => themeExt.transportPrimary,
      AppCategory.shopping => themeExt.shoppingPrimary,
      AppCategory.utilities => themeExt.utilitiesPrimary,
      AppCategory.rent => themeExt.rentPrimary,
      AppCategory.salary => themeExt.amountIncrease,
    };
  }
}
