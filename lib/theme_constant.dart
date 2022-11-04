import 'package:flutter/material.dart';

class MyTheme {
  static final darkTheme = ThemeData(
    // primaryColor: const Color(0xFF323232),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.purple.shade200),
          backgroundColor: const Color(0xFF323232),
          actionsIconTheme: IconThemeData(color: Colors.purple.shade200),
          titleTextStyle: const TextStyle(
            fontSize: 15,
            color: Colors.grey,
            fontFamily: 'Kanit',
            fontWeight: FontWeight.w500,
          )),
          fontFamily: 'Kanit',
      scaffoldBackgroundColor: Colors.grey.shade900,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(color: Colors.white),
        backgroundColor: Colors.purple.shade200,
      )),
      primaryIconTheme: const IconThemeData(color: Colors.green),
      iconTheme: IconThemeData(
        color: Colors.purple.shade200,
      ),
     colorScheme:  ColorScheme.light(
        secondary: Colors.purple.shade200,
      ),
        textTheme: const TextTheme(
                headline1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.grey),
                headline3: TextStyle(fontSize: 15.0, fontStyle: FontStyle.italic,color: Colors.grey),
                bodyText2: TextStyle(
                    fontSize: 20.0, color: Colors.grey),
              ),);


  static final lightTheme = ThemeData(
      primaryColor: const Color(0xFFFCF5E5),
      appBarTheme: const AppBarTheme(
       iconTheme: IconThemeData(color: Colors.red),
          backgroundColor: Color(0xFFFCF5E5),
          actionsIconTheme: IconThemeData(color: Colors.red),
          titleTextStyle: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontFamily: 'Kanit',
            fontWeight: FontWeight.w500,
          )),
          fontFamily: 'Kanit',
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(
        secondary: Colors.red,
      ),
      iconTheme: const IconThemeData(
        color: Colors.red,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          color: Colors.black,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: Colors.red,
      )),
      primaryIconTheme: const IconThemeData(color: Colors.amber),
        textTheme: const TextTheme(
                headline1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.black),
                headline3: TextStyle(fontSize: 15.0, fontStyle: FontStyle.italic,color: Colors.black),
                bodyText2: TextStyle(
                    fontSize: 20.0, color: Colors.black),
              ),);
}
