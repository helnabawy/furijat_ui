import 'package:furijat_flutter/app/micro_app.dart';
import 'package:furijat_flutter/providers/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:furijat_flutter/providers/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ChangeNotifierProvider(create: (_) => LanguageProvider()),
    ],
    child: MicroApp(),
  ));
}
