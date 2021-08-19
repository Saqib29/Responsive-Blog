import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_blog/controllers/menuControllers.dart';

import '../../../constants.dart';


class SideMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: sDarkBlackColor,
        child: Obx(() => ListView(
          children: [
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: sDefaultPadding*3.5),
                child: SvgPicture.asset("assets/icons/logo.svg"),
              ),
            ),
            ...List.generate(_controller.menuItems.length, (index) => DrawerItem(
              isActive: index == _controller.selectedIndex,
              title: _controller.menuItems[index],
              press: (){_controller.setMenuIndex(index);},
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;

  const DrawerItem({
    Key? key,
    required this.title,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: sDefaultPadding),
      selected: isActive,
      selectedTileColor: sPrimaryColor,
      onTap: press,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),

    );
  }
}
