import 'dart:io';

import 'package:furijat_flutter/utils/constants.dart';
import 'package:furijat_flutter/widgets/cta_block_button.dart';
import 'package:flutter/cupertino.dart' show showCupertinoDialog;
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void showSnackBar(BuildContext ctx, {String message = ''}) {
  final localize = AppLocalizations.of(ctx)!;

  final Duration snackDuration = Duration(seconds: 3);
  SnackBar snackBar = SnackBar(
    behavior: SnackBarBehavior.floating,
    margin: const EdgeInsets.all(8),
    backgroundColor: AppColors.primary,
    content: Text(
      message.isNotEmpty ? message : 'errorOccured',
      style: TextStyle(fontFamily: 'Cairo'),
    ),
    duration: snackDuration,
  );
  ScaffoldMessenger.of(ctx).showSnackBar(snackBar);
}

Future<void> showLoginConfirmMobile(BuildContext context, String mobile, VoidCallback onClick) {
  final localize = AppLocalizations.of(context)!;

  AlertDialog dialog = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text('register', style: TextStyle(fontSize: 16, color: AppColors.dark)),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
            text: TextSpan(style: TextStyle(color: AppColors.dark, fontSize: 14, fontFamily: appFontFamily), children: [
          TextSpan(text: 'yourMobile'),
          TextSpan(
              text: mobile, style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold, letterSpacing: 1)),
          TextSpan(text: 'mobileNotRegistered'),
        ])),
        const SizedBox(height: 20),
        Transform.scale(
            scale: 0.85,
            child: CtaBlockButton(
                width: 200,
                onClick: () {
                  Navigator.of(context).pop();
                  onClick();
                },
                text: 'proceed'))
      ],
    ),
    elevation: 5,
  );
  if (Platform.isAndroid) {
    return showDialog(context: context, builder: (_) => dialog);
  } else {
    return showCupertinoDialog(context: context, builder: (_) => dialog);
  }
}
