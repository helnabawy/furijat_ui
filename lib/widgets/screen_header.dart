import 'package:furijat_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.all(12.0),
        child: Center(child: Text(title, style: AppTextStyles.darkHeading)));
  }
}
