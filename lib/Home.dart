import 'package:facebook_home/constant.dart';
import 'package:facebook_home/widgets/post_story_widget.dart';
import 'package:facebook_home/widgets/post_widget.dart';
import 'package:facebook_home/widgets/story_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: kWhiteColor,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25.r,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'What\'s on your mind?',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.black87),
                        fillColor: Colors.transparent,
                        filled: true),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.photo_album,
                      color: Colors.green,
                    ))
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.only(top: 8.h),
            decoration: const BoxDecoration(
              color: kWhiteColor,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PostStoryWidget(),
                  StoryWidget(
                    image: 'assets/rendImage.jpeg',
                    storyName: 'Dee Dee',
                    profileIcon: 'assets/coin.jpg',
                    ontap: () {
                      debugPrint('__PRINTING __');
                    },
                  ),
                  StoryWidget(
                    image: 'assets/coin.jpg',
                    storyName: 'dFine',
                    profileIcon: 'assets/rendImage.jpeg',
                    ontap: () {
                      debugPrint('__PRINTING __');
                    },
                  ),
                  StoryWidget(
                    image: 'assets/rendImage.jpeg',
                    storyName: 'Ola ',
                    profileIcon: 'assets/coin.jpg',
                    ontap: () {
                      debugPrint('__PRINTING __');
                    },
                  ),
                  StoryWidget(
                    image: 'assets/coin.jpg',
                    storyName: 'Horlam',
                    profileIcon: 'assets/rendImage.jpeg',
                    ontap: () {
                      debugPrint('__PRINTING __');
                    },
                  ),
                  StoryWidget(
                    image: 'assets/rendImage.jpeg',
                    storyName: 'Dee Dee',
                    profileIcon: 'assets/coin.jpg',
                    ontap: () {
                      debugPrint('__PRINTING __');
                    },
                  ),
                  StoryWidget(
                    image: 'assets/coin.jpg',
                    storyName: 'dFine',
                    profileIcon: 'assets/rendImage.jpeg',
                    ontap: () {
                      debugPrint('__PRINTING __');
                    },
                  ),
                  StoryWidget(
                    image: 'assets/rendImage.jpeg',
                    storyName: 'Ola ',
                    profileIcon: 'assets/coin.jpg',
                    ontap: () {
                      debugPrint('__PRINTING __');
                    },
                  ),
                  StoryWidget(
                    image: 'assets/coin.jpg',
                    storyName: 'Horlam',
                    profileIcon: 'assets/rendImage.jpeg',
                    ontap: () {
                      debugPrint('__PRINTING __');
                    },
                  ),
                ],
              ),
            ),
          ),
          PostWidget(
            postText: "Hello, This is the post content",
          ),
          PostWidget(
            postText: "Hey, This is the Another post content",
          ),
        ],
      ),
    );
  }
}
