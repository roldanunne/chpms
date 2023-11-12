import 'package:chpms/module_admin/dashboard/views/dashboard.dart';
import 'package:chpms/module_admin/defaults/views/splash.dart';
import 'package:chpms/module_admin/user/views/user.dart';
import 'package:get/get.dart';

import '../module_admin/authentication/bindings/bindings.dart';
import '../module_admin/authentication/views/login.dart';
import '../module_admin/dashboard/bindings/bindings.dart';
import '../module_admin/room/bindings/bindings.dart';
import '../module_admin/room/views/room.dart';
import '../module_admin/user/bindings/bindings.dart';
import '../module_client/frontdesk/bindings/bindings.dart';
import '../module_client/frontdesk/views/frontdesk.dart';
import '../module_client/maintenance/bindings/bindings.dart';
import '../module_client/maintenance/views/maintenance.dart';
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
    GetPage(
      name: Routes.ROOM,
      page: () => const RoomPage(),
      binding: RoomBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.USER,
      page: () => const UserPage(),
      binding: UserBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
