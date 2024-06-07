
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 400,
                    child: Image.network("https://assets.architecturaldigest.in/photos/600821b6a28465f75014ba7c/16:9/w_2560%2Cc_limit/Indoor-plants-and-flowers-summer-garden-1366x768.jpg",
                    fit: BoxFit.cover,),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30,top: 100),
                          width: 120,
                          height: 100,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network("https://i0.wp.com/mrplantgeek.com/wp-content/uploads/2023/05/houseplants-that-like-shade.jpg")),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30,top: 100),
                          width: 120,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network("https://i0.wp.com/mrplantgeek.com/wp-content/uploads/2023/05/houseplants-that-like-shade.jpg")),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30,top: 100),
                          width: 120,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network("https://i0.wp.com/mrplantgeek.com/wp-content/uploads/2023/05/houseplants-that-like-shade.jpg")),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30,top: 100),
                          width: 120,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network("https://i0.wp.com/mrplantgeek.com/wp-content/uploads/2023/05/houseplants-that-like-shade.jpg")),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: const Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type",
                    style: TextStyle(color: Colors.brown, fontWeight: FontWeight.normal),),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 400,left: 30),
                child: const Text("New \nGradients",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 35,
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
