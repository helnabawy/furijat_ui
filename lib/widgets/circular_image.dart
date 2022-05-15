import 'package:furijat_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  CircularImage({Key? key, this.assetPath, this.radius = 70}) : super(key: key);
  String? assetPath;
  double radius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius / 2),
      child: Image.asset(assetPath ?? 'assets/images/profile_holder.png', fit: BoxFit.cover),
    );
  }
}
