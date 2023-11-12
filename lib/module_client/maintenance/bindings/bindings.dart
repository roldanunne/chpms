import 'package:get/get.dart';

import '../controllers/maintenance_ctrl.dart';
 

  
class MaintenanceBinding extends Bindings {
  @override
  void dependencies() { 
    Get.put(MaintenanceController());
  }
}
