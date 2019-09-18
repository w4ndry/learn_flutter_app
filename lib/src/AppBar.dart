import 'package:flutter/material.dart';

class AppBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: new AppBar(
        backgroundColor: Colors.red[800],
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text('Be Coder'),
        ),
        actions: <Widget>[
          new Icon(Icons.search)
        ],
      ), 
    );
  }
}
