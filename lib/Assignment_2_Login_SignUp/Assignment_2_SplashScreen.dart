import 'dart:ui';
import 'package:flutter/material.dart';
import 'Assignment_2_LoginPage.dart';
import 'Assignment_2_SignUpPage.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen_2(),
  ));
}

class SplashScreen_2 extends StatefulWidget {
  const SplashScreen_2 ({Key? key}) : super(key: key);
  @override
  State<SplashScreen_2> createState() => _SplashScreen_2State();
}

class _SplashScreen_2State extends State<SplashScreen_2>{
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
          Text("Hello There!",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40)),
          Text("Automatic identity verification which enable you to verify your identity",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey[700],fontSize: 12,height: 3),),
          Image.asset("assets/images/working_women.png",height: 250,width: 270),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Loginpage()));
          }, child: Text("Login"),style: ElevatedButton.styleFrom(
              primary: Colors.green,
              textStyle: TextStyle(
                color: Colors.white,fontSize: 15,),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              padding: EdgeInsets.only(left: 140,right: 140,top: 10,bottom: 10)),),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SignUpPage()));
          }, child: Text("Sign Up"),style: ElevatedButton.styleFrom(
              primary: Colors.green,
              textStyle: TextStyle(
                color: Colors.white,fontSize: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              padding: EdgeInsets.only(left: 133,right: 133,top: 10,bottom: 10)),),
         ], // Children
        ),
       ),
      )
    );
  }
}


