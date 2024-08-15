import 'package:doctor_app/src/ui/view/splash.dart';
import 'package:doctor_app/src/utils/routes/routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static const String INITIAL = Routes.splashScreen;
  static final List<GetPage<dynamic>> routes = [
    GetPage(name: Routes.splashScreen, page: () => Splash())
  ];
}
