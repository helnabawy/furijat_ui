import 'package:furijat_flutter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProgressActionButton extends StatefulWidget {
  final VoidCallback actionButtonClicked;
  final int slidesCount;
  int activeSlider;
  ProgressActionButton(
      {Key? key, required this.actionButtonClicked, required this.slidesCount, required this.activeSlider})
      : super(key: key);

  @override
  State<ProgressActionButton> createState() => _ProgressActionButtonState();
}

class _ProgressActionButtonState extends State<ProgressActionButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late double _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    final localize = AppLocalizations.of(context)!;

    _scale = 1 - _controller.value;
    return GestureDetector(
      onTapCancel: _onTapCancel,
      onTapDown: _onTapDown,
      child: Stack(
        children: [
          SizedBox(
              width: 70,
              height: 70,
              child: CircularProgressIndicator(
                value: 1,
                strokeWidth: 2,
                color: AppColors.secondary,
              )),
          SizedBox(
              width: 70,
              height: 70,
              child: CircularProgressIndicator(
                value: (widget.activeSlider + 1) / widget.slidesCount,
                strokeWidth: 2,
                color: AppColors.primary,
              )),
          Transform.scale(
            scale: _scale,
            child: Container(
              transform: Matrix4.translationValues((localize.locale == 'en' ? 1 : -1) * 5, 5, 0),
              decoration: BoxDecoration(gradient: appCtaGradient, borderRadius: BorderRadius.circular(30)),
              child: RawMaterialButton(
                  onPressed: widget.actionButtonClicked,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  constraints: BoxConstraints(minWidth: 60, minHeight: 60, maxWidth: 60, maxHeight: 60),
                  shape: CircleBorder(),
                  child: Icon(widget.activeSlider == widget.slidesCount - 1 ? Icons.check : Icons.arrow_forward,
                      color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }

  void _onTapCancel() {
    _controller.reverse();
  }

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }
}
