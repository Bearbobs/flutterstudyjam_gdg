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
            leading: Icon(Icons.camera_alt, color: Colors.black,),
            backgroundColor: Colors.white,
            actions: <Widget>[
              Icon(Icons.tv, color: Colors.black,),
              Icon(Icons.send, color: Colors.black,),

            ]
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
            'https://cdn.shopify.com/s/files/1/1698/6547/files/starcatalog_600x600.jpg?v=1511346010',

          ),
          title: Text('Indrani Sen'),
          trailing: Icon(Icons.more_horiz),
        ),
        Image.network(
          'https://www.abc.net.au/news/image/9744422-1x1-940x940.jpg',
          height: 200,
          fit: BoxFit.fill,


        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: favColor,
                  ),
                  onPressed: () {
                    setState(() {
                      favColor = Colors.red;

                    });
                    favColor = Colors.red;
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
      ],
    );
  }

}