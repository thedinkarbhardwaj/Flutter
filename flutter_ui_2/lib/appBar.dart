import 'package:flutter/material.dart';
import 'package:flutter_ui_2/myStyle.dart';

class MyAppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      height: 100,
      decoration: const BoxDecoration(
          color: Color(0xffD3E3FD),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Profile",style: titleText),
          Icon(Icons.search,size: 30.0,)
        ],
      ),
    );
  }
}
