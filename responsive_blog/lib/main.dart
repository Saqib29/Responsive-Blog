import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Root of the application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: "Respetro Blog",
      theme: ThemeData(
        primaryColor: sPrimaryColor,
        scaffoldBackgroundColor: sBgColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: sPrimaryColor),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: sBodyTextColor),
          bodyText2: TextStyle(color: sBodyTextColor),
          headline5: TextStyle(color: sDarkBlackColor),
        ),
      ),

      // home: MainScreen(),
    );
  }
}