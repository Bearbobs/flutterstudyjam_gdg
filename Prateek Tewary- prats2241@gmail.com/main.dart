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
          title: Text('Instagram',style: TextStyle(color: Colors.black),),
          leading: Icon(Icons.camera_alt, color: Colors.black,),       //leading means before the insta heading
          backgroundColor: Colors.white,
          actions: <Widget>[
            Icon(Icons.tv, color: Colors.black,),
            Icon(Icons.send, color: Colors.black,),
           //to take multiple widgets
          ],
        ),
        body:  ListView.builder(
          physics: BouncingScrollPhysics(),


          itemBuilder: (BuildContext context, int index){
            return buildInstagramTile();
          },
          itemCount: 1,


        ),
        // ... this line.
        ),
    );
  }

  Widget buildInstagramTile(){
    return Column(
      children: <Widget>[
        ListTile(
          leading: Image.network (
              'https://images.unsplash.com/photo-1549221987-25a490f65d34?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
          ),
          title: Text('PrateekT'),
          trailing: Icon(Icons.more_horiz),
    ),
      Image.network(
        'https://images.unsplash.com/photo-1552933529-e359b2477252?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
        height: 200,
        width: double.maxFinite,
        fit: BoxFit.cover,
        ),


        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  icon:  Icon(
                    Icons.favorite,
                    color: favColor,
                  ),
                  onPressed: (){
                    setState(() {
                      favColor = Colors.red;
                    });


                  },
                ),
                SizedBox(width: 8),
                Icon(Icons.mode_comment),
                SizedBox(width: 8),
                Icon(Icons.share),
              ]

            )

          ],
        )//By default already in flutter to get a row like the one above a insta post
      ],
    );
  }


  Widget buildInstagramTile1(){
    return Column(
      children: <Widget>[
        ListTile(
          leading: Image.network (
            'https://images.unsplash.com/photo-1573314865460-10ef19098125?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
          ),
          title: Text('RishavS'),
          trailing: Icon(Icons.more_horiz),
        ),
        Image.network(
          'https://images.unsplash.com/photo-1573331519198-12325f010ae2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
          height: 200,
          width: double.maxFinite,
          fit: BoxFit.cover,
        ),


        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
                children: <Widget>[
                  IconButton(
                    icon:  Icon(
                      Icons.favorite,
                      color: favColor,
                    ),
                    onPressed: (){
                      setState(() {
                        favColor = Colors.red;
                      });


                    },
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.mode_comment),
                  SizedBox(width: 8),
                  Icon(Icons.share),
                ]

            )

          ],
        )//By default already in flutter to get a row like the one above a insta post
      ],
    );
  }
}