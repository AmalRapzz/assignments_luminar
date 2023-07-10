


import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
    home: Whatsapp_call(),
  ));
}
  var names = [
    "Sree",
    "Sree",
    "Sree",
    "Padma",
    "Padma",
    "Padma",
    "Alan",
    "Hari Kumar",
    "Hari Kumar",
    "Hari Kumar",
  ];
  var message = [
    "(2) 5 minutes ago",
    "You: I will call you back",
    "You :Okay",
    "Thank You",
    "You: Good Morning",
    "(;",
    "You: Okay...Thank You...",
    "You: Good Night",
    "Image",
    "You: Image",
  ];

  var time = [
    "9:32 am",
    "9:30 am",
    "8:54 am",
    "8:50 am",
    "7:08 am",
    "12:05 am",
    'Yesterday',
    'Yesterday',
    'Yesterday',
    'Yesterday',
  ];
  var status = [Icon(Icons.done_all_outlined, color: Colors.grey[600],),
    Icon(Icons.done_all_outlined, color: Colors.blue,),
    Icon(Icons.done_all_outlined, color: Colors.blue,),
    "",
    Icon(Icons.done, color: Colors.grey[600],),
    "",
    Icon(Icons.done_all_outlined, color: Colors.blue,),
    Icon(Icons.done_all_outlined, color: Colors.grey[600],),
    "",
    Icon(Icons.done_all_outlined, color: Colors.grey[600],),
  ];


  var dp = [
    "assets/humans/sree.png",
    "assets/humans/sree.png",
    "assets/humans/sree.png",
    "assets/humans/padma.png",
    "assets/humans/padma.png",
    "assets/humans/padma.png",
    "assets/humans/alan.png",
    "assets/humans/hari.png"
    "assets/humans/hari.png"
    "assets/humans/hari.png"
  ];


  class Whatsapp_call extends StatelessWidget {


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
  body:ListView.builder(
  itemCount: 10,
  itemBuilder: (context,index) {
  return ListTile(
  leading:
  CircleAvatar(
  backgroundImage: AssetImage(dp[index]),
  radius: 30,
  ),
  title: Text(names[index]),
  subtitle:Wrap(
  children: [
  // Text(message[index]),
  ],
  ),
  trailing:Icon(Icons.call,color: Colors.green,)

  );
  }),
  );
  }
  }
