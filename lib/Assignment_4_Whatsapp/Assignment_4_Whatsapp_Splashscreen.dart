
import 'Assignment_4_Whatsapp_TabBar.dart';

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  theme: ThemeData(primarySwatch: Colors.green),
  home: SplashScreen_3(),
  ));
}

class SplashScreen_3 extends StatefulWidget {

  @override
  State<SplashScreen_3> createState() => _SplashScreen_3State();
}

class _SplashScreen_3State extends State<SplashScreen_3> {

  @override
  void initState(){
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>TabBar_Whatsapp()));
  });
    super.initState();
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/whatsapp_icon.png"),
              Text("Whatsapp",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),textAlign: TextAlign.end,)
            ],
          ),
        ),
      ),


    );
  }
}