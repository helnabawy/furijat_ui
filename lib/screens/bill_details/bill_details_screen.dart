import 'package:furijat_flutter/models/apis/auth_response.dart';
import 'package:furijat_flutter/storage/user_storage.dart';
import 'package:furijat_flutter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BillDetailsScreen extends StatefulWidget {
  const BillDetailsScreen({Key? key}) : super(key: key);

  @override
  _BillDetailsScreenState createState() => _BillDetailsScreenState();
}

class _BillDetailsScreenState extends State<BillDetailsScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final _formKey = GlobalKey<FormState>();
  UserStorage userStorage = UserStorage();
  UserInfo? userInfo;

  FocusNode billIdFocusNode = FocusNode();
  TextEditingController billIdCtrl = TextEditingController();

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
    final localize = AppLocalizations.of(context)!;
    return Scaffold(
        appBar: AppBar(
            title: Text(localize.furijatBills),
            centerTitle: false,
            elevation: 0,
            leading: const BackButton()),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(40)),
                        child: Image.asset('assets/images/checkImg.png')),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${localize.billNumber}: 4567646576',
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                        SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.circle, size: 12, color: Colors.green),
                            const SizedBox(width: 4),
                            Text(
                              'سارية',
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(32),
                child: Text(
                  'هذه الفاتورة ضمن مبادرة فرجت',
                  style: TextStyle(fontFamily: 'Almarai-Bold', fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(start: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildTile('رقم الهوية', '5654564564'),
                              _buildTile('قيمة الفاتورة', '100000000 ريال'),
                              _buildTile('المبلغ المدفوع', '20000 ريال'),
                              _buildTile('المبلغ المتبقي', '18000 ريال'),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text('نسبة الاكتمال'),
                            SizedBox(height: 20),
                            Stack(
                              children: [
                                SizedBox(
                                  width: 65,
                                  height: 65,
                                  child: CircularProgressIndicator(
                                    value: 0.12,
                                    color: Colors.green,
                                    backgroundColor: Colors.grey.shade100,
                                  ),
                                ),
                                const Positioned.fill(
                                    child: Center(
                                        child: Text('12%',
                                            style: TextStyle(
                                                color: Colors.green, fontSize: 15, fontWeight: FontWeight.bold))))
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  Container(height: 2, color: AppColors.primary),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: _checkBill,
                        child: Container(
                          constraints: const BoxConstraints(maxHeight: 50),
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(8))),
                          padding: const EdgeInsetsDirectional.only(top: 16, bottom: 16, end: 16, start: 20),
                          width: 170,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                localize.newCheck,
                                style: TextStyle(color: Colors.white, fontSize: 16),
                              ),
                              const Icon(Icons.arrow_forward, color: Colors.white)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
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
        ));
  }

  void _getUserInfo() async {
    UserInfo? data = await userStorage.readUserData();
    setState(() => userInfo = data);
  }

  void _checkBill() {
    Navigator.of(context).pop();
  }

  Widget _buildTile(String title, String subTitle) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 4),
          Text(subTitle, style: const TextStyle(fontFamily: 'Almarai-Bold', fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
