import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Title(
        color: Colors.black,
        child: Text(
          title,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ));
  }
}
