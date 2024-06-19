import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices{

   String baseUrl = "https://fakestoreapi.com";

   Future<dynamic> userLogin(String username,String pass) async{

     var response = await http.post(Uri.parse("$baseUrl/auth/login"),
     body: {
         "username": username,
         "password": pass
         });
     
     if(response.statusCode == 200){
       
       return jsonDecode(response.body);
     }else{
       return throw Exception("Login Error");
     }

   }

}