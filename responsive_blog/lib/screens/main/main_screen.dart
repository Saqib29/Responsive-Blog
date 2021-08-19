import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_blog/controllers/menuControllers.dart';
import 'package:responsive_blog/screens/home/components/side_menu.dart';
import 'package:responsive_blog/screens/home/home_screen.dart';
import 'components/header.dart';
import '../../constants.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffold,
      drawer: SideMenu(),
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
