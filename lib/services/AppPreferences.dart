import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  late SharedPreferences prefs;

  AppPreferences() {
    SharedPreferences.getInstance().then((value) => prefs = value);
  }

  String getChoosedLang() {
    return prefs.getString('choosedLanguage') ?? 'ar';
  }

  void setChoosedLang(String lang) {
    prefs.setString('choosedLanguage', lang);
  }
}
