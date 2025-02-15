import 'package:flutter/material.dart';

import 'CommonDesign/CommonDesign.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const LoginScreen());
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            /// Wrapping content in Expanded allows it to take available space
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assests/images/welcome.png', width: 200, height: 300),

                    titleTxt("Discover Your \n Dream Job here", true),
                    SizedBox(height: 20),
                    descTxt("Explore all the existing job roles based on your interest and study major"),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),

            /// Buttons placed at the bottom
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: commonBtn("Login", onPressedd: () {
                    Fluttertoast.showToast(msg: "Login act");
                  })),
                  SizedBox(width: 20),
                  Expanded(child: commonBtn("Signup", onPressedd: () {
                    Fluttertoast.showToast(msg: "Signup act");

                  })),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


