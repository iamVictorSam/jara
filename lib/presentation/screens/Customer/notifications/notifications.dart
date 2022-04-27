import 'package:flutter/material.dart';
import 'package:jara/presentation/screens/Customer/wallets/components/transaction_card.dart';
import 'package:jara/presentation/widgets/dropDownBtn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  SizedBox(
                    width: 30.w,
                  ),
                  Expanded(
                    child: DropdownField(
                        selectedValue: 'selectedValue',
                        items: ['Last year', 'Last 20 days']),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ...List.generate(
                  5,
                  (index) => const Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: TransactionCard(),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
