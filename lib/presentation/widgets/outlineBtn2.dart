import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlinedBtn2 extends StatelessWidget {
  final String image, title;
  final Color textColor;
  final Function() press;
  const OutlinedBtn2(
      {Key? key,
      this.image = 'assets/facebook.png',
      this.title = 'title',
      this.textColor = kBlack,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      decoration: BoxDecoration(
          border: Border.all(color: kGreen),
          borderRadius: BorderRadius.circular(7)),
      child: Center(
        child: Text(title,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 13.sp)),
      ),
    );
  }
}
