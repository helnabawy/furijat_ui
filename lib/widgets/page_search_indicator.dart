import 'package:furijat_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class PageSearchTextIndicator extends StatelessWidget {
  final String suffix;
  final String subject;
  const PageSearchTextIndicator({Key? key, required this.suffix, required this.subject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: RichText(
          text: TextSpan(style: TextStyle(color: AppColors.light, fontSize: 12, fontFamily: appFontFamily), children: [
        TextSpan(text: suffix),
        TextSpan(text: subject, style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold)),
      ])),
    );
  }
}
