import 'package:furijat_flutter/widgets/transparent_logo.dart';
import 'package:flutter/material.dart';

class FullScreenLoadingView extends StatelessWidget {
  const FullScreenLoadingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: TransparentLogo()),
    );
  }
}
