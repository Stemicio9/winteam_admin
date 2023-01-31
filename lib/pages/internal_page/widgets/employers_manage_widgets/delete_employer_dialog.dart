import 'package:flutter/material.dart';
import 'package:winteam_admin/constants/colors.dart';
import 'package:winteam_admin/constants/language.dart';
import 'package:winteam_admin/utils/size_utils.dart';
import 'package:winteam_admin/utils/style_utils.dart';
import 'package:winteam_admin/widgets/action_button.dart';
import 'package:winteam_admin/widgets/dialog_card.dart';

class DeleteEmployerDialog extends StatelessWidget {

  final onConfirm;
  final onCancel;

  DeleteEmployerDialog({required this.onConfirm, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: getPadding(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              child: DialogCard(
                cardTitle: 'Attenzione',
                child: Text(
                    'I dati relativi a questo profilo andranno definitivamente persi. Sei sicuro di volerlo eliminare?',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: black,
                    )),
              ),
            ),


            Padding(
              padding: getPadding(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: getPadding(right: 3),
                    child: ActionButtonV2(
                      action: onConfirm,
                      text: getCurrentLanguageValue(CANCEL)!,
                      color: white,
                      textColor: background,
                      maxWidth: 205,

                    ),
                  ),
                  Padding(
                    padding: getPadding(left: 3),
                    child: ActionButtonV2(
                      action: onConfirm,
                      text: getCurrentLanguageValue(CONFIRM)!,
                      color: background,
                      maxWidth: 205,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
