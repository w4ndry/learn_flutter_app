import 'package:flutter/material.dart';
import './src/HelloWorld.dart' as hello;
import './src/StyleTextIcon.dart' as style;
import './src/AppBar.dart' as appBar;
import './src/LayoutRowAndColumn.dart' as layout;
import './src/CardAndParsing.dart' as card;
import './src/Navigation.dart' as nav;
import './src/TabBar.dart' as tab;
import './src/Listview.dart' as list;
import './src/LisviewLocalData.dart' as listView;

void main() {
  runApp(new MaterialApp(
    title: 'List View JSON',
    home: listView.LisviewLocalDataPage(data: new List<String>.generate(300, (i) => "ini data ke $i")),
  ));
}
