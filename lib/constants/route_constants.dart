
import 'package:winteam_admin/pages/forgot_password/forgot_password.dart';
import 'package:winteam_admin/pages/internal_page/ads_manage.dart';
import 'package:winteam_admin/pages/internal_page/dashboard.dart';
import 'package:winteam_admin/pages/internal_page/employers_manage.dart';
import 'package:winteam_admin/pages/internal_page/payment_manage.dart';
import 'package:winteam_admin/pages/internal_page/settings.dart';
import 'package:winteam_admin/pages/internal_page/skills_manage.dart';
import 'package:winteam_admin/pages/internal_page/worker_manage.dart';
import 'package:winteam_admin/pages/login/login.dart';


class RouteConstants {
  static const String dashboard = "/dashboard";
  static const String workerManage = "/workermanage";
  static const String employersManage = "/employersmanage";
  static const String paymentManage = "/paymentMmnage";
  static const String adsManage = "/adsmanage";
  static const String skillsManage = "/skillsmanage";
  static const String login = "/login";
  static const String settings = "/settings";
  static const String passDimenticata = "/passworddimenticata";


  static dynamic route(context) => {
    '/': (context) =>  LoginPageV2(),
    login: (context) => LoginPageV2(),
    dashboard: (context) => Dashboard(),
    workerManage: (context) => WorkerManage(),
    paymentManage: (context) => PaymentManage(),
    adsManage: (context) => AdsManage(),
    skillsManage: (context) => SkillsManage(),
    employersManage: (context) => EmployersManage(),
    settings: (context) => Settings(),
    passDimenticata: (context) => ForgotPassword(),

  };
}