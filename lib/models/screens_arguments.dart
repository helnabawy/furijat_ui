class FullScreenArguments {
  final bool isFullScreen;
  FullScreenArguments(this.isFullScreen);
}

enum ScreenAction { verifyMobile, forgotPassword, confirmCode }

class ForgotPasswordArguments {
  final String mobile;
  final ScreenAction screenAction;
  ForgotPasswordArguments(this.mobile, this.screenAction);
}

class RegisterArguments {
  final String mobile;

  RegisterArguments(this.mobile);
}
