import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:motion_toast/motion_toast.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  TextEditingController mobilecontroller = TextEditingController();
  TextEditingController msgcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: mobilecontroller,
            decoration: InputDecoration(
              hintText: "Enter mobile number"
            ),
          ),
          TextFormField(
            controller: msgcontroller,
            decoration: InputDecoration(
                hintText: "Enter your msg"
            ),
          ),
          ElevatedButton(onPressed: (){
            List<String> mobiledata = [mobilecontroller.text];
            var msgdata = msgcontroller.text;

            _sendSMS(msgdata, mobiledata);

          },
              child: Text("Send"))
        ],
      )
    );
  }

  void _sendSMS(String message, List<String> recipents) async {
    String _result = await sendSMS(message: message, recipients: recipents,sendDirect: true)
        .catchError((onError) {
      print(onError);
    });
    MotionToast.success(
      title:  Text(_result), description: Text(""),).show(context);

    mobilecontroller.text = '';
    msgcontroller.text = '';
  }
}
