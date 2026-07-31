import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:expense_tracker/core/theme/expense_theme_extension.dart';
import 'package:expense_tracker/core/widgets/list_card.dart';
import 'package:flutter/material.dart';

enum Transactions {
  food(
    title: 'Food',
    itemName: 'Grocery Mart',
    day: 'Tuesday',
    amount: '-\$42.00',
    date: '28 July 2023',
  ),
  salary(
    title: 'Salary',
    itemName: 'Salary',
    day: 'Wednesday',
    amount: '+\$500.00',
    date: '29 July 2023',
  ),
  shopping(
    title: 'Shopping',
    itemName: 'Amazon',
    day: 'Thursday',
    amount: '-\$100.00',
    date: '30 July 2023',
  ),
  utilities(
    title: 'Utilities',
    itemName: 'Electricity Bill',
    day: 'Friday',
    amount: '-\$80.00',
    date: '31 July 2023',
  ),
  transport(
    title: 'Transport',
    itemName: 'Uber Ride',
    day: 'Monday',
    amount: '-\$15.50',
    date: '27 July 2023',
  );

  final String title;
  final String itemName;
  final String day;
  final String amount;
  final String date;

  const Transactions({
    required this.title,
    required this.itemName,
    required this.day,
    required this.amount,
    required this.date,
  });
}

class HomeTransactionSection extends StatelessWidget {
  const HomeTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final themeExt = Theme.of(context).extension<ExpenseThemeExtension>()!;
        final transaction = Transactions.values[index];
        final (
          iconBackground,
          iconPath,
          expenseTitle,
          categoryName,
          date,
          transactionAmount,
        ) = switch (transaction) {
          Transactions.food => (
            themeExt.foodSurface,
            IconsConstants.foodIcon,
            transaction.title,
            transaction.itemName,
            transaction.date,
            transaction.amount,
          ),

          Transactions.salary => (
            themeExt.incomeSurface,
            IconsConstants.salaryIcon,
            transaction.title,
            transaction.itemName,
            transaction.date,
            transaction.amount,
          ),
          Transactions.shopping => (
            themeExt.shoppingSurface,
            IconsConstants.shoppingIcon,
            transaction.title,
            transaction.itemName,
            transaction.date,
            transaction.amount,
          ),
          Transactions.transport => (
            themeExt.transportSurface,
            IconsConstants.transportIcon,
            transaction.title,
            transaction.itemName,
            transaction.date,
            transaction.amount,
          ),
          Transactions.utilities => (
            themeExt.utilitiesSurface,
            IconsConstants.utilitiesIcon,
            transaction.title,
            transaction.itemName,
            transaction.date,
            transaction.amount,
          ),
        };
        return ListCard(
          iconBackground: iconBackground,
          iconPath: iconPath,
          expenseTitle: expenseTitle,
          categoryName: categoryName,
          date: date,
          transactionAmount: transactionAmount,
        );
      },
      separatorBuilder: (BuildContext context, int index) => SizedBox(height: 10),
      itemCount: Transactions.values.length,
    );
  }
}
