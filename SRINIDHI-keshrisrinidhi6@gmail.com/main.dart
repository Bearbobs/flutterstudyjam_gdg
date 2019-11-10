import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color favColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
              title: Text('Instagram', style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.camera_alt),
              backgroundColor: Colors.white,
              actions: <Widget>[
                Icon(Icons.send, color: Colors.black,),
                Icon(Icons.tv, color: Colors.black,),
              ]
          ),
          body: ListView.builder(
            physics:BouncingScrollPhysics() ,
            itemBuilder: (BuildContext context,int index){
              return buildInstagramTile();
            },
            itemCount: 50,
          ), // ... this line.
        ));
  }

  Widget buildInstagramTile() {
    return Column(
        children: <Widget>[
          ListTile(
            leading: Image.network(
              'https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/3/35/IronMan-EndgameProfile.jpg/revision/latest/scale-to-width-down/2000?cb=20190423175213',
            ),
            title: Text('IRON MAN'),
            trailing: Icon(Icons.more_horiz),
          ),
          Image.network(
            'https://www.impericon.com/360x520x85/media/catalog/product/a/b/abyacc243_lg.jpg',
            height: 500,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.favorite,
                        color: favColor,
                     ),

                    onPressed: () {
                      setState(() {
                        favColor = Colors.red;
                      });
                    },
                  ),
                  SizedBox(width: 15),
                  Icon(Icons.mode_comment),
                  SizedBox(width:15),
                  Icon(Icons.share),
                ],
              ),

              Icon(Icons.bookmark_border),
            ],


          )
        ]
    );
  }
}
