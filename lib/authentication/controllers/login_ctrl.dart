import 'dart:convert';
import 'dart:developer';

import 'package:chpms_v2_1/api_connection/api_service.dart';
import 'package:chpms_v2_1/api_connection/gbl_fn.dart';
import 'package:chpms_v2_1/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final storage = GetStorage();

  ApiService apiService = Get.find();

  var isLoading = false.obs;
  var isObscure = true.obs;

  final formKey = GlobalKey<FormState>();
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
    try {
      isLoading.value = true;
      var data = {
        'user_name': userNameController.text,
        'user_password': passWordController.text
      };

      var res = await apiService.postData('/auth/login.php', data);
      if (res.statusCode == 200) {
        var dataObj = jsonDecode(res.data.toString());
        if (dataObj['success'] == true) {
          log('login successful');
          storage.write('userdata', res.data.toString());
          Get.offNamed(Routes.DASHBOARD);
        } else {
          GblFn.showSnackbar(
              "Login failed", "Your email or password is incorrect.", 'error');
        }
      } else {
        GblFn.showSnackbar(
            "Login failed", "Your email or password is incorrect.", 'error');
      }
    } catch (e) {
      GblFn.showSnackbar("Login failed",
          "Your request cannot be process, please try again.", 'error');
    } finally {
      isLoading.value = false;
    }
  }
}
