import 'package:flutter/material.dart';
import 'package:jara/presentation/screens/Customer/notifications/notifications.dart';
import 'package:jara/presentation/widgets/search_form.dart';
import '../search/component/search_deals.dart';
import 'components/home_page_body.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: SearchForm(),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/groupIcon.svg'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SearchResult();
              }));
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/notification.svg',
            ),
            iconSize: 50,
            onPressed: () {
              Get.to(() => Notifications());
            },
          ),
        ],
      ),
      body: const HomePageBody(),
    );
  }
}