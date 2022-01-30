import 'package:flutter/material.dart';

ThemeData myThemeBrown() => ThemeData(

  splashColor: Colors.deepOrangeAccent,

  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
    primarySwatch: Colors.brown,
    backgroundColor: Colors.orange,
    ).
    copyWith(secondary: Colors.deepOrangeAccent),

  textTheme:  const TextTheme(
    //заголовок AppBar
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    //текст радиокнопок
    subtitle1: TextStyle(
      color: Color(0xFF753014),
      fontSize: 25.0,
      fontWeight: FontWeight.bold),
    //текст в Drawer
    bodyText1: TextStyle(fontSize: 20.0, color: Color(0xFF753014) ),
    //заголовок списка в Drawer
    bodyText2: TextStyle(
      fontSize: 18.0,
      fontFamily: 'Hind',
      color: Colors.brown,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic
    ),
  ),
);

ThemeData myThemeBlue() => ThemeData(

  splashColor: Colors.tealAccent,

  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    backgroundColor: Colors.tealAccent,
  ).
  copyWith(secondary: Colors.teal),

  textTheme:  const TextTheme(
    //заголовок AppBar
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    //текст радиокнопок
    subtitle1: TextStyle(
        color: Color(0xFB0F37DF),
        fontSize: 25.0,
        fontWeight: FontWeight.bold),
    //текст в Drawer
    bodyText1: TextStyle(fontSize: 20.0, color: Color(0xFF3CA3AC) ),
    //заголовок списка в Drawer
    bodyText2: TextStyle(
        fontSize: 18.0,
        fontFamily: 'Hind',
        color: Color(0xffa2479b),
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic
    ),
  ),
);