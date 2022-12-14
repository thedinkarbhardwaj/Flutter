import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MyApp());
}

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
      home: const MyHomePage(title: 'Contact'),
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

  bool isLoading = true;

  List<Contact> contacts = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getcontact_permission();
  }

  void getcontact_permission() async{
    if(await Permission.contacts.isGranted){

      getcontacts_from_mobile();
    }
    else{
      await Permission.contacts.request();
    }
  }

  void getcontacts_from_mobile() async{
   contacts =  await ContactsService.getContacts();

   setState(() {
     isLoading = false;
   });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: isLoading?Center(
        child: CircularProgressIndicator(
        ),
      ): ListView.builder(
        itemCount: contacts.length,
          itemBuilder: (context,index){
            return ListTile(
              leading: Icon(Icons.contact_page_outlined),
              title: Text(""+contacts[index].givenName.toString()),
              subtitle: Text(""+contacts[index].phones![0].value.toString()),
            );
          }
          ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
