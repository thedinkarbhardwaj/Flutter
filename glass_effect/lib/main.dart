import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Glass Effect '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://t3.ftcdn.net/jpg/02/52/42/46/360_F_252424647_xCMdmXLeu0ve0HeoPwDbT7PQUOetqh9e.jpg")
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 160,
                height: 130,
                  child: Center(
                    child: Text(
                      "Only for \n premum users",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black,
                      fontSize: 20),
                    ),
                  ),
                ).asGlass(
                tintColor: Colors.black,
                clipBorderRadius: BorderRadius.circular(15.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
