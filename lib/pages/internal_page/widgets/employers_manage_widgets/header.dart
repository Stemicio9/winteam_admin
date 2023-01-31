import 'package:flutter/material.dart';
import 'package:winteam_admin/constants/colors.dart';
import 'package:winteam_admin/constants/images_constant.dart';
import 'package:winteam_admin/utils/size_utils.dart';
import 'package:winteam_admin/widgets/action_button.dart';
import 'package:winteam_admin/widgets/texts.dart';

class Header extends StatelessWidget {

  final onTap;
  final String pageTitle;
  final bool isVisible;

  Header({required this.onTap, required this.pageTitle, this.isVisible = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Texth1V2(
          testo: pageTitle,
          color: background,
          weight: FontWeight.w700,
        ),
        Visibility(
          visible: isVisible,
          child: Padding(
            padding: getPadding(top: 20),
            child: Row(
              children: [
                ActionButtonV2(
                  action:onTap,
                  text: 'Aggiungi utente',
                  color: background,
                  fontSize: 14,
                  containerHeight: 35,
                  isVisible: true,
                  svgPath: ImageConstant.imgPasswordUnsee,
                  iconHeight: 25,
                  iconWidth: 25,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
