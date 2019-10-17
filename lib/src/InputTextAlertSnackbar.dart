import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  @override
  _InputTextState createState() => new _InputTextState();
}

class _InputTextState extends State<InputText> {

  String teks = "";
  
  TextEditingController controller = new TextEditingController();
  TextEditingController controllerAlert = new TextEditingController();
  TextEditingController controllerSnackbar = new TextEditingController();
  
  final GlobalKey<ScaffoldState> _scaffoldState = new GlobalKey<ScaffoldState>();
  
  void _alertdialog(String str) {
    if (str.isEmpty) return;

    AlertDialog alertDialog = new AlertDialog(
      content: new Text(str, style: new TextStyle(fontSize: 20.0)),
      actions: <Widget>[
        new RaisedButton(
          color: Colors.purple,
          child: new Text("OK"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    showDialog(context: context, child: alertDialog);
  }

  void _snackbar(String str) {
    if (str.isEmpty) return;

    _scaffoldState.currentState.showSnackBar(
      new SnackBar(
        content: new Text(str, style: new TextStyle(fontSize: 20.0)),
        duration: new Duration(seconds: 3),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldState,
      appBar: new AppBar(
        title: new Text("INPUT TEXT, ALERT DIALOG & SNACKBAR"),
        backgroundColor: Colors.purple,
      ),

      body: new Container(
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controller,
              decoration: new InputDecoration(
                hintText: "Tulis di sini",
              ),
              onSubmitted: (String str) {
                setState(() {
                  teks = str + "\n" + teks;
                  controller.text = "";
                });
              }
            ),

            new Text(teks, style: new TextStyle(fontSize: 20.0)),

            new TextField(
              controller: controllerAlert,
              decoration: new InputDecoration(
                hintText: "Tulis untuk alert...",
              ),
              onSubmitted: (String str) {
                _alertdialog(str);
                controllerAlert.text = "";
              }
            ),

            new TextField(
              controller: controllerSnackbar,
              decoration: new InputDecoration(
                hintText: "Tulis untuk snackbar"
              ),
              onSubmitted: (String str) {
                _snackbar(str);
                controllerSnackbar.text = "";
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
