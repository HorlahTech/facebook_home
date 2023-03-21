import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class PostStoryWidget extends StatelessWidget {
  PostStoryWidget({this.ontap, this.image});
  final void Function()? ontap;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 5, top: 10, bottom: 10),
        height: double.infinity,
        width: 130,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(color: kGreyColor, width: 0.5),
                left: BorderSide(color: kGreyColor, width: 0.5),
                right: BorderSide(color: kGreyColor, width: 0.5),
                bottom: BorderSide(color: kGreyColor, width: 0.5)),
            borderRadius: BorderRadius.circular(10.r)),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: CircleAvatar(
                  radius: 20.r,
                  child: Icon(
                    Icons.add,
                    color: kWhiteColor,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/coin.jpg'), fit: BoxFit.cover),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: Center(child: Text('Create Story')),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10.r),
                      bottomLeft: Radius.circular(10.r),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
