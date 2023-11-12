import 'package:get/get.dart';

import '../controllers/room_ctrl.dart';

  
class RoomBinding extends Bindings {
  @override
  void dependencies() { 
    Get.put(RoomController());
  }
}
