import 'package:flutter/material.dart';
import 'package:flutter_ui_2/Posts.dart';
import 'package:flutter_ui_2/Profile.dart';
import 'package:flutter_ui_2/appBar.dart';

void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0x34ffffff),
          body: Container(
            child: ListView(
              children: [
                Stack(
                  children: [
                    Posts(),
                    Profile(), // Profile
                  MyAppBar() // AppBar
             ],
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}


