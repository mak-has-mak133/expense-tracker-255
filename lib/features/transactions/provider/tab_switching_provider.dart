import 'package:flutter/material.dart';

enum HistoryCategoryTabs { all, income, expenses }

class TabSwitchingProvider extends ChangeNotifier {
  int _selectedBottomNavIndex = 0;
  HistoryCategoryTabs _selectedHistoryTab = HistoryCategoryTabs.all;

  int get selectedBottomNavIndex => _selectedBottomNavIndex;

  HistoryCategoryTabs get selectedHistoryTab => _selectedHistoryTab;

  void setBottomNavIndex(int index) {
    _selectedBottomNavIndex = index;
    notifyListeners();
  }

  void setHistoryTabIndex(HistoryCategoryTabs tab) {
    _selectedHistoryTab = tab;
    notifyListeners();
  }
}
