import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: 100,
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 10)],
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/amber.png',
            height: 25,
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/images/calendar_icon.png',
              width: 18,
              height: 19,
              errorBuilder: (_, __, ___) => Icon(Icons.home),
            ),
          )
        ],
      ),
    );
  }
}
