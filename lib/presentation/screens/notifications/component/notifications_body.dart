import 'package:flutter/material.dart';

import '../../../helpers/constants.dart';

class NotificationsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(10),
        height: 100,
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kContainerBackgroundW,
        ),
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  backgroundColor: knotificationButtonColor,
                  child: Icon(
                    Icons.notifications,
                    color: Colors.green,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Payment Successful',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
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
            const Align(
              child: Text(
                "3 mins ago",
                style: TextStyle(fontSize: 12),
              ),
              alignment: Alignment.bottomRight,
            ),
          ],
        ),
      ),
    );
  }
}
