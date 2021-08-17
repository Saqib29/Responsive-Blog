import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_blog/screens/main/components/web_menu.dart';

import '../../../constants.dart';
import 'social.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 200,
      color: sDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(sDefaultPadding),
              constraints: BoxConstraints(maxWidth: sMaxWidth),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/logo.svg"),
                      Spacer(),
                      WebMenu(),
                      Spacer(),
                      Social(),
                    ]
                  ),
                  SizedBox(height: sDefaultPadding * 2),
                  Text(
                    "Welcome to Our Blog",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: sDefaultPadding),
                    child: Text(
                      "Stay updated with the newest design and development stories, case studies, \nand insights shared by DesignDK Team.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        height: 1.5,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: TextButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          Text(
                            "Learn more",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: sDefaultPadding/2),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ]
                      ),
                    ),
                  ),
                  SizedBox(height: sDefaultPadding),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
