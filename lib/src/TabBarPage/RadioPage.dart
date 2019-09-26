import 'package:flutter/material.dart';

class RadioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: EdgeInsets.all(20.0),),
            new Text("RADIO", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: EdgeInsets.all(20.0),),
            new Icon(Icons.radio, size: 90.0),
          ],
        ),
      ),
    );
  }
}
