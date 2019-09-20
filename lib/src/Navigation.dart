import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Music"),),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.headset, size: 50.0,),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondNav()),
            );
          },
        ),
      ),
    );
  }
}

class SecondNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Speaker"),),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.speaker, size: 50.0, color: Colors.red,),
          onPressed: (){
            Navigator.pop(
              context,
            );
          },
        ),
      ),
    );
  }
}
