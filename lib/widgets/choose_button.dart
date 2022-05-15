import 'package:furijat_flutter/models/supported_language.dart';
import 'package:furijat_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class CtaChooseButton extends StatelessWidget {
  const CtaChooseButton({
    Key? key,
    required this.entry,
    required this.onClick,
  }) : super(key: key);

  final ChooseEntry entry;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
            side: MaterialStateProperty.all(BorderSide(color: entry.isSelected ? Colors.white : AppColors.light)),
            backgroundColor: MaterialStateProperty.all(entry.isSelected ? AppColors.primary : Colors.transparent),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
        onPressed: onClick,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: entry.isSelected,
              child: Container(
                  child: Icon(Icons.check, color: entry.isSelected ? AppColors.white : Colors.transparent, size: 18)),
            ),
            Padding(
              // color: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                entry.name,
                style: TextStyle(
                    color: entry.isSelected ? AppColors.white : AppColors.light,
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              ),
            ),
          ],
        ));
  }
}
