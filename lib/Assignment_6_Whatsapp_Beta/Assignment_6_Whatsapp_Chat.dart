import 'package:assignments_luminar/Assignment_6_Whatsapp_Beta/Assignment_6_BottomBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



var names = ["Abhi", "Sunil", "Sree", "Ajaas", "Roy", "Padma", "Alan", "Sree Lakshmi", "Dr. Priya", "Hari Kumar"];

var message = [
  "You: Haii...",  //Abhi
  "You: I will call you back",  //Sunil
  "You :Okay",   //Sree
  "Thank You",   //Ajaas
  "You: Good Morning",   //Roy
  "(;",   //Padma
  "You: Okay...Thank You...",   //Alan
  "You: Good Night",   //Sree Lakshmi
  "Image",   //Dr.Priya
  "You: Image",   //Hari Kumar
];

var time = ["9:32 am","9:30 am","8:54 am","8:50 am","7:08 am","12:05 am",'Yesterday','Yesterday','Yesterday','Yesterday'];

var dp = ["assets/humans/abhi.png",
          "assets/humans/sunil.png",
          "assets/humans/sree.png",
          "assets/humans/ajaas.png",
          "assets/humans/roy.png",
          "assets/humans/padma.png",
          "assets/humans/alan.png",
          "assets/humans/sreelaksmi.png",
          "assets/humans/dr_priya.png",
          "assets/humans/hari.png"];


class Whatsapp_Chat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body:

          ListView.builder(
              itemCount: names.length,
              itemBuilder: (context,index){
            return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(dp[index]),
                  radius: 30,
                ),
                title: Text(names[index]),
                subtitle: Wrap(
                  children: [
                    // Icon(status[index]),
                    Text(message[index]),
                  ],
                ),
                trailing: Wrap(direction: Axis.vertical, alignment: WrapAlignment.end,
                    children: [
                      Text(time[index], style: TextStyle(
                          fontSize: 11, color: Colors.grey[600]),),
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        child:
                        Text("2", style: TextStyle(fontWeight: FontWeight.bold)),radius: 11,
                        )
                    ])
            );
          })


    );
  }

}