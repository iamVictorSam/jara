import 'package:flutter/material.dart';

class Authorization extends StatefulWidget {
  @override
  _AuthorizationState createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
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
              border: const Border(
                bottom: BorderSide(
                  width: 1,
                ),
                top: BorderSide(
                  width: 1,
                ),
                right: BorderSide(
                  width: 1,
                ),
                left: BorderSide(
                  width: 1,
                ),
              ),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  'Purchase Authorization',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "We've sent a text message to your registered number ending in 1234",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: const Border(
                        bottom: BorderSide(
                          width: 1,
                        ),
                        top: BorderSide(
                          width: 1,
                        ),
                        right: BorderSide(
                          width: 1,
                        ),
                        left: BorderSide(
                          width: 1,
                        ),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Authorization();
                        }));
                      },
                      child: const Text(
                        'Enter Confirmation Code',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Authorization();
                        }));
                      },
                      child: const Text(
                        'Confirm Payment',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Resend Code',
                      style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
