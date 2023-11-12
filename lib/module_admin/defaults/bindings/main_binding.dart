import 'package:get/get.dart';

import '../../../global/api_service.dart';
import '../controller/main_ctrl.dart';

class MainBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ApiService());
    Get.put(MainController());
  }

}