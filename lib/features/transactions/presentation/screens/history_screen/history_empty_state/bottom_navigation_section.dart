import 'package:expense_tracker/core/constants/icons_paths.dart';
import 'package:flutter/material.dart';

class BottomNavigationSection extends StatefulWidget {
  const BottomNavigationSection({super.key});

  @override
  State<BottomNavigationSection> createState() => _BottomNavigationSectionState();
}

class _BottomNavigationSectionState extends State<BottomNavigationSection> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      backgroundColor: Theme.of(context).colorScheme.surface,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      unselectedItemColor: Theme.of(context).colorScheme.secondary,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(IconsConstants.homeIcon),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(IconsConstants.historyIcon),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(IconsConstants.addTransactionIcon),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(IconsConstants.categoryIcon),
          label: 'Category',
        ),
      ],
    );
  }
}
