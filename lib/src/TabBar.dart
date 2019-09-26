import 'package:flutter/material.dart';

import './TabBarPage/ComputerPage.dart' as computer;
import './TabBarPage/HeadsetPage.dart' as headset;
import './TabBarPage/RadioPage.dart' as radio;
import './TabBarPage/SmartPhonePage.dart' as smartphone;

class TabBarApp extends StatefulWidget {
  @override
  _TabBarAppState createState() => new _TabBarAppState();
}

class _TabBarAppState extends State<TabBarApp> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text("Daftar Electronik"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer), text: "Computer"),
            new Tab(icon: new Icon(Icons.headset), text: "Headset"),
            new Tab(icon: new Icon(Icons.radio), text: "Radion"),
            new Tab(icon: new Icon(Icons.smartphone), text: "Smartphone"),
          ],
        ),
      ),

      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new computer.ComputerPage(),
          new headset.HeadsetPage(),
          new radio.RadioPage(),
          new smartphone.SmartPhonePage(),
        ],
      ),

      bottomNavigationBar: new Material(
        color: Colors.amber,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer)),
            new Tab(icon: new Icon(Icons.headset)),
            new Tab(icon: new Icon(Icons.radio)),
            new Tab(icon: new Icon(Icons.smartphone)),
          ],
        ),
      ),
    );
  }
}
