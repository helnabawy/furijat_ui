enum ApiRoutes { register, login, checkMobile, forgotPassword, resetPassword }

extension ApiRoutesS on ApiRoutes {
  get path {
    switch (this) {
      case ApiRoutes.register:
        return '/auth/join';
      case ApiRoutes.login:
        return '/auth/login';
      case ApiRoutes.checkMobile:
        return '/auth/check';
      case ApiRoutes.resetPassword:
        return '/auth/reset_password';
      case ApiRoutes.forgotPassword:
        return '/auth/forget_password';
      default:
        return '';
    }
  }
}
