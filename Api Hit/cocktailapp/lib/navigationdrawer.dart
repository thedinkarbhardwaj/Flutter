import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Drawer"),
      ),
      body: Container(
        color: Colors.grey,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,

          children: [
            Container(
              margin: EdgeInsets.zero,
              child: DrawerHeader(
                child: Container(
                    margin: EdgeInsets.zero,
                    child: Column(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/736x/7e/d3/34/7ed334c715626a8afe94472b80e9b53e.jpg"),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const Text(
                          "Dinkar Bhardwaj",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: const Text(
                        "Email: dinkar@gmail.com",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    )
                  ],
                )),
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.zero,
              decoration: const BoxDecoration(

                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                    color: Color(0xff6ae792),
                    width: 3.0,
                  ))),
              child: const ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                    color: Color(0xff6ae792),
                    width: 3.0,
                  ))),
              child: const ListTile(
                leading: Icon(Icons.outbox),
                title: Text(
                  "Outbox",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                    color: Color(0xff6ae792),
                    width: 3.0,
                  ))),
              child: const ListTile(
                leading: Icon(Icons.favorite),
                title: Text(
                  "Favourite",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                    color: Color(0xff6ae792),
                    width: 3.0,
                  ))),
              child: const ListTile(
                leading: Icon(Icons.archive),
                title: Text(
                  "Archeive",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                    color: Color(0xff6ae792),
                    width: 3.0,
                  ))),
              child: const ListTile(
                leading: Icon(Icons.restore_from_trash),
                title: Text(
                  "Trash",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
