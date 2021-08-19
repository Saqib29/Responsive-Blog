import 'package:flutter/material.dart';
import 'package:responsive_blog/models/Blog.dart';
import 'package:responsive_blog/responsive.dart';

import '../../constants.dart';
import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recent_posts.dart';
import 'components/search.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        if(!Responsive.isMobile(context)) SizedBox(width: sDefaultPadding),
        // Sidebar
        if(!Responsive.isMobile(context)) Expanded(
          child: Column(
            children: [
              Search(),
              SizedBox(height: sDefaultPadding),
              Categories(),
              SizedBox(height: sDefaultPadding),
              RecentPosts(),
            ],
          ),
        ),
      ],
    );
  }
}
