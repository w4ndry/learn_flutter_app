import 'package:flutter/material.dart';
import './src/HelloWorld.dart' as hello;
import './src/StyleTextIcon.dart' as style;
import './src/AppBar.dart' as appBar;
import './src/LayoutRowAndColumn.dart' as layout;
import './src/CardAndParsing.dart' as card;

void main() {
  runApp(new MaterialApp(
    title: 'Card and Parsing',
    home: card.CardAndParsing(),
  ));
}
