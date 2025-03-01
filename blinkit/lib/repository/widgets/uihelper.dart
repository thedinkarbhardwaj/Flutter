import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText(
      {required String text,
      required Color color,
      required FontWeight fontweight,
      String? fontFamily,
      required double fontsize}) {
    return Text(
      text = text,
      style: TextStyle(
          fontSize: fontsize,
          fontFamily: fontFamily ?? "regular",
          fontWeight: fontweight,
          color: color),
    );
  }
}
