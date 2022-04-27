import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jara/presentation/screens/Customer/home/components/categories_btn.dart';
import 'package:jara/presentation/screens/Customer/home/components/titledImageCard.dart';
import 'home_page_carousel.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  List<Widget> carouselImages = [
    Image.asset('assets/carousel image.png'),
  ];
  List<String> cateIcons = <String>[
    'dealsIcon.svg',
    'foods and drinks icon.svg',
    'leisure 1.svg',
    'yoga.svg'
  ];
  List<String> cateName = <String>[
    'All Deals',
    'Food & drink',
    'Leisure',
    'Yoga'
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  cateIcons.length,
                  (i) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CategoriesBtn(
                      press: () {},
                      image: SvgPicture.asset(
                        'assets/' + cateIcons[i],
                        height: 20.h,
                      ),
                      title: cateName[i],
                    ),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Popular Deals",
                  style: titleStyle,
                ),
                SizedBox(height: 20.h),
                HomePageCarousel(),
                SizedBox(height: 20.h),
                Text(
                  "Categories",
                  style: titleStyle,
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 300.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Expanded(
                          child: TitledImageCard(
                        image: 'assets/surfer.png',
                      )),
                      SizedBox(
                        width: 10.h,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Expanded(
                              child: TitledImageCard(
                                image: 'assets/spa.png',
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const Expanded(
                              child: TitledImageCard(
                                image: 'assets/food1.png',
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                Image.asset(
                  'assets/food.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle titleStyle = TextStyle(
      color: Colors.black, fontSize: 20.sp, fontWeight: FontWeight.bold);
}
