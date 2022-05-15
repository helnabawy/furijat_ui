import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

PreferredSizeWidget defaultAppBar(BuildContext context, String title) {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
    iconTheme: IconThemeData(color: Theme.of(context).textTheme.bodyText1?.color),
    leading: IconButton(icon: Icon(Icons.arrow_back_ios, size: 18,), onPressed: () {
      Navigator.of(context).pop();
    },),
    title: Text(
      title,
      style: appBarTextStyle(isLight: isDarkMode(context)),
    ),
  );
}

TextStyle appBarTextStyle({bool isLight = false}) {
  var brightness = SchedulerBinding.instance!.window.platformBrightness;
  bool darkModeOn = brightness == Brightness.dark;
  // print('Dark Mode is On:  $darkModeOn');
  return TextStyle(color: (isLight && !darkModeOn) ? Colors.white : Colors.black87, fontSize: 14);
}

bool isDarkMode(BuildContext context) {
  var brightness = Theme.of(context).brightness;
  bool darkModeOn = brightness == Brightness.dark;
  return darkModeOn;
}