import 'package:cocktailapp/Homepage.dart';
import 'package:cocktailapp/Listview.dart';
import 'package:cocktailapp/apihit.dart';
import 'package:cocktailapp/navigationdrawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(

    initialRoute: 'navigationdrawer',
    routes: {
      'homepage': (context) => Homepage(),
      'listview': (context) => Listview(),
      'apihit': (context) => Apihit(),
      'navigationdrawer': (context) => NavigationDrawer()

    },
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: Homepage(),
    );
  }
}

