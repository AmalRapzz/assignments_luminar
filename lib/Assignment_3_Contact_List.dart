import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SimpleContactList(),
  ));
}

class SimpleContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
      title: Text("SimpleContactList"),
    ),
          body: ListView(
        children: [
          Card(
              child: ListTile(
          leading: Image.asset("assets/icons/contact.png",color: Colors.orange,),
          title: Text("John"),
          subtitle: Text("9856985612"),
          trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios_outlined,size: 20),),
          )
         ),

          Card(
              child: ListTile(
                leading: Image.asset("assets/icons/contact.png",color: Colors.blue,),
                title: Text("Ajay"),
                subtitle: Text("8238423678"),
                trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios_outlined,size: 20,)),
              )
          ),

          Card(
              child: ListTile(
                leading: Image.asset("assets/icons/contact.png",color: Colors.red,),
                title: Text("Mike"),
                subtitle: Text("7423642368"),
                trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios_outlined,size: 20),),
              )
          ),

          Card(
              child: ListTile(
                leading: Image.asset("assets/icons/contact.png",color: Colors.blue,),
                title: Text("Peter"),
                subtitle: Text("412589637"),
                trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios_outlined,size: 20),),
              )
          ),

          Card(
              child: ListTile(
                leading: Image.asset("assets/icons/contact.png",color: Colors.green,),
                title: Text("Anjo"),
                subtitle: Text("8293714682"),
                trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios_outlined,size: 20),),
              )
          ),

          Card(
              child: ListTile(
                leading: Image.asset("assets/icons/contact.png",color: Colors.orange,),
                title: Text("Home"),
                subtitle: Text("0235 8632444"),
                trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios_outlined,size: 20),),
              )
          ),

          Card(
              child: ListTile(
                leading: Image.asset("assets/icons/contact.png",color: Colors.green,),
                title: Text("Roy Office"),
                subtitle: Text("7391824658"),
                trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios_outlined,size: 20),),
              )
          ),

          Card(
              child: ListTile(
                leading: Image.asset("assets/icons/contact.png",color: Colors.yellow,),
                title: Text("Ameer Abdu"),
                subtitle: Text("4621398755"),
                trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios_outlined,size: 20),),
              )
          ),

          Card(
              child: ListTile(
                leading: Image.asset("assets/icons/contact.png",color: Colors.blue,),
                title: Text("Vijay Kumar"),
                subtitle: Text("4567891235"),
                trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios_outlined,size: 20),),
              )
          ),
      ],
    ),
    );
  }
}
