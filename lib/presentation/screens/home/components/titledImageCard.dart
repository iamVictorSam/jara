import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:jara/presentation/helpers/constants.dart';

class TitledImageCard extends StatelessWidget {
  const TitledImageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: ,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(
                'assets/surfer.png',
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: 10,
        color: kGrey,
        // child: Text('title'),
      ),
    );
  }
}
