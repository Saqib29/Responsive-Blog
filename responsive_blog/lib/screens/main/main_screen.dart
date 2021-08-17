import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import 'components/web_menu.dart';

class MainScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            color: sDarkBlackColor,
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(sDefaultPadding),
                    constraints: BoxConstraints(maxWidth: sMaxWidth),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/logo.svg"),
                        Spacer(),
                        WebMenu(),
                        Spacer(),
                      ]
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
