import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:jara/presentation/helpers/constants.dart';

class TitledImageCard extends StatelessWidget {
  final String image;
  const TitledImageCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: ,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
