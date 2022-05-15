import 'package:furijat_flutter/utils/constants.dart' show AppColors;
import 'package:flutter/material.dart' show StatelessWidget, BuildContext, Key, Container, Widget;

class TileSeparator extends StatelessWidget {
  const TileSeparator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 1, color: AppColors.tabUnselected);
  }
}
