import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_blog/models/Blog.dart';

import '../../constants.dart';
import 'components/blog_post.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              blogPosts.length,
              (index) => BlogPostCard(blog: blogPosts[index]),
            ),
          ),
        ),
        SizedBox(width: sDefaultPadding),
        Expanded(
          child: Container(
            height: 400,
            color: Colors.blueGrey,
          ),
        ),
      ],
    );
  }
}
