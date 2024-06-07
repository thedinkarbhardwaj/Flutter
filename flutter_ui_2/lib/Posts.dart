import 'package:flutter/material.dart';
import 'package:flutter_ui_2/SinglePost.dart';

class Posts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 370),
      child: Column(
        children: [
          Column(
            children: [
              SinglePost("assets/tajmahal.jpg"),
              SinglePost("assets/leaf.jpg"),
              SinglePost("assets/green.jpg"),
            ],
          ),
        ],
      ),
    );
  }
}
