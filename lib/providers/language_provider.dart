import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LanguageProvider with ChangeNotifier, DiagnosticableTreeMixin {
  String _currentLang = 'ar';

  changeLang(String lang) {
    _currentLang = lang;
    notifyListeners();
  }

  String get language => _currentLang;
}
