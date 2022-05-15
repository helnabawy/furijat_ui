import 'package:furijat_flutter/models/supported_language.dart';
import 'package:furijat_flutter/types/users_types.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RegisteredClient implements ChooseEntry {
  final ClientType type;
  String name;
  bool isSelected;

  RegisteredClient(this.type, this.name, [this.isSelected = false]);
}
