import 'package:flutter/material.dart';

void main() {
  runApp(Cartscreen());
}

class Cartscreen extends StatelessWidget {
  const Cartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();

    var imglist = ["milk.png", "potato.png", "tomato.png"];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 160,
              color: Colors.yellow,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Text("Blinkit in",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      Text("16 minutes",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Spacer(),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      SizedBox(width: 8)
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Text("Home - ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                      Text("Sujal Dave, Ratanada, Jodhpur (Raj)",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14)),
                      SizedBox(width: 4),
                      Icon(Icons.keyboard_arrow_down_sharp, size: 20)
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.mic),
                        hintText: "Search “ice-cream”",
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            BorderSide(color: Colors.red, width: 2)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Image.asset("assets/images/reording.png"),
            SizedBox(height: 20),
            Text("Reordering will be easy",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "bold")),
            Text(
                "Items you order will show up here so you can buy \nthem again easily.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: "regular",
                ),
                textAlign: TextAlign.center),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(width: 10),
                Text("Bestsellers",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: "bold",
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 10),
            // Remove Expanded and use a fixed size for ListView
            Container(
              height: 250, // Fixed height for the ListView container
              child: ListView.builder(
                itemCount: imglist.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150, // Fixed width for the item
                    margin: EdgeInsets.all(8), // Margin between items
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200, // Fixed height for the image container
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage("assets/images/" +
                                  imglist[index]), // Image path
                              fit: BoxFit.cover, // Ensure image fills the container
                            ),
                          ),
                        ),
                        // Add Positioned widget to place the "ADD" button over the image
                        Positioned(
                          bottom: 10, // Position the button at the bottom
                          left: 0,
                          right: 0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: Colors.green),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                            ),
                            onPressed: () {},
                            child: Text(
                              "ADD",
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
