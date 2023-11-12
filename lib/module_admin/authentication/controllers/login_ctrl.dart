import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:dio/dio.dart' as dio;

import '../../../global/api_service.dart';
import '../../../global/gbl_fn.dart';
import '../../../routes/app_routes.dart';

class LoginController extends GetxController {
  final storage = GetStorage();

  ApiService apiService = Get.find();

  var isLoading = false.obs;
  var isObscure = true.obs;

  var userNameController = TextEditingController();
  var passWordController = TextEditingController();

  @override
  Future<void> onInit() async {
    super.onInit();
    debugPrint("==> LoginController");
    loadInitialized();
  }

  loadInitialized() async {}

  // Login Page
  submitLogin() async {
    var response = 'error';
    try {
      isLoading.value = true;
      var data = dio.FormData.fromMap({
        'trans' : 'LOGIN',
        'user_name' : userNameController.text,
        'user_password' : passWordController.text
      });
      var res = await apiService.postData('/login.php', data);
      if (res.statusCode == 200) {
        var dataObj = jsonDecode(res.data.toString());
        if (dataObj['success'] == true) {
          response = 'success';
          log('login successful');
          storage.write('userdata', dataObj['data']);
        } 
      }
    } catch (e) {
      log(e.toString());
    } finally {
      isLoading.value = false;
      if(response=='error'){
          GblFn.showSnackbar(
              "Login failed", "Your username or password is incorrect.", 'error');
      } else {
        GblFn.showSnackbar(
            "Login Success", "Welcome.", 'success');
        Get.toNamed(Routes.DASHBOARD);

      }
    }
  }
}
