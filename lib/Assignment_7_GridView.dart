import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Assignemnt_GridView(),
    debugShowCheckedModeBanner: false,
  ));
}

var icons = [Icons.home,Icons.notification_important_sharp,Icons.linked_camera,
              Icons.local_activity,Icons.leak_remove,Icons.book,Icons.call,Icons.email,Icons.map,Icons.add_box_outlined,Icons.mic_off,Icons.note_add];

var color = [Colors.blue,Colors.orange,Colors.green,Colors.redAccent,Colors.purpleAccent,Colors.blueAccent,Colors.deepPurpleAccent,Colors.yellow,Colors.pink,Colors.lightGreen,Colors.red,Colors.deepPurple];

class Assignemnt_GridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
            mainAxisSpacing: 3,
          crossAxisSpacing: 3,
          childAspectRatio: (1 / .58),
        ),
        children:List.generate(icons.length, (index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
          child: Container(
            alignment: Alignment.center,
            child:Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80),
              ),
            child: ListTile(
              leading: Icon(icons[index],size: 50,color: Colors.grey[200],),
              title: Text("Heart Shake",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[200]),),
              tileColor: color[index],
            ),
          ),
          ),
          );
        }
      ),)
    );
  }
}
