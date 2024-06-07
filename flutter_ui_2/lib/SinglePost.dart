import 'package:flutter/material.dart';


class SinglePost extends StatelessWidget {
  final String img;

  const SinglePost(this.img, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30.0),
          height: 150,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(50))
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
              child: Image.asset("$img", fit: BoxFit.cover,)),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          margin: EdgeInsets.only(left: 80.0),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Ram liked this post", style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.w400, fontSize: 16)),
              SizedBox(width: 10),
              Row(
                children: [
                  Icon(Icons.favorite_border_outlined, size: 16.0,color: Colors.white,),
                  Text("20",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),),
                  SizedBox(width: 6),
                  Icon(Icons.comment, size: 16.0,color: Colors.white),
                  Text("15",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),),
                  SizedBox(width: 18,)
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
