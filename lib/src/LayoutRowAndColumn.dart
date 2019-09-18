import 'package:flutter/material.dart';

class LayoutRowAndColumn extends StatelessWidget {
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
        actions: <Widget>[new Icon(Icons.search)],
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Icon(
              Icons.local_pizza,
              size: 70.0,
              color: Colors.red,
            ),
            new Row(
              children: <Widget>[
                new Icon(Icons.donut_large, size: 70.0, color: Colors.red,),
                new Icon(Icons.donut_large, size: 70.0, color: Colors.red,),
                new Icon(Icons.donut_large, size: 70.0, color: Colors.red,),
              ],
            ),
            new Icon(Icons.cake, size: 70.0, color: Colors.red)
          ],
        ),
      ),
    );
  }
}
