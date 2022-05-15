import 'package:furijat_flutter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void showHomeAlertDialogue(BuildContext ctx, VoidCallback onConfirm) async {
  final localize = AppLocalizations.of(ctx)!,
      size = MediaQuery.of(ctx).size,
      _width = size.width * 0.85,
      _height = size.height * 0.37;

  showDialog(
      context: ctx,
      barrierDismissible: true,
      builder: (context) {
        return Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: _width,
              height: _height - 20,
              color: Colors.white,
              child: Stack(children: [
                Image.asset(
                  'assets/images/sight.png',
                  fit: BoxFit.cover,
                  height: _height - 90,
                  width: _width,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'planTrip',
                                style: AppTextStyles.dark.copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'connectTourguides',
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: maxButtonHeight * 0.8,
                          decoration: BoxDecoration(
                              color: AppColors.primary, borderRadius: BorderRadius.all(Radius.circular(30))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                ),
                                onPressed: () {
                                  onConfirm();
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'start',
                                  style: TextStyle(fontSize: 14, color: AppColors.white),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 10,
                    child: RawMaterialButton(
                        onPressed: () => Navigator.of(ctx).pop(),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        fillColor: Colors.white,
                        constraints: BoxConstraints(minWidth: 22, minHeight: 22, maxWidth: 22, maxHeight: 22),
                        shape: CircleBorder(),
                        child: Icon(
                          Icons.close,
                          color: AppColors.dark,
                          size: 14,
                        )))
              ]),
            ),
          ),
        );
      });
}
