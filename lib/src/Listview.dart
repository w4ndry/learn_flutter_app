import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: new Text("Daftar Tutorial"),
      ),

      body: new ListView(
        children: <Widget>[
          new ListTutorial(gambar: "http://idrcorner.com/images/tutorial/html.jpg", judul: "HTML"),
          new ListTutorial(gambar: "http://idrcorner.com/images/tutorial/css.jpg", judul: "CSS",),
          new ListTutorial(gambar: "http://idrcorner.com/images/tutorial/php.jpg", judul: "PHP",),
          new ListTutorial(gambar: "http://idrcorner.com/images/tutorial/js.jpg", judul: "JS",),
          new ListTutorial(gambar: "http://idrcorner.com/images/tutorial/react.jpg", judul: "REACT",)
          
          // new ListTile(
          //   leading: new Icon(Icons.speaker),
          //   title: new Text("Speaker"),
          // ),
        ],
      ),
    );
  }
}


class ListTutorial extends StatelessWidget {

  ListTutorial ({ this.gambar, this.judul });

  final String gambar;
  final String judul;
  
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Image(image: new NetworkImage(gambar), width: 100.0),
            new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                  new Text(judul, style: new TextStyle(fontSize: 20.0,)),
                  new Text("Ini adalah deskripsi tutorial", style: new TextStyle(fontSize: 13, color: Colors.grey),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
