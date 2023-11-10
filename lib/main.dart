import 'package:chpms_v2_1/authentication/bindings/bindings.dart';
import 'package:chpms_v2_1/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();

  WidgetsFlutterBinding.ensureInitialized;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: LoginBinding(),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      // home: LoginScreen(),
    );
  }
}
