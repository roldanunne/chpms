import 'package:get/get.dart';

import '../controllers/home_ctrl.dart';

  
class HomeBinding extends Bindings {
  @override
  void dependencies() { 
    Get.put(HomeController());
  }
}
