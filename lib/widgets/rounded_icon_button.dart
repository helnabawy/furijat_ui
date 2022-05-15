import 'package:furijat_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({Key? key, required this.imageName, required this.onClick, this.iconWidth = 20})
      : super(key: key);
  final String imageName;
  final VoidCallback onClick;
  final double iconWidth;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onClick,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        constraints: BoxConstraints(minWidth: 60, minHeight: maxButtonHeight, maxWidth: 60, maxHeight: 60),
        shape: CircleBorder(),
        child: Image.asset(
          'assets/images/$imageName',
          width: iconWidth,
        ));
  }
}
