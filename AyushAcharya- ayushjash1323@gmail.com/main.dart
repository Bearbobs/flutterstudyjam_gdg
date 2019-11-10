import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
Color favColor = Colors.black;
int c=0;
class _MyAppState extends State<MyApp> {

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
            SizedBox(width: 10.0,),
            Icon(Icons.send, color: Colors.black,),
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

  buildInstagramTile() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Image.network(
              'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20191021012537/P100-Right-Top.jpg'),
          title: Text('Ayush'),
          trailing: Icon(Icons.more_horiz),
        ),
        SizedBox(height: 20.0,),
        Image.network('https://www.symbolab.com/public/images/home_left.png',
          height: 200,
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
                    Icons.favorite, color: favColor,
                  ),
                  onPressed: () {
                    if(c%2!=0){
                    setState(() {
                      favColor = Colors.redAccent;
                    });
                    c++;
                    }
                    else{
                      setState(() {
                        favColor = Colors.black;
                      });
                      c++;
                    }
                  },
                ),
                SizedBox(width: 10.0,),
                Icon(Icons.chat_bubble_outline),
                SizedBox(width: 10.0,),
                Icon(Icons.send),
              ],
            ),
            Icon(Icons.bookmark_border),
          ],
        )
      ],
    );
  }
}