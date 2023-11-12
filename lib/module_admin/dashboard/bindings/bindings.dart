import 'package:chpms/module_admin/dashboard/controllers/dashboard_ctrl.dart';
import 'package:get/get.dart';
  
class DashboardBinding extends Bindings {
  @override
  void dependencies() { 
    Get.put(DashboardController());
  }
}
