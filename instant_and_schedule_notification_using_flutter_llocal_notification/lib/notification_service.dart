import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationServices {

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  //  Specific setting for Platform like android
  
AndroidInitializationSettings _androidInitializationSettings = AndroidInitializationSettings('rain');

 void initializseNotification() async{
   InitializationSettings _initializesetting = InitializationSettings(
     android: _androidInitializationSettings
   );

   await flutterLocalNotificationsPlugin.initialize(_initializesetting);
 }

  void sendnotification(String title,String body) async{

   AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
       "channelId",
       "channelName",
   priority: Priority.high);

   NotificationDetails notificationDetails = NotificationDetails(
     android: androidNotificationDetails
   );

   flutterLocalNotificationsPlugin.show(
       0,
       title,
       body,
       notificationDetails);

  }


  // Schedule notification means set notification after giving time
  void Schedule_sendnotification(String title,String body) async{

    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        "channelId",
        "channelName",
        priority: Priority.high);

    NotificationDetails notificationDetails = NotificationDetails(
        android: androidNotificationDetails
    );

    await flutterLocalNotificationsPlugin.periodicallyShow(
        0,
        title,
        body,
        RepeatInterval.everyMinute, // you can also use hourly,day,weekly
        notificationDetails
    );

}

   void StopNotification(){
   flutterLocalNotificationsPlugin.cancelAll();
   }
}

