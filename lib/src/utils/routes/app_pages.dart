// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:doctor_app/src/ui/view/authentications/forget.dart';
import 'package:doctor_app/src/ui/view/authentications/newPassword.dart';
import 'package:doctor_app/src/ui/view/authentications/signIn.dart';
import 'package:doctor_app/src/ui/view/authentications/verificationCode.dart';
import 'package:doctor_app/src/ui/view/splash.dart';
import 'package:doctor_app/src/utils/routes/routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static const String INITIAL = Routes.splashScreen;
  static final List<GetPage<dynamic>> routes = [
    GetPage(name: Routes.splashScreen, page: () => Splash()),
    GetPage(name: Routes.signIn, page: () => const SignInScreen()),
    GetPage(name: Routes.forget, page: () => const ForgetScreen()),
    GetPage(name: Routes.code, page: () =>  VerificationCode()),
    GetPage(name: Routes.newPassword, page: () =>  NewPassword()),

  ];
}
