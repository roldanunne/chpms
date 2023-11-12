import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:dio/dio.dart' as dio;

import '../../../global/api_service.dart';
import '../../../global/gbl_fn.dart';
import '../../../routes/app_routes.dart';

class FrontDeskController extends GetxController {
  final storage = GetStorage();

  ApiService apiService = Get.find();

  var isLoading = false.obs;
  var isObscure = true.obs;
 

  @override
  Future<void> onInit() async {
    super.onInit();
    debugPrint("==> LoginController");
    loadInitialized();
  }

  loadInitialized() async {}

}
