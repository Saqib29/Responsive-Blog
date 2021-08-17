import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_blog/screens/main/components/web_menu.dart';

import '../../../constants.dart';

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
              child: Row(
                children: [
                  SvgPicture.asset("assets/icons/logo.svg"),
                  Spacer(),
                  WebMenu(),
                  Spacer(),
                  SvgPicture.asset("assets/icons/behance-alt.svg"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: sDefaultPadding/2),
                    child: SvgPicture.asset("assets/icons/feather_dribbble.svg"),
                  ),
                  SvgPicture.asset("assets/icons/feather_twitter.svg"),
                  SizedBox(width: sDefaultPadding),
                  ElevatedButton(onPressed: (){}, 
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: sDefaultPadding * 1.5,
                        vertical: sDefaultPadding,
                      ),
                    ),
                    child: Text("Let's talk"),
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
