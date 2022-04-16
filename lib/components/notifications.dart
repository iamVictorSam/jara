import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

const knotificationButtonColor = Color(0xffC2E0CC);
const kContainerBackground = Color(0xffF2F2F2);

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
          ),
          onPressed: () {},
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Notifications',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 30,
                    width: 120,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: const Border(
                        right: BorderSide(width: 1, color: Colors.black),
                        left: BorderSide(width: 1, color: Colors.black),
                        top: BorderSide(width: 1, color: Colors.black),
                        bottom: BorderSide(width: 1, color: Colors.black),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text('Last 30 days'),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                ],
              ),
              NotificationsBody(),
              NotificationsBody(),
              NotificationsBody(),
              NotificationsBody(),
              NotificationsBody(),
              NotificationsBody(),
              NotificationsBody(),


            ],
          ),
        ),
      ),
    );
  }
}

class NotificationsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return             Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(10),
        height: 100,
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kContainerBackground,
        ),
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  backgroundColor: knotificationButtonColor,
                  child:  Icon(
                    Icons.notifications,
                    color: Colors.green,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('Payment Successful',style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold), ),
                      Text(
                        'Thanks for purchasing a deal from Fitness\nCenter Yoga Studio today. Click Merchant name\nto review and rate ',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Align(child: Text("3 mins ago", style: TextStyle(fontSize: 12),), alignment: Alignment.bottomRight,),
          ],
        ),
      ),
    );

  }
}
