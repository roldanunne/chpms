import 'package:chpms/module/dashboard/views/dashboard.dart';
import 'package:chpms/module/defaults/views/splash.dart';
import 'package:get/get.dart';

import '../module/authentication/bindings/bindings.dart';
import '../module/authentication/views/login.dart';
import '../module/dashboard/bindings/bindings.dart';
import '../module/frontdesk/bindings/bindings.dart';
import '../module/frontdesk/views/frontdesk.dart';
import '../module/maintenance/bindings/bindings.dart';
import '../module/maintenance/views/maintenance.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.DASHBOARD,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const LoginPage(),
      binding: LoginBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.FRONTDESK,
      page: () => const FrontDeskPage(),
      binding: FrontDeskBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.MAINTENANCE,
      page: () => const MaintenancePage(),
      binding: MaintenanceBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
