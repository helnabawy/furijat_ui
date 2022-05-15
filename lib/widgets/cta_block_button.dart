import 'package:furijat_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class CtaBlockButton extends StatelessWidget {
  final VoidCallback? onClick;
  final String text;
  final double? width;
  bool? active;
  final double borderRadius;
  String size;
  Color backgroundColor;

  CtaBlockButton(
      {Key? key,
      required this.width,
      required this.onClick,
      required this.text,
      this.borderRadius = 50,
      this.size = 'normal',
      this.backgroundColor = AppColors.primary,
      this.active = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: onClick == null ? 0.65 : 1.0,
      duration: const Duration(milliseconds: 250),
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: maxButtonHeight,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        constraints: BoxConstraints(maxWidth: 500),
        decoration: BoxDecoration(
            color: active == true ? backgroundColor : Color.fromARGB(58, 246, 214, 228),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
        child: TextButton(
            style: ButtonStyle(
              shape:
                  MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius))),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
            ),
            onPressed: onClick,
            child: onClick == null ? _buildProgress() : _buildTextView(text)),
      ),
    );
  }

  _buildProgress() {
    return CircularProgressIndicator(
      color: Colors.white,
      strokeWidth: 1,
    );
  }

  _buildTextView(String text) {
    return FittedBox(
      child: Text(
        text,
        style: TextStyle(fontSize: size == 'small' ? 12 : 16, color: active == true ? AppColors.white : AppColors.dark),
      ),
    );
  }
}
