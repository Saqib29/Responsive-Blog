import 'package:flutter/material.dart';

import '../../../constants.dart';

class SidebarContainer extends StatelessWidget {
  final String title;
  final Widget child;
  
  const SidebarContainer({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(sDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(sDefaultPadding/4),

       ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: sDarkBlackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: sDefaultPadding),
          child,
        ],
      ),
    );
  }
}
