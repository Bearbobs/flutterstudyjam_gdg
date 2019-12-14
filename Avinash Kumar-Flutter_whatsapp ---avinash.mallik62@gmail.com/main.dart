import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/whatsapp_home.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "WhatsApp",
      theme: new ThemeData(
        primarySwatch: Colors.teal,
        accentColor: new Color(0xff25D366),
          brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHome(),
    );
  }
}


