import 'package:flutter/material.dart';
import 'package:flutter_ui_2/myStyle.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 120),
      width: double.infinity,
      height: 350,
      decoration: const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))
      ),
      child:  Column(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/green.jpg'),
            radius: 30,
          ),

          const SizedBox(
            height: 10,
          ),
          const Text("Dinkar Bhardwaj",style: nameText),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, size: 16.0,color: Colors.white),
              Padding(
                padding: EdgeInsets.only(left: 4),
                child: Text("Punjab",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                ),),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("121", style: countText,),
                  Text("Posts", style: followText),

                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 30),
                child: Column(
                  children: [
                    Text("200", style: countText,),
                    Text("Followers", style: followText),

                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30),
                child: const Column(
                  children: [
                    Text("160", style: countText,),
                    Text("Following", style: followText),

                  ],
                ),
              ),

            ],

          )
        ],
      ),
    );
  }
}
