// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../home/components/categories_btn.dart';
// import '../../homePage/components/search_form.dart';

// class SearchResultsBody extends StatefulWidget {
//   const SearchResultsBody({Key? key}) : super(key: key);

//   @override
//   _SearchResultsBodyState createState() => _SearchResultsBodyState();
// }

// class _SearchResultsBodyState extends State<SearchResultsBody> {
//   // ignore: non_constant_identifier_names
//   Body() {
//     List body = [
//       SizedBox(
//         width: double.maxFinite,
//         height: double.maxFinite,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     alignment: Alignment.center,
//                     height: 40,
//                     width: 380,
//                     child: SearchForm(),
//                   ),
//                   IconButton(
//                     icon: SvgPicture.asset('images/groupIcon.svg'),
//                     onPressed: () {},
//                   ),
//                   IconButton(
//                     icon: SvgPicture.asset(
//                       'images/notification.svg',
//                     ),
//                     onPressed: () {},
//                   ),
//                 ],
//               ),
//             ),
//             // SingleChildScrollView(
//             //   scrollDirection: Axis.horizontal,
//             //   child: Row(
//             //       children: List.generate(
//             //     5,
//             //     (index) => Padding(
//             //       padding: const EdgeInsets.all(8.0),
//             //       child: CategoriesBtn(
//             //         press: () {},
//             //         image: Image.asset('images/deals icon.png'),
//             //         title: 'All Deals',
//             //       ),
//             //     ),
//             //   )),
//             // ),
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text('20 search results found'),
//             ),
//           ],
//         ),
//       ),
//       SizedBox(
//         width: double.maxFinite,
//         height: double.maxFinite,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     alignment: Alignment.center,
//                     height: 40,
//                     width: 380,
//                     child: SearchForm(),
//                   ),
//                   IconButton(
//                     icon: SvgPicture.asset('images/groupIcon.svg'),
//                     onPressed: () {},
//                   ),
//                   IconButton(
//                     icon: SvgPicture.asset(
//                       'images/notification.svg',
//                     ),
//                     onPressed: () {},
//                   ),
//                 ],
//               ),
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                   children: List.generate(
//                 5,
//                 (index) => Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Categories(
//                     press: () {},
//                     image: Image.asset('images/deals icon.png'),
//                     title: 'All Deals',
//                   ),
//                 ),
//               )),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text('20 search results found'),
//             ),
//           ],
//         ),
//       ),
//       SizedBox(
//         width: double.maxFinite,
//         height: double.maxFinite,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     alignment: Alignment.center,
//                     height: 40,
//                     width: 380,
//                     child: SearchForm(),
//                   ),
//                   IconButton(
//                     icon: SvgPicture.asset('images/groupIcon.svg'),
//                     onPressed: () {},
//                   ),
//                   IconButton(
//                     icon: SvgPicture.asset(
//                       'images/notification.svg',
//                     ),
//                     onPressed: () {},
//                   ),
//                 ],
//               ),
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                   children: List.generate(
//                 5,
//                 (index) => Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Categories(
//                     press: () {},
//                     image: Image.asset('images/deals icon.png'),
//                     title: 'All Deals',
//                   ),
//                 ),
//               )),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text('20 search results found'),
//             ),
//           ],
//         ),
//       ),
//       SizedBox(
//         width: double.maxFinite,
//         height: double.maxFinite,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     alignment: Alignment.center,
//                     height: 40,
//                     width: 380,
//                     child: SearchForm(),
//                   ),
//                   IconButton(
//                     icon: SvgPicture.asset('images/groupIcon.svg'),
//                     onPressed: () {},
//                   ),
//                   IconButton(
//                     icon: SvgPicture.asset(
//                       'images/notification.svg',
//                     ),
//                     onPressed: () {},
//                   ),
//                 ],
//               ),
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                   children: List.generate(
//                 5,
//                 (index) => Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Categories(
//                     press: () {},
//                     image: Image.asset('images/deals icon.png'),
//                     title: 'All Deals',
//                   ),
//                 ),
//               )),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text('20 search results found'),
//             ),
//           ],
//         ),
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView.builder(
//           scrollDirection: Axis.vertical,
//           itemCount: 4,
//           itemBuilder: (context, index) {
//             return const SearchResultsList();
//           }),
//     );
//   }
// }

// class SearchResultsList extends StatelessWidget {
//   const SearchResultsList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Container(
//           alignment: Alignment.centerLeft,
//           width: width,
//           height: 130,
//           decoration: BoxDecoration(
//             color: Colors.green,
//             borderRadius: BorderRadius.circular(13),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(13),
//                     ),
//                     height: 60,
//                     width: 60,
//                     child: Image.asset(
//                       'images/star.png',
//                       fit: BoxFit.cover,
//                     )),
//               ),
//               const SizedBox(
//                 width: 30,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text(
//                       "Fitness Center Yoga Studio",
//                       style: TextStyle(fontSize: 16, color: Colors.white),
//                     ),
//                     const Text(
//                       "Lekki Phase 1, Lagos",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         SizedBox(
//                           height: 10,
//                           width: 10,
//                           child: Image.asset('images/Vector.png'),
//                         ),
//                         SizedBox(
//                           height: 10,
//                           width: 10,
//                           child: Image.asset('images/Vector.png'),
//                         ),
//                         SizedBox(
//                           height: 10,
//                           width: 10,
//                           child: Image.asset('images/Vector.png'),
//                         ),
//                         SizedBox(
//                           height: 10,
//                           width: 10,
//                           child: Image.asset('images/Vector.png'),
//                         ),
//                         SizedBox(
//                           height: 10,
//                           width: 10,
//                           child: Image.asset('images/Vector.png'),
//                         ),
//                         const SizedBox(
//                           width: 8,
//                         ),
//                         const Text(
//                           "4.6",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         const SizedBox(
//                           width: 10,
//                         ),
//                         const Text(
//                           "(23,450,)",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: const [
//                         Text(
//                           "We are a young studio that \n holds sessions.....",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 8.0),
//                 child: Align(
//                   alignment: Alignment.bottomLeft,
//                   child: Container(
//                     alignment: Alignment.center,
//                     height: 30,
//                     width: 40,
//                     color: Colors.white,
//                     child: const Text('500'),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
