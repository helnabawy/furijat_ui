import 'package:flutter/material.dart' show Colors, Directionality, TextDirection, BuildContext;
import 'package:flutter/services.dart';

void changeStatusBarColor() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarBrightness: Brightness.dark, statusBarColor: Colors.blueGrey));
}

bool isRTL(BuildContext context) {
  return Directionality.of(context) == TextDirection.rtl;
}

String formatMobile(String mobile) {
  final formattedMobile = mobile;
  if (formattedMobile.startsWith('+')) {
    formattedMobile.replaceAll('+', '00');
  }
  return formattedMobile;
}
