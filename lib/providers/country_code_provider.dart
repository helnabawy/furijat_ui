import 'package:flutter/material.dart';

class CountryCodeProvider with ChangeNotifier {
  final String _imageUrl = 'https://flagcdn.com/32x24/';
  String _countryCode = '+966';
  String _countryFlag = 'https://flagcdn.com/32x24/sa.png';

  changeCountryCode(String code, String id) {
    _countryCode = code;
    _countryFlag = '$_imageUrl$id.png';
    notifyListeners();
  }

  String get countryCode => _countryCode;

  String get countryFlag => _countryFlag;
}
