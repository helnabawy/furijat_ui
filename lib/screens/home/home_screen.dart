import 'dart:async';

import 'package:furijat_flutter/widgets/app_header.dart';
import 'package:furijat_flutter/models/apis/auth_response.dart';
import 'package:furijat_flutter/providers/tabs_provider.dart';
import 'package:furijat_flutter/storage/public_storage.dart';
import 'package:furijat_flutter/storage/user_storage.dart';
import 'package:furijat_flutter/types/routes_types.dart';
import 'package:furijat_flutter/utils/constants.dart';
import 'package:furijat_flutter/widgets/app_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:furijat_flutter/widgets/text_input.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final _formKey = GlobalKey<FormState>();
  UserStorage userStorage = UserStorage();
  UserInfo? userInfo;

  FocusNode billIdFocusNode = FocusNode();
  TextEditingController billIdCtrl = TextEditingController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _getUserInfo();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    final localize = AppLocalizations.of(context)!;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            title: Text(localize.homeTitle),
            centerTitle: false,
            elevation: 0,
            leading: const BackButton()),
        body: SizedBox(
          width: double.infinity,
          child: GestureDetector(
            onTap: () => billIdFocusNode.unfocus(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 50),
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      Text(
                        localize.thisServiceisFromForijat,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Theme.of(context).hintColor),
                      ),
                      const SizedBox(height: 30),
                      Form(
                        key: _formKey,
                        child: TextInput(
                          focusNode: billIdFocusNode,
                          inputController: billIdCtrl,
                          keyboardType: TextInputType.number,
                          hint: localize.billNumber,
                          inputHint: localize.enterBillNumber,
                          validator: (s) {
                            if (s != null && s.isEmpty) {
                              return localize.youHavetoEnterBillNumber;
                            }
                          },
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: _checkBill,
                          child: Ink(
                            decoration: BoxDecoration(color: AppColors.primary,borderRadius: BorderRadius.only(topRight: Radius.circular(8))),
                            child: Container(
                              constraints: BoxConstraints(maxHeight: 50),
                              padding: const EdgeInsetsDirectional.only(top: 16, bottom: 16, end: 16, start: 40),
                              width: 150,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  isLoading
                                      ? const Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                                          child: FittedBox(
                                              child: CircularProgressIndicator(strokeWidth: 1, color: Colors.white)),
                                        )
                                      : Text(
                                          localize.check,
                                          style: const TextStyle(color: Colors.white, fontSize: 16),
                                        ),
                                  const Icon(Icons.arrow_forward, color: Colors.white)
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(height: 2, color: AppColors.primary),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Image.asset('assets/images/finger.png', width: 90)],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }

  void _getUserInfo() async {
    UserInfo? data = await userStorage.readUserData();
    setState(() => userInfo = data);
  }

  void _checkBill() {
    if (_formKey.currentState?.validate() == false) return;

    setState(() {
      isLoading = true;
    });

    Timer(const Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
        billIdCtrl.text = '';
      });

      Navigator.of(context).pushNamed(AppRoutes.billDetails.route);
    });
  }
}
