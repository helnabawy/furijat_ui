import 'package:furijat_flutter/app/app_config.dart';
import 'package:furijat_flutter/app/app_routes.dart';
import 'package:furijat_flutter/app/app_themes.dart';
import 'package:furijat_flutter/providers/language_provider.dart';
import 'package:furijat_flutter/providers/theme_provider.dart';
import 'package:furijat_flutter/storage/user_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/src/provider.dart';

class MicroApp extends StatefulWidget {
  @override
  _MicroAppState createState() => _MicroAppState();
}

class _MicroAppState extends State<MicroApp> {
  final userStorage = UserStorage();
  @override
  void initState() {
    super.initState();
    // _checkAppLanguage();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: userStorage.isFirstEnter,
        builder: (ctx, snapshot) {
          return MaterialApp(
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            title: AppConfig.appName,
            supportedLocales: [const Locale('ar', ''), const Locale('en', '')],
            locale: Locale(context.watch<LanguageProvider>().language),
            debugShowCheckedModeBanner: false,
            theme: AppThemes.lightTheme,
            darkTheme: AppThemes.darkTheme,
            themeMode: context.watch<ThemeProvider>().theme,
            onGenerateInitialRoutes: RoutesGenerator.generateInitialRoutes,
            onGenerateRoute: RoutesGenerator.generateRoute,
          );
        });
  }
}
