import 'package:blinkit/domain/constants/appcolors.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
     body: SingleChildScrollView(
       child: Center(
         child: Column(
           children: [
             UiHelper.CustomImage(img: "onboarding.png"),
             SizedBox(height: 10),
             UiHelper.CustomImage(img: "logo.png"),
             SizedBox(height: 10),
             UiHelper.CustomText(text: "India’s last minute app", color: AppColor.black, fontweight: FontWeight.bold, fontsize: 20),
             SizedBox(height: 20),
             Card(
               elevation: 4,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10),
               ),
               child: Container(
                 height: 200,
                 width: 150,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: AppColor.white,
                 ),
               ),
             )
           ],
         ),
       ),
     ),
    );
  }
}
