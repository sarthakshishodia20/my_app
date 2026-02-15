import 'package:flutter/material.dart';

class CatalogueTheme {
  ThemeData lightTheme(BuildContext context) {
    return ThemeData(
        brightness:Brightness.light,
        primarySwatch: Colors.blue, 
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );
  }

  ThemeData darkTheme(BuildContext context) {
    return ThemeData(
        brightness:Brightness.dark,
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          elevation: 0,
          foregroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      );
  }
}