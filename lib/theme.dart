import 'package:flutter/material.dart';
import 'package:impl/constraints.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: kPrimaryColor,
      elevation: 0.0,
    ),
    primaryColor: kPrimaryColor,
    textSelectionTheme: TextSelectionThemeData(cursorColor: kPrimaryColor),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return TextTheme(
    //headline1 -> displayLarge
    //headline2 -> displayMedium
    //subtitle1 -> titleMedium
    //bodyText1 -> bodyLarge
    //bodyText2 -> bodyMedium
    displayLarge:
        GoogleFonts.nanumGothic(fontSize: 18.0, fontWeight: FontWeight.bold),
    displayMedium:
        GoogleFonts.nanumGothic(fontSize: 16.0, fontWeight: FontWeight.bold),
    titleMedium: GoogleFonts.nanumGothic(fontSize: 16.0),
    bodyLarge: GoogleFonts.nanumGothic(fontSize: 15.0),
    bodyMedium: GoogleFonts.nanumGothic(fontSize: 14.0),
  );
}
