import 'package:flutter/material.dart';
import 'package:furijat_flutter/utils/constants.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
      fontFamily: 'Almarai',
      primaryColor: AppColors.primary,
      backgroundColor: AppColors.background,
      appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 250, 249, 243),
          foregroundColor: AppColors.dark,
          titleTextStyle: TextStyle(
            color: AppColors.dark,
            fontFamily: 'Almarai',
            fontSize: 18
          )),
      scaffoldBackgroundColor: Colors.white);
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Almarai',
    appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.dark,
        foregroundColor: AppColors.white,
        titleTextStyle: TextStyle(
          color: AppColors.white,
          fontFamily: 'Almarai',
            fontSize: 20
        )),
  );
}
