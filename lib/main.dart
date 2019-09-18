import 'package:flutter/material.dart';
import './src/HelloWorld.dart' as hello;
import './src/StyleTextIcon.dart' as style;
import './src/AppBar.dart' as appBar;
import './src/LayoutRowAndColumn.dart' as layout;

void main() {
  runApp(new MaterialApp(
    title: 'Be Coder App',
    home: layout.LayoutRowAndColumn(),
  ));
}
