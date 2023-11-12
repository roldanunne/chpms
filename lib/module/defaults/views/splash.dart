import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    void navigatePage() async {
        Get.offNamed(Routes.LOGIN);
    }
    
    startTime() async {
      var duration = const Duration(milliseconds: 3500);
      return Timer(duration, navigatePage);
    }

    startTime();

    return Scaffold(
      backgroundColor:  Colors.lightBlue[100],
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
              SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('images/hpms.png'),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(18),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(40),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.black26,
                        offset: Offset(0, -3),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      'Hotel Property Management System',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ),
              ),

          ],
        ),
             
      ),
    );
  }

}
