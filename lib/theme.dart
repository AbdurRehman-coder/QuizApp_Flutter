import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {

  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primaryColor: Colors.teal,
        primarySwatch: Colors.teal,
        textTheme: GoogleFonts.aBeeZeeTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: Colors.blueAccent,
              ),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          textTheme: GoogleFonts.workSansTextTheme(
            Theme.of(context).textTheme,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      );

  // Theme for Dark Screen
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.teal,
        //primarySwatch: Colors.teal,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          textTheme: GoogleFonts.workSansTextTheme(
            Theme.of(context).textTheme,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      );
}