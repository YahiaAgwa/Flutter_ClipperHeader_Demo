import 'package:flutter/material.dart';
import 'package:clipper_header/clipper_header.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ClipperHeader _header = ClipperHeader(
    title:"My Tasks",
    image:"images/logo.png",
    height: 250.0,
    menuTap: (){
      debugPrint("Menu clicked");
    },
    child:Column(
      children: <Widget>[
        Text("Item 1"),
        Text("Item 2"),
      ],
    ),
    userImage: "images/yahia.jpg",
    userName: "Y.G",
    description: "CTO"
  );
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _header.create()
    );
  }
}
