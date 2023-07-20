import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PlayList(),
    theme: ThemeData(primarySwatch:Colors.blueGrey),
  ));
}

var cover = ["assets/music_cover/cover_01.png",
  "assets/music_cover/cover_02.png",
  "assets/music_cover/cover_03.png",
  "assets/music_cover/cover_04.png",
  "assets/music_cover/cover_05.png",
  "assets/music_cover/cover_06.png",
  "assets/music_cover/cover_07.png",
  "assets/music_cover/cover_08.png",
  "assets/music_cover/cover_09.png",
  "assets/music_cover/cover_10.png",
];

int num = 0;

class PlayList extends StatefulWidget{
  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: false,
              title: new Center(
                child: new Text("Playlists", textAlign: TextAlign.center,style: GoogleFonts.ubuntu(textStyle:TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),),
              bottom: AppBar(
                backgroundColor: Colors.blueGrey,
                elevation: 0,
                title:
                Container(
                  padding: const EdgeInsets.all(2.0),
                  width: 600,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.blueGrey[100],
                      filled: true,
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.blueGrey,fontSize: 20,fontWeight: FontWeight.bold),
                        suffixIcon: Icon(Icons.search,size:30,),
                        suffixIconColor: Colors.blueGrey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverGrid.extent(maxCrossAxisExtent: 180,
              crossAxisSpacing: 30,
              mainAxisSpacing: 20,
              children:
              List.generate(10, (index) => Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50), // Image border
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(40), // Image radius
                    child: Image.asset(cover[index], fit: BoxFit.cover,))))))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapindex){
          setState(() {
            num=tapindex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.playlist_add_check_circle_outlined),label: "Playlists"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz_rounded),label: ""),
        ],
        elevation: 20,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.blueGrey[100],
        unselectedItemColor: Colors.blueGrey[200],
        currentIndex: num,
      ),
    );
  }
}
