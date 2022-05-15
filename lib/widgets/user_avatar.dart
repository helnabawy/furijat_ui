import 'package:furijat_flutter/utils/constants.dart' show AppColors;
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  UserAvatar({Key? key, this.image});
  ImageProvider? image;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        foregroundImage: image,
        foregroundColor: AppColors.light,
        backgroundImage: AssetImage('assets/images/Photo.png'),
        onBackgroundImageError: (_, __) => AssetImage('assets/images/Photo.png'),
        radius: 50);
  }
}
