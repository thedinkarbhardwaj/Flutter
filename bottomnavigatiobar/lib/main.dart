import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
int selectedindex = 0;
List<Widget> data = [
  const Text("You clicked on Home", style: TextStyle(fontSize: 40,color: Colors.black),),
  Text("You clicked on Search", style: TextStyle(fontSize: 30,color: Colors.black),),
  Text("You clicked on Profile", style: TextStyle(fontSize: 30,color: Colors.redAccent),)
];


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Bottom Navigation Bar'),
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
      body: Center(
        child: data[selectedindex] ,

      ),

      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.redAccent,
      items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
      icon: Icon(Icons.home),
          label: "Home",
      backgroundColor: Colors.green
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: "Search",
      backgroundColor: Colors.yellow
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.person),
        label: "Profile",
      backgroundColor: Colors.blue,
      ),
    ],
        onTap: ontapfun,
        currentIndex: selectedindex,
    ));
  }

  void ontapfun(int index){
    setState(() {
      selectedindex = index;
    });
  }


}
