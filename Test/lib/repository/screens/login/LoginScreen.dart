import 'package:flutter/material.dart';
import 'package:testttt/domain/Constants/AppColors.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assests/images/onboarding.png"),
          SizedBox(height: 10),
          Image.asset("assests/images/logo.png"),
          SizedBox(height: 10),
          Text("India's last minute app"),
          SizedBox(height: 10),
          Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white,
              ),
              child: Column(
                children: [
                  Text("Sujal", style: TextStyle(fontSize: 12,color: AppColors.black, fontFamily: "PoppinBold")),
                  SizedBox(height: 10),
                  Text("78277XXXX", style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: AppColors.grey)),
                  SizedBox(height: 16),
                  Container(
                    color: Colors.red,
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        Text("Login with", style: TextStyle(fontSize: 14, color: AppColors.white)),
                        SizedBox(width: 8),
                        Image.asset("assests/images/logo.png")
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );

  }
}


