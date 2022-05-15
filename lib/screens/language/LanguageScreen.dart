import 'package:furijat_flutter/services/AppPreferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageScreen extends StatefulWidget {
  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  AppPreferences preferences = AppPreferences();
  List<_Language> languages = [_Language('en', 'English', selected: true), _Language('ar', 'العربية')];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const LogoImage(),
            Padding(
                padding: const EdgeInsets.all(22),
                child: Column(
                  children: _displayLangauges(),
                )),
            const MarginBottomBy(25),
            Container(
                width: 120,
                height: 40,
                child: OutlinedButton(
                    onPressed: () {
                      _Language selectedLang = languages.where((e) => e.selected).first;
                      preferences.setChoosedLang(selectedLang.value);
                      Navigator.of(context).pushNamed('/login');
                    },
                    child: Text('SAVE')))
          ],
        ),
      ),
    );
  }

  void _chooseLang(_Language lang) {
    setState(() {
      languages.forEach((language) {
        language.selected = language.id == lang.id;
      });
    });
  }

  List<LanguageWidget> _displayLangauges() {
    return languages.map((e) => LanguageWidget(language: e, onPress: () => _chooseLang(e))).toList();
  }
}

class LogoImage extends StatelessWidget {
  const LogoImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/icon.png',
      width: 200,
    );
  }
}

class MarginBottomBy extends StatelessWidget {
  final double marginBottom;
  const MarginBottomBy(this.marginBottom, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build margin');
    return SizedBox(
      height: marginBottom,
    );
  }
}

class LanguageWidget extends StatelessWidget {
  final _Language language;
  final VoidCallback onPress;
  const LanguageWidget({Key? key, required this.language, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPress,
        child: Container(
          margin: EdgeInsets.only(bottom: 12),
          child: ListTile(
            title: Text(language.name),
            leading: Icon(Icons.language),
            trailing: language.selected
                ? Icon(
                    Icons.check,
                    color: Colors.green,
                  )
                : null,
          ),
        ));
  }
}

class _Language {
  static int increment = 0;
  final int id;
  final String value;
  final String name;
  bool selected;

  _Language(this.value, this.name, {this.selected = false}) : id = increment++;
}
