import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedpref{

 setUserToken(String token) async{

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("Token", token);

 }

 Future<String> getUserToken() async{

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  String userToken = prefs.getString("Token")??"";
  return userToken;
 }

 removeUserToken() async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove("Token");
 }

}