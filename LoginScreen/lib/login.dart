import 'package:flutter/material.dart';
import 'package:login_screen/CommonDesign/CommonDesign.dart';
import 'package:login_screen/Utils/colors.dart';

void main(){
  runApp(LoginApp());
}

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            children: [
              titleTxt("Login here", true),
              SizedBox(height: 8),
              descTxt("Welcome back you’ve been missed!"),
              SizedBox(height: 50),
              txtField("Email"),
              SizedBox(height: 30),
              txtField("Password"),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerRight,
                child: Text("Forgot your password?",style: TextStyle(color: primaryColor,
                fontWeight: FontWeight.bold),
                textAlign: TextAlign.end,),
              ),
              SizedBox(height: 20),
              SizedBox(
                  width: double.infinity,
                  child: commonBtn("Sign in")),
              SizedBox(height: 30),
              descTxt("Create new account"),
              SizedBox(height: 30),
              Text("Or continue with",style: TextStyle(color: primaryColor),),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assests/images/google.png",  // Replace with your image path
                        fit: BoxFit.cover,             // Adjust as needed
                        width: 24,                    // Set width if required
                        height: 24, // Set height if required
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assests/images/fb.png",  // Replace with your image path
                        fit: BoxFit.cover,             // Adjust as needed
                        width: 24,                    // Set width if required
                        height: 24, // Set height if required
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assests/images/instagram.png",  // Replace with your image path
                        fit: BoxFit.cover,             // Adjust as needed
                        width: 24,                    // Set width if required
                        height: 24, // Set height if required
                      ),
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
