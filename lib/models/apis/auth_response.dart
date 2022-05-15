// To parse this JSON data, do
//
//     final registerResponse = registerResponseFromJson(jsonString);

import 'dart:convert';

RegisterResponse registerResponseFromJson(String str) => RegisterResponse.fromJson(json.decode(str));

String registerResponseToJson(RegisterResponse data) => json.encode(data.toJson());

class RegisterResponse {
  RegisterResponse({required this.status, this.data, this.errors});

  final int status;
  final _RegisterUserData? data;
  final Map<String, dynamic>? errors;
  factory RegisterResponse.fromJson(Map<String, dynamic> json) {
    print('JSON: ${json.runtimeType}');
    return RegisterResponse(
        status: json["status"],
        data: json['data'] == null ? null : _RegisterUserData.fromJson(json["data"]),
        errors: json['errors'] == null ? null : json['errors']);
  }

  Map<String, dynamic> toJson() => {"status": status, "data": data?.toJson(), "errors": errors};
}

class _RegisterUserData {
  _RegisterUserData({
    required this.id,
    required this.name,
    required this.email,
    required this.avatar,
    required this.roles,
    required this.area,
    required this.original,
  });

  final int id;
  final String name;
  final String email;
  final dynamic avatar;
  final List<String>? roles;
  final List<dynamic>? area;
  final _RegisterUserOriginal? original;

  factory _RegisterUserData.fromJson(Map<String, dynamic> json) => _RegisterUserData(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        avatar: json["avatar"],
        roles: json["roles"] == null ? null : List<String>.from(json["roles"].map((x) => x)),
        area: json["area"] == null ? null : List<dynamic>.from(json["area"].map((x) => x)),
        original: json["original"] == null ? null : _RegisterUserOriginal.fromJson(json["original"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "avatar": avatar,
        "roles": roles == null ? null : List<dynamic>.from(roles!.map((x) => x)),
        "area": area == null ? null : List<dynamic>.from(area!.map((x) => x)),
        "original": original == null ? null : original!.toJson(),
      };
}

class _RegisterUserOriginal {
  _RegisterUserOriginal({
    required this.name,
    required this.email,
    required this.password,
    required this.mobile,
    required this.mobileCode,
    required this.status,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  final String name;
  final String email;
  final String password;
  final String mobile;
  final int mobileCode;
  final int status;
  final DateTime? updatedAt;
  final DateTime? createdAt;
  final int id;

  factory _RegisterUserOriginal.fromJson(Map<String, dynamic> json) => _RegisterUserOriginal(
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        password: json["password"] == null ? null : json["password"],
        mobile: json["mobile"] == null ? null : json["mobile"],
        mobileCode: json["mobile_code"] == null ? null : json["mobile_code"],
        status: json["status"] == null ? null : json["status"],
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "email": email == null ? null : email,
        "password": password == null ? null : password,
        "mobile": mobile == null ? null : mobile,
        "mobile_code": mobileCode == null ? null : mobileCode,
        "status": status == null ? null : status,
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "id": id,
      };
}

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    required this.id,
    required this.name,
    required this.email,
    required this.avatar,
    required this.roles,
    required this.area,
    required this.token,
    required this.original,
  });

  final int id;
  final String name;
  final String email;
  final dynamic avatar;
  final List<dynamic>? roles;
  final List<dynamic>? area;
  final String token;
  final UserInfo? original;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        avatar: json["avatar"],
        roles: json["roles"] == null ? null : List<dynamic>.from(json["roles"].map((x) => x)),
        area: json["area"] == null ? null : List<dynamic>.from(json["area"].map((x) => x)),
        token: json["token"] == null ? null : json["token"],
        original: json["original"] == null ? null : UserInfo.fromJson(json["original"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "avatar": avatar,
        "roles": roles == null ? null : List<dynamic>.from(roles!.map((x) => x)),
        "area": area == null ? null : List<dynamic>.from(area!.map((x) => x)),
        "token": token,
        "original": original == null ? null : original!.toJson(),
      };
}

class UserInfo {
  UserInfo({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.mobile,
    required this.mobileCode,
    required this.gender,
    required this.photoid,
    required this.city,
    required this.nationality,
    required this.mobileVerifiedAt,
    required this.photoidVerifiedAt,
    required this.emailVerifiedAt,
    required this.description,
    required this.avatar,
    required this.status,
    required this.level,
    required this.certifications,
    required this.bankAccount,
    required this.addBy,
    required this.rateCount,
    required this.rateScore,
    required this.companyId,
    required this.orgId,
    required this.price,
    required this.rememberToken,
    required this.createdAt,
    required this.updatedAt,
    required this.token,
  });

  final int id;
  final String name;
  final String email;
  final String password;
  final String mobile;
  final String mobileCode;
  final dynamic gender;
  final dynamic photoid;
  final dynamic city;
  final dynamic nationality;
  final dynamic mobileVerifiedAt;
  final dynamic photoidVerifiedAt;
  final dynamic emailVerifiedAt;
  final dynamic description;
  final dynamic avatar;
  final int status;
  final dynamic level;
  final dynamic certifications;
  final dynamic bankAccount;
  final dynamic addBy;
  final int rateCount;
  final int rateScore;
  final dynamic companyId;
  final dynamic orgId;
  final dynamic price;
  final dynamic rememberToken;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String token;

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        password: json["password"] == null ? null : json["password"],
        mobile: json["mobile"] == null ? null : json["mobile"],
        mobileCode: json["mobile_code"] == null ? null : json["mobile_code"],
        gender: json["gender"],
        photoid: json["photoid"],
        city: json["city"],
        nationality: json["nationality"],
        mobileVerifiedAt: json["mobile_verified_at"],
        photoidVerifiedAt: json["photoid_verified_at"],
        emailVerifiedAt: json["email_verified_at"],
        description: json["description"],
        avatar: json["avatar"],
        status: json["status"] == null ? null : json["status"],
        level: json["level"],
        certifications: json["certifications"],
        bankAccount: json["bank_account"],
        addBy: json["add_by"],
        rateCount: json["rate_count"] == null ? null : json["rate_count"],
        rateScore: json["rate_score"] == null ? null : json["rate_score"],
        companyId: json["company_id"],
        orgId: json["org_id"],
        price: json["price"],
        rememberToken: json["remember_token"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        token: json["token"] == null ? null : json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "password": password,
        "mobile": mobile,
        "mobile_code": mobileCode,
        "gender": gender,
        "photoid": photoid,
        "city": city,
        "nationality": nationality,
        "mobile_verified_at": mobileVerifiedAt,
        "photoid_verified_at": photoidVerifiedAt,
        "email_verified_at": emailVerifiedAt,
        "description": description,
        "avatar": avatar,
        "status": status == null ? null : status,
        "level": level,
        "certifications": certifications,
        "bank_account": bankAccount,
        "add_by": addBy,
        "rate_count": rateCount == null ? null : rateCount,
        "rate_score": rateScore == null ? null : rateScore,
        "company_id": companyId,
        "org_id": orgId,
        "price": price,
        "remember_token": rememberToken,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "token": token == null ? null : token,
      };
}

LoginResponseError loginResponseErrorFromJson(String str) => LoginResponseError.fromJson(json.decode(str));

String loginResponseErrorToJson(LoginResponseError data) => json.encode(data.toJson());

class LoginResponseError {
  LoginResponseError({
    required this.status,
    required this.errors,
  });

  final int status;
  final List<String> errors;

  factory LoginResponseError.fromJson(Map<String, dynamic> json) => LoginResponseError(
        status: json["status"],
        errors: List<String>.from(json["errors"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "errors": List<dynamic>.from(errors.map((x) => x)),
      };
}

CheckMobileResponse checkResponseFromJson(String str) => CheckMobileResponse.fromJson(json.decode(str));

String checkResponseToJson(CheckMobileResponse data) => json.encode(data.toJson());

class CheckMobileResponse {
  CheckMobileResponse({
    required this.created,
    required this.code,
    required this.status,
    required this.exists,
  });

  final bool? created;
  final int? code;
  final int status;
  final bool exists;

  factory CheckMobileResponse.fromJson(Map<String, dynamic> json) => CheckMobileResponse(
        created: json["created"] == null ? null : json["created"],
        code: json["code"] == null ? null : json["code"],
        status: json["status"] == null ? null : json["status"],
        exists: json["exists"] == null ? null : json["exists"],
      );

  Map<String, dynamic> toJson() => {
        "created": created == null ? null : created,
        "code": code == null ? null : code,
        "status": status,
        "exists": exists,
      };
}

ForgotPasswordResponse forgotPasswordResponseFromJson(String str) => ForgotPasswordResponse.fromJson(json.decode(str));

String forgotPasswordResponseToJson(ForgotPasswordResponse data) => json.encode(data.toJson());

class ForgotPasswordResponse {
  ForgotPasswordResponse({required this.status, required this.errors});

  final int status;
  final dynamic errors;

  factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) => ForgotPasswordResponse(
        status: json["status"] == null ? null : json["status"],
        errors: json["errors"] == null ? null : json["errors"],
      );

  Map<String, dynamic> toJson() => {"status": status, "errors": errors};
}
