import 'package:blinkit/domain/constants/appcolors.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Cartscreen extends StatelessWidget {
  const Cartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 160,
              color: AppColor.yellow,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      UiHelper.CustomText(
                          text: "Blinkit in",
                          color: AppColor.black,
                          fontweight: FontWeight.bold,
                          fontsize: 14
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Align the text at the start
                    children: [
                      SizedBox(width: 10),
                      UiHelper.CustomText(
                        text: "16 minutes",
                        color: AppColor.black,
                        fontweight: FontWeight.bold,
                        fontsize: 20,
                      ),
                      Spacer(), // Add space between text and CircleAvatar
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey, // Customize color
                        child: Icon(Icons.person, color: Colors.white), // Person icon
                      ),
                      SizedBox(width: 8)
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      UiHelper.CustomText(
                          text: "Home - ",
                          color: AppColor.black,
                          fontweight: FontWeight.bold,
                          fontsize: 14
                      ),
                      UiHelper.CustomText(
                          text: "Sujal Dave, Ratanada, Jodhpur (Raj)",
                          color: AppColor.black,
                          fontweight: FontWeight.w500,
                          fontsize: 14
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.keyboard_arrow_down_sharp, size: 20)
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.mic),
                        hintText: "Search “ice-cream”",
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColor.black,
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: AppColor.red,
                                width: 2
                            )
                        ),
                      ),
                    ),
                  ),
                  // Button to print the controller's value

                ],
              ),
            ),
            SizedBox(height: 10),
            Text("data")
          ],
        ),
      ),
    );
  }
}
