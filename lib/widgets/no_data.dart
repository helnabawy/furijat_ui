import 'package:furijat_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class NoDataComponent extends StatelessWidget {
  const NoDataComponent({Key? key, required this.text, this.imagePath = 'assets/images/notification.png'})
      : super(key: key);

  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 350,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 200),
          SizedBox(height: 12),
          Text(text, style: TextStyle(color: AppColors.dark, fontSize: 18))
        ],
      ),
    );
  }
}
