import 'dart:convert';
import 'dart:developer';

import 'package:chpms/global/gbl_fn.dart';
import 'package:chpms/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:dio/dio.dart' as dio;

import '../../../global/api_service.dart';

class UserController extends GetxController {
  final storage = GetStorage();

  ApiService apiService = Get.find();

  late BuildContext context;
  var isLoading = false.obs;
  var isObscure = true.obs;

  var selectedNavIndex = 0.obs;

  var userNameCtrl = TextEditingController();
  var passwordCtrl = TextEditingController();

  var roleController = 'admin'.obs;

  var formKey = GlobalKey<FormState>();

  @override
  Future<void> onInit() async {
    super.onInit();
    debugPrint("==> LoginController");
    loadInitialized();
  }

  loadInitialized() async {}

  openDialog() async {
    return await Get.defaultDialog(
        radius: 10,
        title: 'Create New User',
        titlePadding: EdgeInsets.all(0),
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        barrierDismissible: false,
    //     content: 
    // showDialog(
    //   context: context,
    //   builder: (context) => AlertDialog(
    //     title: const Text('Create New User'),
        content: Obx(() =>  SizedBox(
          width: 500,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: 150,
                  child: Image.asset('images/PhilCST.png'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    // get user name
                    TextFormField(
                      controller: userNameCtrl,
                      validator: (val) => val == "" ? "Field Required" : null,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person, color: Colors.black),
                        hintText: 'name...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white54,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white54,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white54,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 6,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
        
                    const SizedBox(
                      height: 17,
                    ),
        
                    // get password
        
                    TextFormField(
                      controller: passwordCtrl,
                      obscureText: isObscure.value,
                      validator: (val) => val == ""
                          ? "please provide a password"
                          : val!.length < 8
                              ? "use at least 8 characters for your password"
                              : null,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.vpn_key, color: Colors.black),
                        hintText: 'password...',
                        suffixIcon: Obx(
                          () => GestureDetector(
                            onTap: () {
                              isObscure.value = !isObscure.value;
                            },
                            child: Icon(
                              isObscure.value == true
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white54,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white54,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white54,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 6,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ), 
        
                    // ------- SELECT ROLES ------- //
                    DropdownButton<String>(
                      hint: const Text('Select Role'),
                      value: roleController.value,
                      icon: const Icon(Icons.arrow_drop_down),
                      onChanged: (String? newRole) {
                        roleController.value = newRole!;
                      },
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'admin',
                          child: Text('Admin'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'front',
                          child: Text('Front Desk'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'maintenance',
                          child: Text('Housekeeping & Maintennance'),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
        actions: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      createUser();
                    }
                  },
                  child: const Text('Create User'),
                ),
                const SizedBox(
                  width: 40,
                ),
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ),
        ],
    );
  }


  // Create User Page
  createUser() async { 
    // log(userNameCtrl.text);
    // log(passwordCtrl.text);
    // log(roleController.value);
    try {
      isLoading.value = true;
      var data = dio.FormData.fromMap({
        'trans' : 'NEW',
        'user_name' : userNameCtrl.text,
        'user_password' : passwordCtrl.text,
        'user_role' : roleController.value
      });
      var res = await apiService.postData('/user.php', data);
      log(res.data.toString());
      if (res.statusCode == 200) {   
        var dataObj = jsonDecode(res.data.toString());
        if (dataObj['data'] == 'exist') {
          GblFn.showSnackbar("User", "Username is already exist.", 'error');
        } else if (dataObj['data'] == 'success') {
          Get.back();
          GblFn.showSnackbar("User", "New user created successfuly.", 'success');
        } else {
          GblFn.showSnackbar("User", "Error encountered, please try again!", 'error');
        } 
      }
    } catch (e) {
      log(e.toString());
    } finally {
      isLoading.value = false;
    }
  }


}