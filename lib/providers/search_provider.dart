import 'package:flutter/material.dart';

class SearchProvider with ChangeNotifier {
  String _querySearch = '';

  changeQuery(String query) {
    _querySearch = query;
    print('Query Search: $query ');
    notifyListeners();
  }

  String get querySeacrh => _querySearch;
}
