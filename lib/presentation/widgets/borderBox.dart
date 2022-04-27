import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BorderBtn extends StatelessWidget {
  final String text;
  const BorderBtn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: kGrey,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 13.sp, color: kGrey),
      ),
    );
  }
}
