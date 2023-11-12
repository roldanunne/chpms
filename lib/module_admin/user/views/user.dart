import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../controllers/user_ctrl.dart';



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
      body: Container(
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         ctrl. openDialog();
        },
        tooltip: 'Create User',
        child: const Icon(Icons.add),
      ),
    ); 
 
  }
 
}
