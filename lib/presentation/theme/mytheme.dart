import 'package:flutter/material.dart';

class MyTheam {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme(
          primary: Colors.black,
          primaryVariant: Colors.amber,
          secondary: Colors.amberAccent,
          secondaryVariant: Colors.amber,
          surface: Colors.grey,
          background: Colors.amber,
          error: Colors.redAccent,
          onPrimary: Colors.green,
          onSecondary: Colors.cyanAccent,
          onSurface: Colors.grey,
          onBackground: Colors.yellow,
          onError: Colors.yellowAccent,
          brightness: Brightness.light),
      appBarTheme: AppBarTheme(
        elevation: 1,
        centerTitle: true,
        textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.black),
            bodyText2: TextStyle(color: Colors.black)),
        titleTextStyle: TextStyle(color: Colors.black),
        backgroundColor: Colors.white,
        actionsIconTheme: IconThemeData(color: Colors.black87),
      ),
      iconTheme: IconThemeData(color: Colors.black87),
      textTheme: TextTheme(
        button: TextStyle(color: Colors.black87),
        bodyText2: TextStyle(color: Colors.black87),
        bodyText1: TextStyle(color: Colors.black87),
      ),
      brightness: Brightness.light,
      accentColor: Colors.black,
      accentIconTheme: IconThemeData(color: Colors.black),
      buttonColor: Colors.amber,
      cardColor: Colors.amber,
    );
  }
}
