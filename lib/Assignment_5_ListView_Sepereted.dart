import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView_Saparated(),
    theme: ThemeData(primarySwatch: Colors.cyan),
  ));
}

var months = ["January","February","March","April","May","June","July","August","September","October","November","December"];

class ListView_Saparated extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text("ListView.Saparated",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: ListView.separated(itemBuilder: (c,index){
        return Card(
          margin: EdgeInsets.all(10),
          child: SizedBox(
            height: 50,
            child: ListTile(
              title: Text(months[index],style: TextStyle(fontSize: 20),),

            ),
          ),
        );
    },
          separatorBuilder: (context,index){
        if(index%4==0){
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.redAccent,
            child: SizedBox(
              height: 50,
              child: ListTile(
                title: Text("Advertisement",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
            ),
          );
        }
        return Padding(padding: EdgeInsets.all(0));
          }, itemCount: months.length),

    );
  }
}

//        return Card(child: Text(months[index],style: TextStyle(fontSize: 20)),elevation: 2,);