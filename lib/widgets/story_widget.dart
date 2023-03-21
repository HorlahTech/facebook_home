import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget(
      {required this.image,
      required this.storyName,
      required this.profileIcon,
      required this.ontap});
  final String image;
  final String profileIcon;
  final String storyName;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(left: 5, top: 10, bottom: 10),
        height: double.infinity,
        width: 130,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            color: Colors.white,
            border: Border(
                top: BorderSide(color: kGreyColor, width: 0.5),
                left: BorderSide(color: kGreyColor, width: 0.5),
                right: BorderSide(color: kGreyColor, width: 0.5),
                bottom: BorderSide(color: kGreyColor, width: 0.5)),
            borderRadius: BorderRadius.circular(10.r)),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              child: TopCircleStory(
                circleImage: profileIcon,
              ),
              top: 10,
              left: 10,
            ),
            Positioned(
              child: Text(
                storyName,
                style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w600),
              ),
              bottom: 010.h,
              left: 10.w,
            )
          ],
        ),
      ),
    );
  }
}

class TopCircleStory extends StatelessWidget {
  TopCircleStory({
    required this.circleImage,
  });
  final String circleImage;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border(
            top: BorderSide(
              strokeAlign: BorderSide.strokeAlignOutside,
              width: 3,
              color: kBlueColor,
            ),
            bottom: BorderSide(
              strokeAlign: BorderSide.strokeAlignOutside,
              width: 3,
              color: kBlueColor,
            ),
            left: BorderSide(
              strokeAlign: BorderSide.strokeAlignOutside,
              width: 3,
              color: kBlueColor,
            ),
            right: BorderSide(
              strokeAlign: BorderSide.strokeAlignOutside,
              width: 3,
              color: kBlueColor,
            ),
          ),
        ),
        child: Container(
          child: ClipOval(
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(circleImage),
            ),
          ),
          decoration: BoxDecoration(),
        ));
  }
}
