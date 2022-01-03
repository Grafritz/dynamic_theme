import 'package:flutter/material.dart';

class DynamicColors{
  static Color primaryColorSwatch = Colors.deepOrange;

  static List<Color> colors = [
    Colors.red,
    Colors.purple,
    Colors.blue,
    Colors.deepPurple,
    Colors.orange,
    Colors.brown,
    Colors.teal,
    Colors.indigo,
    Colors.white
  ];

  static List<String> primaryColorStr = [
    'red',
    'deep Orange',
    'orange',
    'pink',
    'purple',
    'deep Purple',
    'brown',
    'indigo',
    'blue',
    'light Blue',
    'cyan',
    'blue Grey',
    'teal',
    'green',
  ];

  static var primaryColor = [
    Colors.red,
    Colors.deepOrange,
    Colors.orange,
    Colors.pink,
    Colors.purple,
    Colors.deepPurple,
    Colors.brown,
    Colors.indigo,
    Colors.blue,
    Colors.lightBlue,
    Colors.cyan,
    Colors.blueGrey,
    Colors.teal,
    Colors.green,
  ];

  Color getColorMaterial( { required Color colorPrimary  }){
    for (Color col in DynamicColors.primaryColor) {
      if( col==colorPrimary){
        return col;
      }
    }
    return Colors.white60;
  }


  /*static List<ColorSwatch> materialColors = const <ColorSwatch>[
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.deepPurple,
    Colors.indigo,
    Colors.blue,
    Colors.lightBlue,
    Colors.cyan,
    Colors.teal,
    Colors.green,
    Colors.lightGreen,
    Colors.lime,
    Colors.yellow,
    Colors.amber,
    Colors.orange,
    Colors.deepOrange,
    Colors.brown,
    Colors.grey,
    Colors.blueGrey
  ];*/

  /*static List<ColorSwatch> accentColors = const <ColorSwatch>[
    Colors.redAccent,
    Colors.pinkAccent,
    Colors.purpleAccent,
    Colors.deepPurpleAccent,
    Colors.indigoAccent,
    Colors.blueAccent,
    Colors.lightBlueAccent,
    Colors.cyanAccent,
    Colors.tealAccent,
    Colors.greenAccent,
    Colors.lightGreenAccent,
    Colors.limeAccent,
    Colors.yellowAccent,
    Colors.amberAccent,
    Colors.orangeAccent,
    Colors.deepOrangeAccent,
  ];*/

  /*static List<ColorSwatch> fullMaterialColors = const <ColorSwatch>[
    //const ColorSwatch(0xFFFFFFFF, {500: Colors.white}),
    //const ColorSwatch(0xFF000000, {500: Colors.black}),
    Colors.red,
    Colors.redAccent,
    Colors.pink,
    Colors.pinkAccent,
    Colors.purple,
    Colors.purpleAccent,
    Colors.deepPurple,
    Colors.deepPurpleAccent,
    Colors.indigo,
    Colors.indigoAccent,
    Colors.blue,
    Colors.blueAccent,
    Colors.lightBlue,
    Colors.lightBlueAccent,
    Colors.cyan,
    Colors.cyanAccent,
    Colors.teal,
    Colors.tealAccent,
    Colors.green,
    Colors.greenAccent,
    Colors.lightGreen,
    Colors.lightGreenAccent,
    Colors.lime,
    Colors.limeAccent,
    Colors.yellow,
    Colors.yellowAccent,
    Colors.amber,
    Colors.amberAccent,
    Colors.orange,
    Colors.orangeAccent,
    Colors.deepOrange,
    Colors.deepOrangeAccent,
    Colors.brown,
    Colors.grey,
    Colors.blueGrey
  ];*/

}
