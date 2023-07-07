

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var names = [
  "Abhi",
  "Sunil",
  "Sree",
  "Ajaas",
  "Roy",
  "Padma",
  "Alan",
  "Sree Lakshmi",
  "Dr. Priya",
  "Hari Kumar",
];
var message = [
  "Haii...",
  "I will call you back",
  "Okay",
  "Thank You",
  "Good Morning",
  "(;",
  "Okay...Thank You...",
  "Good Night",
  "Image",
  "Image",
];

var dp = [
  ""
]


class Whatsapp_Chat extends StatelessWidget {
  const Whatsapp_Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 30),
            Icon(Icons.search),
            SizedBox(width: 20),
            PopupMenuButton(itemBuilder: (context){
              return [
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Starred messages")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("Settings")),
              ];
            })
          ],
        ),
      body: ListView(
        children: [

        ],
      )
    );
  }
}

//
// Card(
// child: ListTile(
// leading: Image.asset("assets/icons/contact.png",color: Colors.grey[400],),
// title: Text("John"),
// subtitle: Text("Hello"),
// trailing:Wrap(direction: Axis.vertical,alignment: WrapAlignment.end ,
// children: [
// Text("03/02/2020",style: TextStyle(color: Colors.grey[600]),),
// SizedBox(width: 0),
// Icon(Icons.push_pin,color: Colors.grey[600],)
// ],)
// )
// ),

// Card(
// child: ListTile(
// leading: Image.asset("assets/icons/contact.png",color: Colors.grey[400],),
// title: Text("John"),
// subtitle: Text("9856985612"),
// trailing:Wrap(direction: Axis.vertical,alignment: WrapAlignment.end ,
// children: [
// Text("03/02/2020",style: TextStyle(color: Colors.grey[600]),),
// CircleAvatar(
// backgroundColor: Colors.green,
// child: Text("2",style: TextStyle(fontWeight: FontWeight.bold),),
// radius: 12,
// )
// ],)
// )
// ),