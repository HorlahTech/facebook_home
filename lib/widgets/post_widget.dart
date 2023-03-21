import 'package:facebook_home/widgets/story_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class PostWidget extends StatelessWidget {
  PostWidget({required this.postText});
  final String postText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.h),
      color: kWhiteColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                TopCircleStory(circleImage: 'assets/rendImage.jpeg'),
                SizedBox(width: 10.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dee Dee',
                      style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          '5 h ',
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: Colors.black87,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '. ',
                          style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '🌍',
                          style:
                              TextStyle(fontSize: 10.sp, color: Colors.black87),
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
                const Icon(
                  MaterialCommunityIcons.dots_horizontal,
                  size: 30,
                  color: Colors.black54,
                ),
                SizedBox(width: 5.w),
                const Icon(
                  AntDesign.close,
                  color: Colors.black54,
                  size: 30,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Container(
              width: double.infinity,
              height: 250.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xFFF6A064),
                      // Color(0xFFF24223),
                      // Color(0xFFEA7A6C),
                      Color(0xFF27823),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
              ),
              child: Center(
                child: Text(
                  postText,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.sp),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                InkResponse(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Row button Clike')));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.thumb_up,
                          size: 10,
                        ),
                        radius: 7.r,
                      ),
                      Text(
                        '4 comments',
                        style: kCommentFontStyle,
                      )
                    ],
                  ),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Like button Clike')));
                      },
                      child: Row(
                        children: [
                          Icon(
                            AntDesign.like2,
                            color: Colors.black54,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'Like',
                            style: kCommentFontStyle,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Octicons.comment,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Comment',
                          style: kCommentFontStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          MaterialCommunityIcons.share,
                          color: Colors.black54,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Share',
                          style: kCommentFontStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
