import 'package:furijat_flutter/models/supported_language.dart';

class AppConfig {
  static const String appName = 'Furijat Micro App';
  static const String apiUrl = 'https://getguide.com/api/v1';

  static const String defaultAvatarImagePath = 'assets/images/sight.png';

  AppConfig._();
  static final AppConfig _instance = AppConfig._();
  factory AppConfig() => _instance;

  static final List<SupportedLanguage> supportedLanguages = [
    SupportedLanguage('ar', 'عربى', true),
    SupportedLanguage('en', 'English')
  ];
}
