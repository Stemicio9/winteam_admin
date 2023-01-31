import 'package:flutter/material.dart';
import 'package:winteam_admin/pages/background/background.dart';
import 'package:winteam_admin/pages/login/login_form.dart';
import 'package:winteam_admin/pages/w1n_scaffold.dart';


class LoginPageV2 extends StatefulWidget {
  const LoginPageV2({Key? key}) : super(key: key);

  @override
  State<LoginPageV2> createState() => _LoginPageV2State();
}

class _LoginPageV2State extends State<LoginPageV2> {

  final double cardWidth = 400;
  final double cardHeight = 700;

  @override
  Widget build(BuildContext context) {
    return W1NScaffoldWithBackground(
        body: Center(
          child: SizedBox(
            width: cardWidth,
            height: cardHeight,
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                margin: const EdgeInsets.all(20),
                child: Stack(
                  children: [
                    const BackgroundV2(),
                    LoginFormV2(),
                  ],
                )
            ),
          ),
        )
    );
  }
}
