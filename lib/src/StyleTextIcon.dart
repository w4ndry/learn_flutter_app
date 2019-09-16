import 'package:flutter/material.dart';

// void main() {
//   runApp(new MaterialApp(
//     home: new StyleTextIcon(),
//   ));
// }

class StyleTextIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Container(
          color: Colors.blue[600],
          width: 200.0,
          height: 100.0,
          child: new Center(
            // child: new Text(
            //   'Be Coder Tutorial',
            //   style: new TextStyle(
            //   color: Colors.white,
            //   fontFamily: 'Serif',
            //   fontSize: 20.0,
            // ),
            // ),
            child: new Icon(Icons.android, color: Colors.yellow, size: 70.0)
          ),
        ),
      ),
    );
  }
}
