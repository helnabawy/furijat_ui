import 'package:furijat_flutter/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Colors, Color, TextStyle, LinearGradient, Alignment;

const appFontFamily = 'Cairo';
const appFontFamilySemiBold = 'Cairo-SemiBold';
const maxButtonHeight = 44.0;

class AppColors {
  static const white = Colors.white;
  static const primary = Color.fromARGB(255, 224, 207, 151);
  static const secondary = Color.fromARGB(255, 223, 239, 242);
  static const dark = Color.fromARGB(255, 54, 54, 54);
  static const light = Color.fromARGB(255, 163, 163, 163);
  static const tabUnselected = Color.fromARGB(255, 249, 249, 249);
  static final background = Color.fromARGB(255, 239, 239, 239);
}

class AppTextStyles {
  static const white = TextStyle(color: Colors.white, fontFamily: appFontFamily);
  static final whiteHeading = TextStyle(color: Colors.white, fontFamily: appFontFamilySemiBold, fontSize: 16);
  static final dark = TextStyle(color: AppColors.dark, fontFamily: appFontFamily);
  static final darkHeading =
      TextStyle(color: AppColors.dark, fontWeight: FontWeight.bold, fontFamily: appFontFamilySemiBold, fontSize: 16);
}

final appCtaGradient = LinearGradient(
  colors: [AppColors.primary, AppColors.primary],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
);

const TOKEN_KEY = 'userToken';
const USER_DATA_KEY = 'userData';
const USER_CREDENTIALS_KEY = 'userCredentials';
const LANGUAGE_KEY = 'language';
const IS_FIRIST = 'isFirstEnter';
const HOME_ADS = 'homeAds';
