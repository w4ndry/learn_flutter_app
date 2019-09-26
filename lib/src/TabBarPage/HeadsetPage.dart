import 'package:flutter/material.dart';

class HeadsetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("HEADSET", style: new TextStyle(fontSize: 30.0)),
            new Padding(padding: new EdgeInsets.all(20.0),),
            // new Icon(Icons.headset, size: 90.0,)
            new Image(image: new NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLLEshjPEBW_fmc7mpktHP5Zrg2mKriIB0ZwRGGzlHqMPV6wkRZw",), width: 200.0,),
          ],
        ),
      ),
    );
  }
}
