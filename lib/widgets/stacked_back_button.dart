import 'package:furijat_flutter/utils/constants.dart' show AppColors;
import 'package:furijat_flutter/utils/global_utils.dart';
import 'package:flutter/cupertino.dart' show CupertinoNavigationBarBackButton;
import 'package:flutter/material.dart' show StatelessWidget, Key, Positioned, BuildContext, Widget;

class StackedBackButton extends StatelessWidget {
  final isDark;
  const StackedBackButton({Key? key, this.isDark = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isRtl = isRTL(context);
    return Positioned(
      top: 32,
      right: isRtl ? 12 : null,
      left: isRtl ? null : 12,
      child: CupertinoNavigationBarBackButton(color: isDark ? AppColors.dark : AppColors.white),
    );
  }
}
