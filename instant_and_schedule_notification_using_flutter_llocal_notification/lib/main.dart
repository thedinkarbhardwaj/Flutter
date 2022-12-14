import 'package:flutter/material.dart';
import 'package:instant_and_schedule_notification_using_flutter_local_notification/notification_service.dart';

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

  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {

    super.initState();
    notificationServices.initializseNotification();

  }
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              notificationServices.sendnotification("Welcome ", "Amazing offer for you");
            },
                child: Text("Show Notification")),
            ElevatedButton(onPressed: (){
              notificationServices.Schedule_sendnotification("Schedule Notification", "Body of Schedule Notification");
            },
                child: Text("Schedule Notification")),
            ElevatedButton(onPressed: (){
              notificationServices.StopNotification();
            },
                child: Text("Stop Notification"))
          ],
        ),
      )
    );
  }
}
