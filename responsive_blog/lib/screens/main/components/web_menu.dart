import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_blog/controllers/menuControllers.dart';

import '../../../constants.dart';



class WebMenu extends StatelessWidget {

  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: List.generate(
          _controller.menuItems.length,
          (index) => WebMenuItem(
            text: _controller.menuItems[index],
            isActive: index == _controller.selectedIndex,
            press: () => _controller.setMenuIndex(index),
          ),
        ),
      ),
    );
  }
}

class WebMenuItem extends StatelessWidget {
  const WebMenuItem({
    Key? key, 
    required this.isActive,
    required this.text,
    required this.press,
  }) : super(key: key);

  final bool isActive;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: sDefaultPadding / 2),
        margin: EdgeInsets.symmetric(horizontal: sDefaultPadding),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: isActive ? sPrimaryColor : Colors.transparent, width: 3),
          ),
        ),
        child: Text(text, style: TextStyle(color: Colors.white, fontWeight: isActive ? FontWeight.w600 : FontWeight.normal)),
      ),
    );
  }
}
