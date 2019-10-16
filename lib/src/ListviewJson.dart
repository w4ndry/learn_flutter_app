import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class ListviewJsonPage extends StatefulWidget {
  @override
  _ListviewJsonState createState() => new _ListviewJsonState();
}

class _ListviewJsonState extends State<ListviewJsonPage> {

  List dataJSON;

  Future<String> fetchData() async {
    http.Response response = await http.get(
      Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
      headers: {
        "Accept": "application/json"
      }
    );

    this.setState((){
      dataJSON = jsonDecode(response.body);
    });
  }
  
  @override
  void initState() {
    this.fetchData();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("List Data JSON"),),

      body: new ListView.builder(
        itemCount: dataJSON == null ? 0 : dataJSON.length,
        itemBuilder: (context, index) {
          return new Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20.0),
            child: new Card(
              child: new Container(
                padding: EdgeInsets.all(20.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: new Text(
                        dataJSON[index]['title'],
                        style: new TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                    ),
                    new Text(
                      dataJSON[index]['body'],
                      
                    )
                ],)
              )
            )
          );
        },
      ),
    );
  }
}
