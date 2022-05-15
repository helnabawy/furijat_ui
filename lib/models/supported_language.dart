abstract class ChooseEntry {
  late bool isSelected;
  late String name;
}

/// This abstract class for holding the basic information
/// about the language that might be used in the app
class SupportedLanguage implements ChooseEntry {
  final slug;
  String name;
  bool isSelected;

  SupportedLanguage(this.slug, this.name, [this.isSelected = false]);
}

class AvailableCity implements ChooseEntry {
  final slug;
  String name;
  bool isSelected;

  AvailableCity(this.slug, this.name, [this.isSelected = false]);
}
