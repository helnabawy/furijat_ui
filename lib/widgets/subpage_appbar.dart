import 'package:furijat_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class SubPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  bool hideBackButton;
  SubPageAppBar({Key? key, required this.title, this.hideBackButton = false});

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leadingWidth: !hideBackButton ? 56 : 0,
      title: Text(title, style: AppTextStyles.darkHeading),
      leading: !hideBackButton ? BackButton(color: AppColors.dark) : null,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 60);
}
