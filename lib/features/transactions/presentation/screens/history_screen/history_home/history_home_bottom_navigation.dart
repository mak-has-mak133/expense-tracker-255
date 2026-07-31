import 'package:flutter/material.dart';

class HistoryHomeBottomNavigation extends StatefulWidget {
  const HistoryHomeBottomNavigation({super.key});

  @override
  State<HistoryHomeBottomNavigation> createState() => _HistoryHomeBottomNavigationState();
}

class _HistoryHomeBottomNavigationState extends State<HistoryHomeBottomNavigation> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      unselectedItemColor: Theme.of(context).colorScheme.secondary,
      showUnselectedLabels: true,
      iconSize: 24,
      selectedLabelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
        color: Theme.of(context).colorScheme.primary,
        fontWeight: FontWeight.w600,
        fontSize: 12,
      ),
      unselectedLabelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
        color: Theme.of(context).colorScheme.secondary,
        fontWeight: FontWeight.w400,
        fontSize: 10,
      ),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Category'),
        BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Notification'),
      ],
    );
  }
}
