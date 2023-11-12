import 'package:chpms/module_admin/user/controllers/user_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';



class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {

    UserController ctrl = Get.find();

    ctrl.context = context;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text('User Management'),
        ),
      ),
      body: Obx(() => LoadingOverlay(
        isLoading: ctrl.isLoading.value,
        opacity: 0.5,
        progressIndicator: const CircularProgressIndicator(),
        child: Container(
          color: Colors.lightBlue[100],
          alignment: Alignment.center,
          child: const Text(
            'User Management',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         ctrl.openDialog();
        },
        tooltip: 'Create User',
        child: const Icon(Icons.add),
      ),
    ); 
 
  }
 
}
