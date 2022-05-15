import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier, DiagnosticableTreeMixin {
  ThemeMode _currentTheme = ThemeMode.system;

  changeTheme(ThemeMode mode) {
    _currentTheme = mode;
    notifyListeners();
  }

  ThemeMode get theme => _currentTheme;
}
