import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jara_freestyle/components/search_form.dart';

import '../screens/search_deals.dart';
import 'categories.dart';

class HomePageBody extends StatefulWidget {
  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  List<Widget> carouselImages = [
    Image.asset('images/carousel image.png'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: SearchForm(),
        actions: [
          IconButton(icon: SvgPicture.asset('images/groupIcon.svg'), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SearchResult();
            }));
          },),
          IconButton(icon: SvgPicture.asset('images/notification.svg',), onPressed: (){},),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(
                      5,
                          (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Categories(
                            press: () {},
                            icon: const Icon(Icons.ac_unit_sharp),
                            title: "All deals"),
                      ),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(
                  "Popular Deals",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  child: CarouselSlider(items: [carouselImages].map((e) =>  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:     Image.asset('images/carousel image.png', fit: BoxFit.cover,),
                  )).toList(), options: CarouselOptions(), ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  width: double.maxFinite,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 280,
                            width:150,
                            decoration: BoxDecoration(
                                image: const DecorationImage(image: AssetImage('images/carousel image.png',), fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                          Positioned(
                            bottom: -0,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.white30,
                              height: 20,
                              width: 150,
                              child: const Text("Entertainment", style: TextStyle(color: Colors.white),),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 130,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlueAccent,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child:  Image.asset('images/entertainment pic.png', fit: BoxFit.fill,),
                                ),
                                Positioned(
                                  bottom: -0,
                                  child: Container(
                                    alignment: Alignment.center,
                                    color: Colors.white30,
                                    height: 20,
                                    width: 150,
                                    child: const Text("Entertainment", style: TextStyle(color: Colors.white, fontSize: 10,),),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 130,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Colors.lightBlueAccent,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child:  Image.asset('images/entertainment pic.png', fit: BoxFit.fill,),
                                  ),
                                  Positioned(
                                    bottom: -0,
                                    child: Container(
                                      alignment: Alignment.center,
                                      color: Colors.white30,
                                      height: 20,
                                      width: 150,
                                      child: const Text("Entertainment", style: TextStyle(color: Colors.white, fontSize: 10,),),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 30.0),
            child: Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/food.png',),
                )
              ),
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
