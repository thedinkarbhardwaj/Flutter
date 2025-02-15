
import 'dart:ffi';

import 'package:flutter/material.dart';

import '../Utils/colors.dart';


 Text titleTxt(String title, bool center){
   return Text(title, style: TextStyle(fontSize: 24, fontFamily: 'PlayWrite', color: primaryColor,height: 2.0),
       textAlign: center ? TextAlign.center : TextAlign.start);
 }

 Text descTxt(String desc){
   return Text(desc,style: TextStyle(fontSize: 14, color: Colors.black,height: 1.2), textAlign: TextAlign.center,);
 }

ElevatedButton commonBtn(String title,{VoidCallback? onPressedd}) {
  return ElevatedButton(
    onPressed: onPressedd,
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(int.parse("0xFF1F41BB")), // Set custom hex color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      shadowColor: Colors.red,
      side: BorderSide(
        color: Colors.black12,
        width: 2,
      )
    ),
    child: Text(
      title,
      style: TextStyle(
        color: Colors.white, // Set text color
        fontSize: 16,
      ),
    ),
  );
}


TextField txtField(String hinttxt){
   return TextField(
     decoration: InputDecoration(
       hintText: hinttxt,
       focusedBorder: OutlineInputBorder(
         borderRadius: BorderRadius.circular(12),
         borderSide: BorderSide(
           color: primaryColor,
           width: 2,
         )
       ),
       border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(12),
           borderSide: BorderSide(
             color: Colors.black,
             width: 2,
           )

       ),
     ),
   );
}

