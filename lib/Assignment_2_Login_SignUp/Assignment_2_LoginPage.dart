import 'package:flutter/material.dart';
import 'Assignment_2_SignUpPage.dart';
import 'Assignment_2_HomePage.dart';

class Loginpage extends StatelessWidget {
  const Loginpage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text("Login",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
        Text("Welcome back! Login with your credentials",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey[700],fontSize: 15,height: 3),),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Email ID",
              labelText: "Email ID",
              prefixIcon: Icon(Icons.account_box_sharp),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              )
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(12.0),
           child: TextField(obscureText: true,obscuringCharacter: '*',
              decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.visibility_off),
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))
           ),
        ),
        ElevatedButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomePage()));},
          child: Text("Login"),style: ElevatedButton.styleFrom(
          primary: Colors.green,
          textStyle: TextStyle(
            color: Colors.white,fontSize: 20,),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)),
            padding: EdgeInsets.only(left: 160,right: 160,top: 15,bottom: 15)),),
        TextButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SignUpPage()));
          }, child: Text("Do you have an account? Sign Up"))
        ],
      ),
    );
  }
}


