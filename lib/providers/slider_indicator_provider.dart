import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SliderIndicatorProvider with ChangeNotifier, DiagnosticableTreeMixin {
  int _activeSlider = 0;

  changeActiveSlider(int sliderNum) {
    _activeSlider = sliderNum;
    notifyListeners();
  }

  int get activeSlider => _activeSlider;
}
