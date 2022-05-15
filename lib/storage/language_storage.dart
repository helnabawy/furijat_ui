import 'package:furijat_flutter/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageStorage {
  Future changeLang(String language) async {
    final pref = await SharedPreferences.getInstance();
    pref.setString(LANGUAGE_KEY, language);
  }

  Future<String?> getLanguage() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString(LANGUAGE_KEY);
  }
}
