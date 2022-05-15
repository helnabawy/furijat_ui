import 'package:furijat_flutter/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PublicStorage {
  Future<bool?> seeHomeAds() async {
    final pref = await SharedPreferences.getInstance();
    return pref.setBool(HOME_ADS, true);
  }

  Future<bool?> get hasSeenHomeAds async {
    final pref = await SharedPreferences.getInstance();
    return pref.getBool(HOME_ADS);
  }
}
