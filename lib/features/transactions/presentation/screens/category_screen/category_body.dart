import 'package:expense_tracker/features/transactions/presentation/screens/category_screen/category_card.dart';
import 'package:expense_tracker/features/transactions/presentation/screens/category_screen/category_list.dart';
import 'package:flutter/material.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CategoryCard(),
          SizedBox(height: 20),
          Expanded(child: CategoryList()),
        ],
      ),
    );
  }
}
