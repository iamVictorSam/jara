import 'package:flutter/material.dart';
import 'package:jara_freestyle/screens/deals.dart';
import '../screens/home_page.dart';
class BottomNavBar extends StatefulWidget {
  final int index;

  const BottomNavBar({Key? key, required this.index,  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;
  void onClickItem(int index){
    setState(() {
      selectedIndex = index;
      tabController.index;
    });
  }
  @override
  void initState(){
    super.initState();
    tabController = TabController(length:2 , vsync: this);
  }
  @override
  void dispose(){
    super.dispose();
    tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: tabController,
          children: [
            HomePage(),
            Deals(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          items: [
            BottomNavigationBarItem(icon: Image.asset('images/home icon.png'), label: "Home"),
            BottomNavigationBarItem(icon: Image.asset('images/deals icon.png'), label: "Deals"),
            BottomNavigationBarItem(icon: Image.asset('images/pay bills.png'), label: "Pay Bills"),
            BottomNavigationBarItem(icon: Image.asset('images/wallet icon.png'), label: "Wallet"),
            BottomNavigationBarItem(icon: Image.asset('images/settings icon.png'), label: "Settings"),




          ],
        )
    );
  }
}
