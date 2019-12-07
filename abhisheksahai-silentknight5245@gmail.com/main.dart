import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool x = false;
  Color favColor = Colors.black;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Instagram', style: TextStyle(color: Colors.black)),
          leading: Icon(Icons.camera_alt, color: Colors.black),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Icon(
              Icons.tv,
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.send,
              color: Colors.black,
            ),
          ],
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return buildInstagramTile();
          },
          itemCount: 10,
        ),
      ),
    );
  }

  Widget buildInstagramTile() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Image.network(
              'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
          title: Text('Abhishek Sahai'),
          trailing: Icon(Icons.more_horiz),
        ),
        SizedBox(
          height: 10.0,
        ),
        Image.network(
          'https://images.pexels.com/photos/67636/rose-blue-flower-rose-blooms-67636.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          height: 200.0,
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

                  icon: Icon(
                    Icons.favorite_border,
                    color:favColor,
                  ),

                  onPressed: () {
                    setState(() {
                      if(x) {
                        favColor = Colors.black;
                        x = false;
                      }else{
                        favColor = Colors.red;
                        x = true;
                      }
                    });

                  },


                ),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.mode_comment),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.share),
              ],
            ),
            Icon(Icons.bookmark_border),
          ],
        ),
      ],
    );
  }
}