import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Color favColor = Colors.black;
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Instagram', style: TextStyle(color: Colors.black),),
            leading: Icon(Icons.camera_alt, color: Colors.black,),
            backgroundColor: Colors.white,
            actions: <Widget>[
              Icon(Icons.tv, color: Colors.black,),
              Icon(Icons.send, color: Colors.black,),
            ],
          ),
          body: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return buildInstagramTitle();
            },
            itemCount: 10,
          ),
        )
    );
  }


  buildInstagramTitle() {

    return Column(
      children: <Widget>[
        ListTile(
          leading: Image.network(
              'https://secure.meetupstatic.com/photos/event/4/a/b/5/600_466219125.jpeg'
          ),
          title: Text('Flutter'),
          trailing: Icon(Icons.more_horiz),
        ),
        Image.network(
          'https://miro.medium.com/max/3200/1*73IgUxPfyXUKZAaIXgutrw.png',
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(children: <Widget>[
              SizedBox(width: 10),
              IconButton(
                icon: Icon(Icons.favorite),

                color: favColor,
                onPressed: () {

                  if(i==0) {
                    setState(() {
                      favColor = Colors.red;
                      i = 1;
                    });
                  }
                  else if(i==1) {
                    setState(() {
                      favColor = Colors.black;
                      i = 0;
                    });
                  }
                },
              ),
              SizedBox(width: 10),
              Icon(Icons.mode_comment),
              SizedBox(width: 15),
              Icon(Icons.share),
            ],),
            Icon(Icons.bookmark_border)
          ],
        )
      ],
    );
  }
}