import 'package:furijat_flutter/types/routes_types.dart';
import 'package:furijat_flutter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NoUserInfo extends StatelessWidget {
  const NoUserInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localize = AppLocalizations.of(context)!;
    var login;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_circle_outlined, color: AppColors.dark, size: 50),
          SizedBox(height: 10),
          Text('youHaveToLoginIn', style: AppTextStyles.dark, textAlign: TextAlign.center),
          TextButton(
              child: Text(
                'Login',
                style: TextStyle(color: AppColors.primary),
              ),
              onPressed: () => _navToLogin(context))
        ],
      ),
    );
  }

  void _navToLogin(BuildContext context) {}
}
