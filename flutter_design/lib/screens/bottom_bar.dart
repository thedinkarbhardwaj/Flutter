import 'package:flutter/material.dart';
import 'package:flutter_design/app_style.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          children: [
            IconButton(onPressed: (){}, icon: const Icon(
              Icons.home
            )),
            IconButton(onPressed: (){}, icon: const Icon(
              Icons.notification_add
            )),
            IconButton(onPressed: (){}, icon: const Icon(
              Icons.settings
            )),
          ],
        ),
      ),
    );
  }
  

class _BottomBarScreenState extends State<BottomBarScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}


