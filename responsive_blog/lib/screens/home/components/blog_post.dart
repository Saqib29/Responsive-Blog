import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_blog/models/Blog.dart';

import '../../../constants.dart';



class BlogPostCard extends StatelessWidget {
  final Blog blog;
  const BlogPostCard({
    Key? key,
    required this.blog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: sDefaultPadding),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.78,
            child: Image.asset(blog.image),
          ),
          Container(
            padding: EdgeInsets.all(sDefaultPadding),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Design".toUpperCase(),
                      style: TextStyle(
                        color: sDarkBlackColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: sDefaultPadding),
                    Text(
                      blog.date,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: sDefaultPadding),
                  child: Text(
                    blog.title,
                    style: TextStyle(
                      fontSize:32,
                      fontFamily: "Raleway",
                      color: sDarkBlackColor,
                      height: 1.3,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  blog.description,
                  maxLines: 4,
                  style: TextStyle(height: 1.3),
                ),
                SizedBox(height: sDefaultPadding),
                Row(
                  children: [
                    TextButton(
                      onPressed: (){},
                      child: Container(
                        padding: EdgeInsets.only(bottom: sDefaultPadding / 4),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: sPrimaryColor,
                              width: 3,
                            ),
                          )
                        ),
                        child: Text(
                          "Read more",
                          style: TextStyle(
                            color: sDarkBlackColor,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: SvgPicture.asset("assets/icons/feather_thumbs-up.svg"),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: SvgPicture.asset("assets/icons/feather_message-square.svg"),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: SvgPicture.asset("assets/icons/feather_share-2.svg"),
                      onPressed: (){},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}