import 'package:blinkit/repository/screens/cart/CartScreen.dart';
import 'package:blinkit/repository/screens/category/CategoryScreen.dart';
import 'package:blinkit/repository/screens/home/HomeScreen.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

import '../print/PrintScreen.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});

  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {

  int currentIndex = 0;
  List<Widget> pages = [
    Homescreen(),
    Cartscreen(),
    CategoryScreen(),
    Printscreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: "home.png"),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: "shopping.png"),
              label: "Cart"
          ),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: "category.png"),
              label: "Category"
          ),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: "printer.png"),
              label: "Printer"
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue, // Change the selected icon color
        unselectedItemColor: Colors.grey, // Change the unselected icon color
        iconSize: 30, // Adjust the icon size for better clarity
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
