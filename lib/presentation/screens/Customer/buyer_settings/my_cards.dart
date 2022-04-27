import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jara/presentation/screens/Customer/buyer_settings/saved_cards.dart';

class MyCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'My Cards',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(child: Text('Enter your card details below')),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: const Text('Card Type'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Container(
                  height: 50,
                  width: 150,
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: const Border(
                      right: BorderSide(width: 1, color: Colors.black),
                      left: BorderSide(width: 1, color: Colors.black),
                      top: BorderSide(width: 1, color: Colors.black),
                      bottom: BorderSide(width: 1, color: Colors.black),
                    ),
                  ),
                  child: const Icon(Icons.arrow_drop_down),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text('Card number'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: '16- digit number on the front of your card',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black)),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text('Cardholder name'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Container(
                  height: 50,
                  width: double.maxFinite,
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: const Border(
                      right: BorderSide(width: 1, color: Colors.black),
                      left: BorderSide(width: 1, color: Colors.black),
                      top: BorderSide(width: 1, color: Colors.black),
                      bottom: BorderSide(width: 1, color: Colors.black),
                    ),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_drop_down),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Expiry date'),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            height: 50,
                            width: 150,
                            alignment: Alignment.centerRight,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: const Border(
                                right:
                                    BorderSide(width: 1, color: Colors.black),
                                left: BorderSide(width: 1, color: Colors.black),
                                top: BorderSide(width: 1, color: Colors.black),
                                bottom:
                                    BorderSide(width: 1, color: Colors.black),
                              ),
                            ),
                            child: const TextField(),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('CVV*'),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            height: 50,
                            width: 150,
                            alignment: Alignment.centerRight,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: const Border(
                                right:
                                    BorderSide(width: 1, color: Colors.black),
                                left: BorderSide(width: 1, color: Colors.black),
                                top: BorderSide(width: 1, color: Colors.black),
                                bottom:
                                    BorderSide(width: 1, color: Colors.black),
                              ),
                            ),
                            child: const TextField(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SavedCards();
                      }));
                    },
                    child: const Text(
                      'Save Card',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
