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
              'https://i.pinimg.com/originals/3e/90/30/3e90301dc460ab35bad32e57f7a3e3a5.jpg',
            ),
            title: Text('Kritika'),
            trailing: Icon(Icons.more_horiz),
          ),
          Image.network(
            'https://wallpapercave.com/wp/wp1812462.jpg',
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
                  SizedBox(width: 8),
                  Icon(Icons.mode_comment),
                  SizedBox(width: 8),
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
