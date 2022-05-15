import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  const BoxContainer({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.8,
    constraints: BoxConstraints(maxWidth: 400),
      child: child,
    );
  }
}
