import 'package:chpms_v2_1/authentication/controllers/login_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController loginCtrl = Get.find();

    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: SizedBox(height: 18),
      // body: Obx(() => LoadingOverlay(
      //       isLoading: loginCtrl.isLoading.value,
      //       opacity: 0.5,
      //       progressIndicator: const CircularProgressIndicator(),
      //       child:
// LayoutBuilder(
//                 builder: (context, cons) {
//                   return ConstrainedBox(
//                     constraints: BoxConstraints(
//                       minHeight: cons.maxHeight,
//                       minWidth: cons.maxWidth,
//                     ),
//                     child: SingleChildScrollView(
//                       child: Form(
//                         // key: loginCtrl.formKey,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             SizedBox(
//                               height: 300,
//                               width: MediaQuery.of(context).size.width,
//                               child: Center(
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(30),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(20.0),
//                                     child: Image.asset('images/hpms.png'),
//                                   ),
//                                 ),
//                               ),
//                             ),

//                             Padding(
//                               padding: const EdgeInsets.all(18),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   color: Colors.indigo[900],
//                                   borderRadius: const BorderRadius.all(
//                                     Radius.circular(40),
//                                   ),
//                                   boxShadow: const [
//                                     BoxShadow(
//                                       blurRadius: 8,
//                                       color: Colors.black26,
//                                       offset: Offset(0, -3),
//                                     ),
//                                   ],
//                                 ),
//                                 child: const Padding(
//                                   padding: EdgeInsets.all(18.0),
//                                   child: Text(
//                                     'Hotel Property Management System',
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 30,
//                                       fontWeight: FontWeight.bold,
//                                       fontFamily: "Poppins",
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),

//                             // login form
//                             Padding(
//                               padding: const EdgeInsets.all(18),
//                               child: Container(
//                                 width: 400,
//                                 decoration: const BoxDecoration(
//                                   color: Colors.white24,
//                                   borderRadius: BorderRadius.all(
//                                     Radius.circular(40),
//                                   ),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       blurRadius: 8,
//                                       color: Colors.black26,
//                                       offset: Offset(0, -3),
//                                     ),
//                                   ],
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(18),
//                                   child: Column(
//                                     children: [
//                                       Column(
//                                         children: [
//                                           // get username
//                                           TextFormField(
//                                             controller:
//                                                 loginCtrl.userNameController,
//                                             validator: (val) => val == ""
//                                                 ? "please Enter a valid username"
//                                                 : null,
//                                             decoration: InputDecoration(
//                                               prefixIcon: const Icon(
//                                                   Icons.person,
//                                                   color: Colors.black),
//                                               hintText: 'username...',
//                                               border: OutlineInputBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(30),
//                                                 borderSide: const BorderSide(
//                                                   color: Colors.white54,
//                                                 ),
//                                               ),
//                                               enabledBorder: OutlineInputBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(30),
//                                                 borderSide: const BorderSide(
//                                                   color: Colors.white54,
//                                                 ),
//                                               ),
//                                               disabledBorder:
//                                                   OutlineInputBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(30),
//                                                 borderSide: const BorderSide(
//                                                   color: Colors.white54,
//                                                 ),
//                                               ),
//                                               contentPadding:
//                                                   const EdgeInsets.symmetric(
//                                                 horizontal: 14,
//                                                 vertical: 6,
//                                               ),
//                                               fillColor: Colors.white,
//                                               filled: true,
//                                             ),
//                                           ),

//                                           const SizedBox(
//                                             height: 18,
//                                           ),

//                                           TextFormField(
//                                             controller:
//                                                 loginCtrl.passWordController,
//                                             obscureText:
//                                                 loginCtrl.isObscure.value,
//                                             validator: (val) => val == ""
//                                                 ? "you have entered an incorrect password"
//                                                 : null,
//                                             decoration: InputDecoration(
//                                               prefixIcon: const Icon(
//                                                   Icons.vpn_key,
//                                                   color: Colors.black),
//                                               hintText: 'password...',
//                                               suffixIcon: Obx(
//                                                 () => GestureDetector(
//                                                   onTap: () {
//                                                     loginCtrl.isObscure.value =
//                                                         !loginCtrl
//                                                             .isObscure.value;
//                                                   },
//                                                   child: Icon(
//                                                     loginCtrl.isObscure.value ==
//                                                             true
//                                                         ? Icons.visibility_off
//                                                         : Icons.visibility,
//                                                     color: Colors.black,
//                                                   ),
//                                                 ),
//                                               ),
//                                               border: OutlineInputBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(30),
//                                                 borderSide: const BorderSide(
//                                                   color: Colors.white54,
//                                                 ),
//                                               ),
//                                               enabledBorder: OutlineInputBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(30),
//                                                 borderSide: const BorderSide(
//                                                   color: Colors.white54,
//                                                 ),
//                                               ),
//                                               disabledBorder:
//                                                   OutlineInputBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(30),
//                                                 borderSide: const BorderSide(
//                                                   color: Colors.white54,
//                                                 ),
//                                               ),
//                                               contentPadding:
//                                                   const EdgeInsets.symmetric(
//                                                 horizontal: 14,
//                                                 vertical: 6,
//                                               ),
//                                               fillColor: Colors.white,
//                                               filled: true,
//                                             ),
//                                           ),

//                                           const SizedBox(
//                                             height: 18,
//                                           ),
//                                           // login button

//                                           Material(
//                                             color: Colors.black,
//                                             borderRadius:
//                                                 BorderRadius.circular(30),
//                                             child: InkWell(
//                                               onTap: () {
//                                                 if (loginCtrl
//                                                     .formKey.currentState!
//                                                     .validate()) {
//                                                   loginCtrl.submitLogin();
//                                                 }
//                                               },
//                                               borderRadius:
//                                                   BorderRadius.circular(30),
//                                               child: const Padding(
//                                                 padding: EdgeInsets.symmetric(
//                                                   vertical: 10,
//                                                   horizontal: 28,
//                                                 ),
//                                                 child: Text(
//                                                   'Login',
//                                                   style: TextStyle(
//                                                     color: Colors.white,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ))
    );
  }
}
