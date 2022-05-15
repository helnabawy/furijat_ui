import 'package:flutter/material.dart';

class MakeContainerRoundWithShadow extends StatelessWidget {
  const MakeContainerRoundWithShadow({Key? key, required this.widget}) : super(key: key);
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withAlpha(15),
              blurRadius: 5,
              offset: Offset(-2, 3)), // to make elevation make the coloured border
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: widget,
    );
  }
}
