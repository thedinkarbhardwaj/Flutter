import 'package:e_commerce/signupLoginScreens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../SharedPref/Sharedpref.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        backgroundColor: Colors.blue,
      actions: [
        IconButton(onPressed: (){
          Sharedpref().removeUserToken();
          Get.offAll(const LoginScreen());
        }, icon: const Icon(Icons.power_settings_new_rounded))
      ],),

    );
  }
}
