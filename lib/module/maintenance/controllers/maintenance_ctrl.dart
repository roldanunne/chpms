import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../global/api_service.dart';

class MaintenanceController extends GetxController {
  final storage = GetStorage();

  ApiService apiService = Get.find();

  var isLoading = false.obs;
  var isObscure = true.obs;

  var selectedNavIndex = 0.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    debugPrint("==> LoginController");
    loadInitialized();
  }

  loadInitialized() async {}

  // Login Page
  
}
