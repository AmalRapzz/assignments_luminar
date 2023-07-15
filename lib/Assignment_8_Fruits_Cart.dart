import 'package:assignments_luminar/Assignment_6_Whatsapp_Beta/Assignment_6_BottomBar.dart';
import 'package:assignments_luminar/Assignment_7_GridView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: FruitsCart(),
    debugShowCheckedModeBanner: false,
  ));
}

var fruits = ["assets/fruits/apple.png","assets/fruits/banana.png","assets/fruits/dragon_fruits.png",
  "assets/fruits/grapes.png","assets/fruits/kiwi.png","assets/fruits/mango.png","assets/fruits/orenge.png",
  "assets/fruits/peach.png","assets/fruits/rambutan.png","assets/fruits/watermelon.png",];

var name = ["Apple","Banana","Dragon Fruit","Grapes","Kiwi","Mango","Orange","Peach","Rambutan","Watermelon"];
var unit = ["Kg","Kg","No.s","Kg","Kg","Kg","Kg","Kg","Kg","Kg"];
var price = ["250.00","90.00","99.99","220.00","300.00","120.00","149.99","350.00","299.99","80.00"];

class FruitsCart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Center(child: new Text("Product List", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),)),
      actions: [Icon(Icons.shopping_cart),SizedBox(width: 25,)],
      ),
      body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context,index){
            return Container(
              height: 85,
              child: Card(
               child: ListTile(
                leading: Image.asset(fruits[index]),
                tileColor: Colors.blueGrey[200],
                title: Wrap(direction: Axis.vertical, alignment: WrapAlignment.end,
                    children: [
                      Text("Name : ${name[index]}", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.black),),
                      Text("Unit : ${unit[index]}", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.black),),
                      Text("Price : ${price[index]}", style: TextStyle(fontSize:15,fontWeight: FontWeight.bold, color: Colors.black),),
                    ]),
                trailing: ElevatedButton(onPressed: (){},
                    child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[850])),),
              ),
            )
            );
          }),

    );
  }
}