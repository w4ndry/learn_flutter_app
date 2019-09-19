import 'package:flutter/material.dart';

class CardAndParsing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Card & Parsing"),),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new CardIcon(icon: Icons.home, teks: "Home", warnaIcon: Colors.brown,),
            new CardIcon(icon: Icons.favorite, teks: "Favorite", warnaIcon: Colors.pink,),
            new CardIcon(icon: Icons.place, teks: "Place", warnaIcon: Colors.blue,),
            new CardIcon(icon: Icons.settings, teks: "Setting", warnaIcon: Colors.black,)
          ]
        ),
      ),
    );
  }
}


class CardIcon extends StatelessWidget {

  CardIcon ({ this.icon, this.teks, this.warnaIcon });
  
  final IconData icon;
  final String teks;
  final Color warnaIcon;
  
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(bottom: 5),
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Icon(icon, size: 50.0, color: warnaIcon,),
            new Text(teks, style: new TextStyle(fontSize: 20.0)),
          ],
        ),
      ),
    );
  }
}
