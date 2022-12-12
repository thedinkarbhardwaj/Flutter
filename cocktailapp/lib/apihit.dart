
import 'dart:convert';

import 'package:cocktailapp/DetailDrinks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Apihit extends StatefulWidget {
  const Apihit({Key? key}) : super(key: key);

  @override
  State<Apihit> createState() => _ApihitState();
}

var res,drinks;
var api = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail";
var api2 = "https://api.github.com/users";
var list = List.filled(10, "abc",growable: true);

class _ApihitState extends State<Apihit> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    apicall();
  }

  apicall() async{

    res = await http.get(Uri.parse(api));
    drinks = jsonDecode(res.body)["drinks"];

    print(drinks.toString());
    // list.add(res.body);

    setState(() {

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Api"),
      ),
      body: res!= null? ListView.builder(itemCount:drinks.length,
          itemBuilder: (BuildContext context,int index){
        var drink = drinks[index];
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey,
          ),
          margin: EdgeInsets.all(10),

          child: ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(drink["strDrinkThumb"]),),
            title: Text(drink["strDrink"]),
            trailing: const Icon(Icons.arrow_forward),
            subtitle: Text(drink["idDrink"], style: const TextStyle(
              fontSize: 15,
              color: Colors.black,

            ),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => DetailDrinks(drink: drink), fullscreenDialog: true));
            },
          ),
        );
      }):const Center(child: CircularProgressIndicator(color: Colors.pink,)),
    );
  }
}


