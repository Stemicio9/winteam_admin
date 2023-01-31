import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:winteam_admin/blocs/user_bloc/current_user_cubit.dart';
import 'package:winteam_admin/constants/colors.dart';
import 'package:winteam_admin/constants/route_constants.dart';
import 'package:winteam_admin/pages/internal_page/ads_manage.dart';
import 'package:winteam_admin/pages/internal_page/employers_manage.dart';
import 'package:winteam_admin/pages/internal_page/payment_manage.dart';
import 'package:winteam_admin/pages/internal_page/settings.dart';
import 'package:winteam_admin/pages/internal_page/skills_manage.dart';
import 'package:winteam_admin/pages/internal_page/worker_manage.dart';
import 'package:winteam_admin/pages/w1n_scaffold.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardState();
  }
}

class DashboardState extends State<Dashboard> {
  String title = "";
  int currentPage = 1;
  final UserCubit? userCubit;


  DashboardState({this.userCubit});


  List<CollapsibleItem> get _items {
    return [
      CollapsibleItem(
        text: 'Datori di lavoro',
        icon: Icons.person_rounded,
        onPressed: () => setState(() {
          title = 'Datori di lavoro';
          currentPage = 1;
        }),
        isSelected: currentPage == 1,
      ),
      CollapsibleItem(
        text: 'Lavoratori',
        icon: Icons.groups_rounded,
        onPressed: () => setState(() {
          title = 'Lavoratori';
          currentPage = 2;
        }),
        isSelected: currentPage == 2,
      ),
      CollapsibleItem(
        text: 'Gestione pagamenti',
        icon: Icons.credit_card_rounded,
        onPressed: () => setState(() {
          title = 'Gestione pagamenti';
          currentPage = 3;
        }),
        isSelected: currentPage == 3,
      ),
      CollapsibleItem(
        text: 'Gestione annunci',
        icon: Icons.newspaper_rounded,
        onPressed: () => setState(() {
          title = 'Gestione annunci';
          currentPage = 4;
        }),
        isSelected: currentPage == 4,
      ),
      CollapsibleItem(
        text: 'Gestione mansioni',
        icon: Icons.work_rounded,
        onPressed: () => setState(() {
          title = 'Gestione mansioni';
          currentPage = 5;
        }),
        isSelected: currentPage == 5,
      ),
      CollapsibleItem(
        text: 'Impostazioni',
        icon: Icons.settings,
        onPressed: () => setState(() {
          title = 'Impostazioni';
          currentPage = 6;
        }),
        isSelected: currentPage == 6,
      ),

      CollapsibleItem(
        text: 'Logout',
        icon: Icons.logout_rounded,
        onPressed: () {
          logoutFromAll();
          Navigator.pushReplacementNamed(context, RouteConstants.login);
        },
        isSelected: currentPage == 7,
      ),

    ];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return W1NScaffold(
      body: CollapsibleSidebar(
        iconSize: 35,
        selectedIconColor: white,
        selectedIconBox: whiteOpacity,
        textStyle: TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
        sidebarBoxShadow: [],
        titleStyle: TextStyle(fontSize: 14, fontFamily: 'Montserrat',fontWeight: FontWeight.bold),
        backgroundColor: background,
        //isCollapsed: MediaQuery.of(context).size.width <= 800,
        isCollapsed: true,
        items: _items,
        avatarImg: AssetImage("assets/images/profiledefault.jpeg"),
        title: 'AMMINISTRAZIONE',
        body: _body(size, context),
      ),
    );
  }

  Widget _body(Size size, BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blueGrey[50],
      child: bodyChild(),
    );
  }

  Widget bodyChild() {
    switch (currentPage) {
      case 1:
        return EmployersManage();
      case 2:
        return WorkerManage();
      case 3:
        return PaymentManage();
      case 4:
        return AdsManage();
      case 5:
        return SkillsManage();
      case 6:
        return Settings();
      default:
        return Container();
    }
  }

  void logoutFromAll() {
    FirebaseAuth.instance.signOut();
    userCubit?.logout();

  }
}


