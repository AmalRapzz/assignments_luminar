import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}
class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              fit:BoxFit.fitWidth ,
                image: AssetImage("assets/icons/fruits.png"),
            alignment: Alignment.bottomCenter),

            gradient: LinearGradient(colors: [
              Colors.pink,
              Colors.deepOrange,
              Colors.deepOrangeAccent,
              Colors.orange,
              Colors.amber
            ],begin: Alignment.topLeft,end: Alignment.bottomRight)
        ),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image.asset("assets/icons/fork_new.png",color: Colors.white,height: 220,width: 220),

                Text("Fresh Foods",style:GoogleFonts.cookie(textStyle: TextStyle(color: Colors.white,fontSize: 60 ,fontWeight: FontWeight.bold)),),
                Text("Tasty & Healthy",style:GoogleFonts.quicksand(textStyle: TextStyle(color: Colors.white,fontSize: 20 ,fontWeight: FontWeight.bold)),)
              ]
          ),
        ),
      ),
    );
  }
}

