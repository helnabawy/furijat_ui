import 'package:flutter/material.dart';

class TabsProvider with ChangeNotifier {
  int _tabIndex = 0;

  changeTabIndex(int index) {
    _tabIndex = index;
    notifyListeners();
  }

  int get tabIndex => _tabIndex;
}
