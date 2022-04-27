import 'dart:ui';

import 'package:flutter/material.dart';

class SavedCards extends StatelessWidget {
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
          'Saved Cards',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Card'),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Image.asset('images/card.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Default Card'),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                            icon: Image.asset('images/add icon.png'),
                             ),
                          Text('Add another card')
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
