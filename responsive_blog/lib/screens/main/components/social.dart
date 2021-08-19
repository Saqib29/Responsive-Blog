import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../responsive.dart';


class Social extends StatelessWidget {
  const Social({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responsive.isMobile(context)) SvgPicture.asset("assets/icons/behance-alt.svg"),
        if(!Responsive.isMobile(context)) Padding(
          padding: const EdgeInsets.symmetric(horizontal: sDefaultPadding/2),
            child: SvgPicture.asset("assets/icons/feather_dribbble.svg"),
        ),
        if(!Responsive.isMobile(context)) SvgPicture.asset("assets/icons/feather_twitter.svg"),
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
      ],
    );
  }
}
