import 'package:furijat_flutter/network/api_routes.dart';
import 'package:dio/dio.dart';

class APINetwork {
  final String _apiUrl = 'https://getguide.app/api/v1';
  final Dio httpProvider = Dio();

  String get apiUrl => _apiUrl;

  getPathOfRoute(ApiRoutes route) {
    return apiUrl + route.path;
  }
}
