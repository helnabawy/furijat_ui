import 'dart:convert';
import 'dart:io';

import 'package:furijat_flutter/app/app_config.dart';
import 'package:furijat_flutter/models/apis/auth_response.dart';
import 'package:furijat_flutter/utils/constants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserStorage {
  String appPath = '';

  Future<String?> setToken(String token) async {
    // print('my Token: $token');
    final pref = await SharedPreferences.getInstance();
    // print('start setting value');
    await pref.setString(TOKEN_KEY, token);
    return pref.getString(TOKEN_KEY);
  }

  Future<String?> getToken() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString(TOKEN_KEY);
  }

  Future setUserCredentials(String email, String password) async {
    final pref = await SharedPreferences.getInstance();

    pref.setString(USER_CREDENTIALS_KEY, '$email,$password');
  }

  Future<String?> get userCredentials async {
    final pref = await SharedPreferences.getInstance();

    return pref.getString(USER_CREDENTIALS_KEY)!;
  }

  Future<bool?> setUserData(String userData) async {
    final pref = await SharedPreferences.getInstance();
    return pref.setString(USER_DATA_KEY, userData);
  }

  Future<bool?> userEnterTheApp() async {
    final pref = await SharedPreferences.getInstance();
    return pref.setBool(IS_FIRIST, true);
  }

  Future<bool?> get isFirstEnter async {
    final pref = await SharedPreferences.getInstance();
    return pref.getBool(IS_FIRIST);
  }

  Future<File> writeUserData(UserInfo? data) async {
    final file = await _localFile;
    print('Data to write $data');
    return file.writeAsString(data != null ? json.encode(data.toJson()) : '');
  }

  Future<UserInfo?> readUserData() async {
    try {
      final file = await _localFile;
      String data = await file.readAsString();
      return UserInfo.fromJson(json.decode(data));
    } catch (err) {
      print(err);
      return null;
    }
  }

  Future<String> get _appPath async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      appPath = directory.path;
      return directory.path;
    } catch (e) {
      return '';
    }
  }

  Future<File> get _localFile async {
    final path = await _appPath;
    return File(path + '/${AppConfig.appName}.txt');
  }
}
