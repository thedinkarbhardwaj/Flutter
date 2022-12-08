
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  State<Listview> createState() => _ListviewState();
}
var api = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail";
var api2 = "https://api.github.com/users";
class _ListviewState extends State<Listview> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    fetchdata();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book app List"),
        centerTitle: true,
      ),
      body: ListView.builder(itemCount:30,
          itemBuilder: (BuildContext context,int index){
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
          ),

          margin: EdgeInsets.only(bottom: 10,top: 10,right: 15,left: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://cdn.pixabay.com/photo/2015/11/19/21/10/glasses-1052010__340.jpg")
                        ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text("List $index", style: TextStyle(color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),),
                  ),
                ],
              ),

            ],
          ),
        );
      })
    );
  }

   fetchdata() async{
    var resp = await http.get(Uri.parse(api));
    print(resp.body);
  }
}
