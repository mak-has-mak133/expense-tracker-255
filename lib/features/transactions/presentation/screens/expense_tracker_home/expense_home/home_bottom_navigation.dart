import 'package:flutter/material.dart';

class HomeBottomNavigation extends StatefulWidget {
  const HomeBottomNavigation({super.key});

  @override
  State<HomeBottomNavigation> createState() => _HomeBottomNavigationState();
}

class _HomeBottomNavigationState extends State<HomeBottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _onItemTapped,
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      unselectedItemColor: Theme.of(context).colorScheme.secondary,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      currentIndex: _selectedIndex,
      selectedLabelStyle: Theme.of(
        context,
      ).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 14),
      unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home, size: 24), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.history, size: 24), label: 'History'),
        BottomNavigationBarItem(icon: Icon(Icons.add, size: 24), label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.category, size: 24), label: 'Category'),
      ],
    );
  }
}
