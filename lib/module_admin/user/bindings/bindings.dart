import 'package:get/get.dart';

import '../controllers/user_ctrl.dart';

  
class UserBinding extends Bindings {
  @override
  void dependencies() { 
    Get.put(UserController());
  }
}
