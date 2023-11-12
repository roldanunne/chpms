import 'package:chpms/module_admin/user/controllers/user_ctrl.dart';
import 'package:get/get.dart';

  
class UserBinding extends Bindings {
  @override
  void dependencies() { 
    Get.put(UserController());
  }
}
