import 'package:flutter/material.dart';
import 'package:reviews_slider/reviews_slider.dart';
import 'package:motion_toast/motion_toast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Review Slider',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Review Slider'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  List<String> list = ['Terrible', 'Bad', 'Okay', 'Good', 'Great'];
  String valueoftxt = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ReviewSlider(
                    initialValue: 3,
                    options: list,
                      onChange: (int value){

                      valueoftxt = list[value];

                      setState(() {

                      });

                        // MotionToast.info(
                        //     title:  Text(list[value]),
                        //     description: Text(""),
                        // ).show(context);
                        // print(value);
                      }
                      ),
          ),

          Text(valueoftxt, style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),)
        ],
      ),

    );  // This trailing comma makes auto-formatting nicer for build methods.
  }
}
