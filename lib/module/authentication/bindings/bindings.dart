import 'package:get/get.dart';
 
import '../controllers/login_ctrl.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() { 
    Get.put(LoginController());
  }
}
