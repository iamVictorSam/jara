import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/Customer/home/components/coloredBox.dart';

final List<String> images = [
  'assets/carousel image.png',
  'assets/carousel image.png',
  'assets/carousel image.png',
];

class HomePageCarousel extends StatelessWidget {
  HomePageCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.h,
        viewportFraction: 1,
      ),
      items: images.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    // color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage(i), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10.h)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text('data'),
                    ColorBox(
                      itemList: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            '55% OFF',
                            style: TextStyle(
                                fontSize: 8.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fitness Center Yoga Studio',
                              style: textStyle,
                            ),
                            Text(
                              '15th - 20th Dec 2021',
                              style: textStyle,
                            ),
                          ],
                        ),
                        const Spacer(),
                        ColorBox(
                          itemList: [
                            Text(
                              '4.6',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            SvgPicture.asset(
                              'assets/ratingStar.svg',
                              height: 15.h,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ));
          },
        );
      }).toList(),
    );
  }

  TextStyle textStyle = TextStyle(
      fontSize: 13.sp, color: Colors.white, fontWeight: FontWeight.bold);
}
