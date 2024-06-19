import 'package:e_commerce/Constants/Constantss.dart';
import 'package:e_commerce/api_services/api_services.dart';
import 'package:e_commerce/screens/home_screen.dart';
import 'package:e_commerce/signupLoginScreens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../Constants/Colors.dart';
import '../SharedPref/Sharedpref.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    Future.delayed(const Duration(seconds: 3),(){
     Sharedpref().getUserToken().then((value){
        if(value == ""){
          Get.offAll(const LoginScreen());

        }else{
          Get.offAll(const HomeScreen());

        }

      });

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Center(
        child: Image.asset(splashScreenImg)
      ),
    );
  }
}
