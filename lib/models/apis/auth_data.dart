class RegisterData {
  final String name;
  final String email;
  final String mobile;
  final String password;
  final String passwordConfirmation;
  final String role;

  RegisterData(
      {required this.name,
      required this.email,
      required this.mobile,
      required this.password,
      required this.passwordConfirmation,
      required this.role});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['password'] = this.password;
    data['password_confirmation'] = this.passwordConfirmation;
    data['role'] = this.role;
    return data;
  }
}

class LoginData {
  final String mobile;
  final String password;

  LoginData({required this.mobile, required this.password});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['mobile'] = this.mobile;
    data['password'] = this.password;

    return data;
  }
}

class CheckMobileData {
  final String mobile;
  final int send;
  final int create;
  final int resend;

  CheckMobileData({required this.mobile, this.send = 0, this.create = 0, this.resend = 0});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['mobile'] = this.mobile;
    data['send'] = this.send;
    data['create'] = this.create;
    data['resend'] = this.resend;

    return data;
  }
}

class VerifyMobileData {
  final String code;

  VerifyMobileData(this.code);

  Map<String, String> toJson() {
    final Map<String, String> data = Map<String, String>();
    data['code'] = this.code;
    return data;
  }
}

class ResetPasswordData {
  final String mobile;
  final String code;
  final String password;
  final String passwordConfirmation;

  ResetPasswordData(
      {required this.mobile, required this.code, required this.password, required this.passwordConfirmation});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['mobile'] = this.mobile;
    data['code'] = this.code;
    data['password'] = this.password;
    data['password_confirmation'] = this.passwordConfirmation;

    return data;
  }
}
