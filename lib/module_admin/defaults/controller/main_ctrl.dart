import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MainController extends GetxController {

  final storage = GetStorage();

  @override
  Future<void> onInit() async {
    super.onInit();
    loadInitialized();
  }

  loadInitialized() async {
  }

  

}
