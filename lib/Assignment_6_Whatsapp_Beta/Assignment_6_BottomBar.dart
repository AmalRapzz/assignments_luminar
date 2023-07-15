

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Assignment_6_Whatsapp_Call.dart';
import 'Assignment_6_Whatsapp_Chat.dart';
import 'Assignment_6_Whatsapp_Community.dart';
import 'Assignment_6_Whatsapp_Status.dart';

int index = 0;

var screens = [Whatsapp_Chat(),Whatsapp_Community(),Whatsapp_Status(),Whatsapp_Call()];

class Whatsapp_BottomBar extends StatefulWidget{
  @override
  State<Whatsapp_BottomBar> createState() => _Whatsapp_BottomBarState();
}

class _Whatsapp_BottomBarState extends State<Whatsapp_BottomBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 30),
          Icon(Icons.search),
          SizedBox(width: 15),
          PopupMenuButton(itemBuilder: (context) {
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
      bottomNavigationBar: BottomNavigationBar(
        onTap: (TapIndex){
          setState(() {
            index = TapIndex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message,),label: "Chat",backgroundColor: Colors.grey[850],),
          BottomNavigationBarItem(icon: Icon(Icons.groups_outlined),label: "Community",backgroundColor: Colors.grey[850],),
          BottomNavigationBarItem(icon: Icon(Icons.donut_small_outlined),label: "Status",backgroundColor: Colors.grey[850],),
          BottomNavigationBarItem(icon: Icon(Icons.call_outlined),label: "Call",backgroundColor: Colors.grey[850],),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: index,
        selectedIconTheme: IconThemeData(size: 26),
        unselectedItemColor: Colors.grey[850],
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      selectedItemColor: Colors.grey[900],),
      body: screens[index],
      );
  }
}