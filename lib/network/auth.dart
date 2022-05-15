import 'package:furijat_flutter/models/apis/auth_data.dart';
import 'package:furijat_flutter/models/apis/auth_response.dart';
import 'package:furijat_flutter/network/api_network.dart';
import 'package:furijat_flutter/network/api_routes.dart';
import 'package:dio/dio.dart';

class AuthNetwork extends APINetwork {
  loginByMobile() {}

  Future register(RegisterData data) async {
    final _path = super.getPathOfRoute(ApiRoutes.register);

    try {
      final response = await super.httpProvider.post(_path, data: data.toJson());
      return registerResponseFromJson(response.toString());
    } catch (e) {
      throw e;
    }
  }

  Future login(LoginData data) async {
    final _path = super.getPathOfRoute(ApiRoutes.login);
    try {
      final response = await super.httpProvider.post(_path, data: data.toJson());
      if (response.statusCode == 200) {
        return loginResponseFromJson(response.toString());
      } else {
        return loginResponseErrorFromJson(response.toString());
      }
    } catch (e) {
      throw e;
    }
  }

  Future checkMobile(CheckMobileData data) async {
    final _path = super.getPathOfRoute(ApiRoutes.checkMobile);
    try {
      final formData = FormData();
      formData.fields.add(MapEntry('mobile', data.mobile));
      formData.fields.add(MapEntry('resend', data.resend.toString()));
      formData.fields.add(MapEntry('create', data.create.toString()));

      final response = await super.httpProvider.post(_path, data: data.toJson());
      return checkResponseFromJson(response.toString());
    } catch (e) {
      throw e;
    }
  }

  Future forgotPassword(String mobile) async {
    final _path = super.getPathOfRoute(ApiRoutes.forgotPassword);
    try {
      final response = await super.httpProvider.post(_path, data: {'mobile': mobile});
      print(response);
      return forgotPasswordResponseFromJson(response.toString());
    } catch (e) {
      throw e;
    }
  }

  Future resetPassword(ResetPasswordData data) async {
    final _path = super.getPathOfRoute(ApiRoutes.resetPassword);
    try {
      final response = await super.httpProvider.post(_path, data: data.toJson());
      print(response.toString());
      return forgotPasswordResponseFromJson(response.toString());
    } catch (e) {
      throw e;
    }
  }
}
