import 'package:furijat_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class SubPageSliverAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  bool hideBackButton;

  SubPageSliverAppBar({Key? key, required this.title, this.hideBackButton = false});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        title: Text(title, style: AppTextStyles.darkHeading),
        centerTitle: true,
        leadingWidth: !hideBackButton ? 56 : 0,
        leading:
            !hideBackButton ? BackButton(color: AppColors.primary, key: GlobalKey(debugLabel: 'backButton')) : null,
        backgroundColor: AppColors.white,
        floating: true);
  }

  @override
  Size get preferredSize => Size(double.infinity, 60);
}
