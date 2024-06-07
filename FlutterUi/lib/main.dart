import 'package:flutter/material.dart';
import 'package:flutter_ui1/DetailPage.dart';

void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(backgroundColor: Colors.black),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.menu,size: 30.0,))
            
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 350,
                        child: const RotatedBox( quarterTurns: 3,
                        child: Center(child: Text("Natural\nIngradient", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500,
                        )))),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 350,
                        child: Image.network(
                            "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg"
                        ,fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 350,
                        color: Colors.black,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              const RotatedBox(
                                quarterTurns: 3,
                                child: Text("01",style: TextStyle(color: Colors.blue,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w500)),
                              ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 1,
                              height: 50.0,
                              color: Colors.blue,

                            )
                          ],
                        ),
                      ),
                    ),
                     Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Info", style: TextStyle(color: Colors.black
                              ,fontSize: 24.0,
                            )),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                              child: Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                                  style: TextStyle(color: Colors.black45
                                ,fontSize: 14.0,
                              )),
                            ),
                            Center(
                              child:
                              Builder(
                                builder: (BuildContext context) {
                                  return GestureDetector(
                                    onTap: () {
                                      print("GestureDetector tapped!");
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (BuildContext context) => const DetailPage()),
                                      );
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 50,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        "Read more",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),


                            )
                          ],
                        )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
