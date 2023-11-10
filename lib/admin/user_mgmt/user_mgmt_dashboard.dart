import 'dart:convert';
import 'package:chpms_v2_1/api_connection/api_conn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserManage extends StatefulWidget {
  const UserManage({super.key});

  @override
  State<UserManage> createState() => _UserManageState();
}

class _UserManageState extends State<UserManage> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  String roleController = 'admin';
  var isObsecure = true.obs;

  @override
  Widget build(BuildContext context) {
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
          openDialog();
        },
        tooltip: 'Create User',
        child: const Icon(Icons.add),
      ),
    );
  }

// -------------- VALIDATE USERNAME --------------- //

  validateUserName() async {
    try {
      var res = await http.post(
        Uri.parse(API.userNameValidate),
        body: {
          'user_name': nameController.text.trim(),
        },
      );
      if (res.statusCode == 200) {
        var resBodyOfValidateUserName = jsonDecode(res.body);
        if (resBodyOfValidateUserName['nameFound'] == true) {
          // ignore: use_build_context_synchronously
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Username Already in Use'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('close'),
                ),
              ],
            ),
          );
        } else {
          createNewUser();
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }

// ----------------- CREATE NEW USER ------------ //

  createNewUser() async {
    try {} catch (e) {
      print(e.toString());
    }
  }

// -------------- OPEN DIALOG ---------------- //

  openDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Create New User'),
        content: Column(
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
                    controller: nameController,
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

                  Obx(
                    () => TextFormField(
                      controller: passwordController,
                      obscureText: isObsecure.value,
                      validator: (val) => val == ""
                          ? "please provide a password"
                          : val!.length < 8
                              ? "use at least 8 characters for your password"
                              : null,
                      decoration: InputDecoration(
                        prefixIcon:
                            const Icon(Icons.vpn_key, color: Colors.black),
                        hintText: 'password...',
                        suffixIcon: Obx(
                          () => GestureDetector(
                            onTap: () {
                              isObsecure.value = !isObsecure.value;
                            },
                            child: Icon(
                              isObsecure.value == true
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
                  ),

// ------- SELECT ROLES ------- //
                  DropdownButton<String>(
                    hint: const Text('Select Role'),
                    value: roleController,
                    icon: const Icon(Icons.arrow_drop_down),
                    onChanged: (String? newRole) {
                      setState(
                        () {
                          roleController = newRole!;
                        },
                      );
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
            ),
          ],
        ),
        actions: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      validateUserName();
                    }
                  },
                  child: const Text('Create User'),
                ),
                const SizedBox(
                  width: 40,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
