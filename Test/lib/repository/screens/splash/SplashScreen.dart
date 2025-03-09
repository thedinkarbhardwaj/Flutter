import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testttt/domain/Constants/AppColors.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    Timer(Duration(seconds: 3), (){
      
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Splashscreen()));
      
    });
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assests/images/splash.png")
        ],
      ),
    );

  }
}
