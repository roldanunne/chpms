import 'package:get/get.dart';
 
import '../controllers/frontdesk_ctrl.dart';

class FrontDeskBinding extends Bindings {
  @override
  void dependencies() { 
    Get.put(FrontDeskController());
  }
}
