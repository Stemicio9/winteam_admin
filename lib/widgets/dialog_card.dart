import 'package:flutter/material.dart';
import 'package:winteam_admin/constants/colors.dart';
import 'package:winteam_admin/utils/size_utils.dart';
import 'package:winteam_admin/utils/style_utils.dart';

class DialogCard extends StatelessWidget {
  final String cardTitle;
  final child;

  DialogCard({required this.cardTitle, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,
        child: Column(
            children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: getPadding(top: 15, bottom: 15),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: background),
            child: Text(
              cardTitle,
              textAlign: TextAlign.center,
              style: SafeGoogleFont(
                'Montserrat',
                fontSize:22,
                fontWeight: FontWeight.w600,
                color: white

              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: getPadding(top: 35, bottom: 35, left: 20, right: 20),
            child: child,
          )
        ]));
  }
}
