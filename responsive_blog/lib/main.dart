import 'package:flutter/material.dart';

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
        
        textTheme: TextTheme(

        ),
      ),

      // home: MainScreen(),
    );
  }
}