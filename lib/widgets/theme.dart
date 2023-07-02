import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold)));

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold)));
  }

  static bool getThemeName(BuildContext context) {
    ThemeData theme = Theme.of(context);
    bool isDarkTheme = theme.brightness == Brightness.dark;
    return isDarkTheme;
  }
}
