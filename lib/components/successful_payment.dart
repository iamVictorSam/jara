import 'package:flutter/material.dart';

import 'authorization.dart';

class PaymentSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/success bullseye 1.png'),
                ),
                const Text(
                  'Payment Successful',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "You have successfully completed payment for the deal IS-2345. Don't forget to rate this Merchant once you've redeemed your deal.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Authorization();
                        }));
                      },
                      child: const Text(
                        'Continue Exploring',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Close',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
