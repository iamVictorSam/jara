import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesBtn extends StatelessWidget {
  final Function() press;
  final String title;
  final SvgPicture image;

  const CategoriesBtn({
    Key? key,
    required this.press,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)))),
      onPressed: press,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          image,
          SizedBox(
            width: 10.w,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Color(0xff707070), fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
