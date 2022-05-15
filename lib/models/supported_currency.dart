import 'package:furijat_flutter/models/supported_language.dart';

class SupportedCurrency extends ChooseEntry {
  final slug;
  String name;
  bool isSelected;

  SupportedCurrency(this.slug, this.name, [this.isSelected = false]);
}
