import 'package:flutter/material.dart';

var mytext = "Book app";
var childrentxt = "Welcome Children";

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(mytext),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: NetworkImage("https://cdn.pixabay.com/photo/2015/11/19/21/10/glasses-1052010__340.jpg")
                )
              ),
            ),

            Text(
              childrentxt,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shadowColor: Colors.black,
                ),
                onPressed: () {
                  childrentxt = "Let's Start Study";
                  Navigator.of(context).pushNamed('listview');
                  setState(() {});
                },
                child: const Text("Click Me")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shadowColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('apihit');
                },
                child: const Text("Api Hit Click"))
          ],
        ),
      ),
    );
  }
}
