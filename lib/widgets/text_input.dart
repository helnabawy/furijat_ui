import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:furijat_flutter/utils/constants.dart';

class TextInput extends StatelessWidget {
  TextInput(
      {Key? key,
      required this.focusNode,
      required this.inputController,
      this.keyboardType = TextInputType.text,
      this.onSubmit,
      this.hint,
      this.validator,
      this.inputHint})
      : super(key: key);
  final FocusNode focusNode;
  final TextEditingController inputController;
  VoidCallback? onSubmit;
  String? hint;
  String? inputHint;
  FormFieldValidator<String>? validator;
  TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    final localize = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Text(
            hint ?? 'اسم المستخدم ',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          constraints: BoxConstraints(maxWidth: 500),
          margin: const EdgeInsets.only(bottom: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)), color: AppColors.primary.withAlpha(15)),
          child: TextFormField(
            controller: inputController,
            focusNode: focusNode,
            onEditingComplete: onSubmit,
            onFieldSubmitted: (t) {},
            keyboardType: keyboardType,
            cursorColor: AppColors.primary,
            validator: validator,
            style: TextStyle(letterSpacing: 1.5),
            enableSuggestions: true,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                fillColor: Colors.red,
                errorStyle: TextStyle(fontSize: 11),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                hintText: inputHint ?? 'اسم المستخدم ',
                hintStyle: TextStyle(color: AppColors.light, fontSize: 14),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary.withAlpha(80)),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary.withAlpha(80)),
                    borderRadius: const BorderRadius.all(Radius.circular(10)))),
          ),
        ),
      ],
    );
  }
}
