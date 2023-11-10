import 'package:chpms_v2_1/authentication/bindings/bindings.dart';
import 'package:chpms_v2_1/authentication/views/login.dart';
import 'package:chpms_v2_1/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    // GetPage(
    //   name: Routes.SPLASH,
    //   page: () => const SplashScreen(),
    //   transition: Transition.fadeIn,
    // ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
