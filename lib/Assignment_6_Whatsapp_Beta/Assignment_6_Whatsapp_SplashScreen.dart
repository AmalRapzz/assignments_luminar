import 'dart:async';

import 'package:flutter/material.dart';
import 'Assignment_6_BottomBar.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    home: SplashScreen_Beta(),
  ));
}

class SplashScreen_Beta extends StatefulWidget {
  @override
  State<SplashScreen_Beta> createState() => _SplashScreen_BetaState();
}

class _SplashScreen_BetaState extends State<SplashScreen_Beta> {
  @override
  void initState(){
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Whatsapp_BottomBar()));
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
              Image.asset("assets/icons/whatsapp_icon.png",height: 100,width: 100,),
              Text("Whatsapp",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),textAlign: TextAlign.end,)
            ],
          ),
        ),
      ),


    );
  }
}