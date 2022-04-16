import 'package:jara_freestyle/components/authorization.dart';
import 'package:jara_freestyle/components/bottom_nav_bar.dart';
import 'package:jara_freestyle/components/deals_body.dart';
import 'package:jara_freestyle/components/notifications.dart';
import 'package:jara_freestyle/components/searchResult_body.dart';
import 'package:flutter/material.dart';
import 'package:jara_freestyle/components/share_deal.dart';
import 'package:jara_freestyle/components/share_merchant_qr_code.dart';
import 'package:jara_freestyle/components/successful_payment.dart';
import 'package:jara_freestyle/screens/deals.dart';
import 'package:jara_freestyle/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const BottomNavBar(index:0,),
    );
  }
}

class SearchResultsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
           child: SingleChildScrollView(
             child: Column(
               children: List.generate(5, (index) =>  Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: SearchResultsBody( ),
               ),),
             ),
           )

        ),
    );
  }
}
// class CarouselSlider extends StatelessWidget {
//   final CarouselOptions options = CarouselOptions();
//   final int item = 5;
//   CarouselSlider({
//     Key? key,  options, items
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider(
//       options: CarouselOptions(height: 300.0),
//       items: [1,2,3,4,5].map((i) {
//         return Builder(
//           builder: (BuildContext context) {
//             return  Stack(
//               children: [
//                 Container(
//                   height: 200,
//                   width: 500,
//                   decoration: BoxDecoration(
//                       color: Colors.transparent,
//                       borderRadius: BorderRadius.circular(10)
//                   ),
//                   child: Image.asset("images/Rectangle 969.png", fit: BoxFit.fill,),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       const Icon(Icons.ac_unit_sharp),
//                       Container(
//                         alignment: Alignment.center,
//                         height: 15,
//                         width: 50,
//                         decoration: BoxDecoration(
//                             color: Colors.green,
//                             borderRadius:
//                             BorderRadius.circular(30)),
//                         child: const Text(
//                           '55% OFF',
//                           style: TextStyle(
//                               fontSize: 8,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                   bottom: -1,
//                   child: Container(
//                     height: 40,
//                     color: Colors.white30,
//                     width: 500,
//                     child: Padding(
//                       padding: const EdgeInsets.only(bottom: 2, left: 10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: const [
//                           Text(
//                             "Fitness Center Yoga Studio \n 15th - 20th Dec 2021 ",
//                             style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             );
//           },
//         );
//       }).toList(),
//     );
//   }
// }


