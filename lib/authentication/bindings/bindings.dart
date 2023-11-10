import 'package:chpms_v2_1/api_connection/api_service.dart';
import 'package:get/get.dart';
import 'package:chpms_v2_1/authentication/controllers/login_ctrl.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiService());
    Get.put(LoginController());
  }
}
