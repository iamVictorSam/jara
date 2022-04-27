import 'package:flutter/material.dart';

class DealRating extends StatefulWidget {
  @override
  _DealRatingState createState() => _DealRatingState();
}

class _DealRatingState extends State<DealRating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

              border: const Border(
                bottom: BorderSide(width: 1, color: Colors.black),
                top:  BorderSide(width: 1, color: Colors.black),
                right: BorderSide(width: 1, color: Colors.black),
                left: BorderSide(width: 1, color: Colors.black),
              ),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Rate this Deal',
                    style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 50.0),
                        child: Text(
                          'Kindly rate this deal',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Image.asset('images/two star rating.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          width: 350,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: const Border(
                              bottom: BorderSide(width: 1, color: Colors.black),
                              top:  BorderSide(width: 1, color: Colors.black),
                              right: BorderSide(width: 1, color: Colors.black),
                              left: BorderSide(width: 1, color: Colors.black),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
