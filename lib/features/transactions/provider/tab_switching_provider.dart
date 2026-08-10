import 'package:flutter/material.dart';

class TabSwitchingProvider extends ChangeNotifier {
  int _selectedBottomNavIndex = 0;
  String _selectedHistoryTab = 'All';

  int get selectedBottomNavIndex => _selectedBottomNavIndex;

  String get selectedHistoryTab => _selectedHistoryTab;

  void setBottomNavIndex(int index) {
    _selectedBottomNavIndex = index;
    notifyListeners();
  }

  void setHistoryTabIndex(String tab) {
    _selectedHistoryTab = tab;
    notifyListeners();
  }
}
