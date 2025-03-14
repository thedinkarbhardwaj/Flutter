import 'dart:ui';

import 'package:flutter/material.dart';

const fo12 = 12.00;
const fo14 = 14.00;
const fo16 = 16.00;
const fo18 = 18.00;
const fo20 = 20.00;
const fo28 = 28.00;

const FontWeight fw400 = FontWeight.w400;
const FontWeight fw500 = FontWeight.w500;
const FontWeight fontBold = FontWeight.bold;

var enabledBorderr = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20.0),
    borderSide: BorderSide(color: Colors.black45,width: 1)
);

var focusBorderr = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20.0),
    borderSide: BorderSide(color: Colors.blue,width: 2)
);

var errorBorderr = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20.0),
    borderSide: BorderSide(color: Colors.red,width: 2)
);