import 'package:flutter/material.dart';

class TabProvider extends ChangeNotifier {
  String _selectedTab = 'All';

  String get selectedTab => _selectedTab;

  void selectTab(String tabName) {
    if (_selectedTab != tabName) _selectedTab = tabName;
    notifyListeners();
  }
}
