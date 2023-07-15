import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Assignment_4_Whatsapp_Chat.dart';
import 'Assignment_4_Whatsapp_Calls.dart';

class TabBar_Whatsapp extends StatefulWidget{
  @override
  State<TabBar_Whatsapp> createState() => _TabBar_WhatsappState();
}

class _TabBar_WhatsappState extends State<TabBar_Whatsapp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),

          bottom: TabBar(tabs: [
            Column(
              children: [
                Icon(Icons.groups),
              ],
            ),
            Text("Chat"),
            Text("Status"),
            Text("Call")
          ],),

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
        body:
        TabBarView(children: [
          Center(child: Text("Community"),),
          Whatsapp_Chat(),
          Center(child: Text("Status"),),
          Whatsapp_call()
        ],),
      ),
    );  }
}


