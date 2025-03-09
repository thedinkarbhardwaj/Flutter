import 'package:blinkit/domain/constants/appcolors.dart';
import 'package:blinkit/repository/screens/bottomnav/BottomNavScreen.dart';
import 'package:blinkit/repository/screens/home/HomeScreen.dart';
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
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 200,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: AppColor.white,
                   ),
                   child: Column(
                     children: [
                       UiHelper.CustomText(text: "Sujal", color: AppColor.black, fontweight: FontWeight.w400, fontsize: 15),
                       SizedBox(height: 10),
                       UiHelper.CustomText(text: "78277XXXX", color: AppColor.black, fontweight: FontWeight.w400, fontsize: 14),
                       SizedBox(height: 10),

                       SizedBox(height: 40, width:295,
                       child: ElevatedButton(
                         onPressed: (){
                           
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottomnavscreen()));
                         },
                         style: ElevatedButton.styleFrom(
                           backgroundColor: AppColor.red
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             UiHelper.CustomText(text: "Login with", color: AppColor.white, fontweight: FontWeight.w400, fontsize: 14),
                             SizedBox(width: 8),
                             UiHelper.CustomImage(img: "zomato.png"),

                           ],
                         ),

                       )),
                       SizedBox(height: 5),
                       UiHelper.CustomText(text: "Access your saved addresses from Zomato automatically!", color: AppColor.grey, fontweight: FontWeight.w400, fontsize: 12),
                       SizedBox(height: 5),
                       UiHelper.CustomText(text: "or login with phone number", color: AppColor.green, fontweight: FontWeight.w400, fontsize: 13),

                     ],
                   ),
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
