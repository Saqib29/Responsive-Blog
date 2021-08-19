import 'package:flutter/material.dart';
import 'package:responsive_blog/screens/home/home_screen.dart';
import 'components/header.dart';
import '../../constants.dart';

class MainScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(sDefaultPadding),
              constraints: BoxConstraints(maxWidth: sMaxWidth),
              child: HomeScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
