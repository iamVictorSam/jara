import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:jara/presentation/helpers/constants.dart';

class TitledImageCard extends StatelessWidget {
  final String image, title;
  const TitledImageCard({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        // width: ,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20)),
      ),
      Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              color: kGrey.withOpacity(0.4),
              borderRadius: BorderRadius.circular(16.h),
            ),
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 13.sp, color: kWhite),
            ),
          ))
    ]);
  }
}
