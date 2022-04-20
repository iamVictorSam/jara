import 'package:flutter/material.dart';

import 'component/notifications_body.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

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
