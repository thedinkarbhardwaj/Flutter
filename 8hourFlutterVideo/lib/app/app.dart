
import 'package:flutter/material.dart';
import 'package:flutter_video/views/home_views.dart';


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      home: homeView()
    );

  }

}
