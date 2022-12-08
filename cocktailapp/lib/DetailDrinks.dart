
import 'package:flutter/material.dart';

class DetailDrinks extends StatelessWidget {
  final drink;

  const DetailDrinks({Key? key, @required this.drink}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Drinks"),
      ),
       body:Center(
         child: Container(

           child: Column(
             children: [
               Container(
                 margin: const EdgeInsets.all(20),
                 width: 100,
                 height: 100,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   image: DecorationImage(image: NetworkImage(drink["strDrinkThumb"]),
                   fit: BoxFit.cover)
                 ),
               ),
               Text("DrinkName: " + drink["strDrink"], style: const TextStyle(
                 fontSize: 25,
                 color: Colors.black
               ),),
               const SizedBox(
                 height: 20,
               ),
               Text("ID: " + drink["idDrink"], style: const TextStyle(
                   fontSize: 20,
                   color: Colors.black,
                 fontWeight: FontWeight.w400
               ),),
             ],
           ),
         ),
       )

    );
  }

}
//