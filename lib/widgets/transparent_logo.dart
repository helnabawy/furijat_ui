import 'package:flutter/material.dart'
    show StatelessWidget, Widget, BuildContext, Image, Center, Key, Size, MediaQuery;

class TransparentLogo extends StatelessWidget {
  const TransparentLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
        child: Image.asset(
      'assets/images/icon.png',
      width: size.width * 0.4,
    ));
  }
}
