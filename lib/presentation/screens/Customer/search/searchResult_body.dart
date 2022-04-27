import 'package:flutter/material.dart';

class SearchResultsBody extends StatefulWidget {
  @override
  _SearchResultsBodyState createState() => _SearchResultsBodyState();
}

class _SearchResultsBodyState extends State<SearchResultsBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ResultDetails(),
              ResultDetails(),
              ResultDetails(),
              ResultDetails(),
              ResultDetails(),
              ResultDetails(),
              ResultDetails(),


            ],
          ),
        ),
      )
    );
  }
}

class ResultDetails extends StatefulWidget {
  @override
  _ResultDetailsState createState() => _ResultDetailsState();
}

class _ResultDetailsState extends State<ResultDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: 130,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('images/star.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Fitness Center Yoga Studio',
                          style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Lekki Phase 1, Lagos',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Ratings(),
                            Ratings(),
                            Ratings(),
                            Ratings(),
                            Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Text(
                                '4.6',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Text(
                                '(23,450)',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'We are a young studio that\nholds sessions..',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(left: 2, right: 2, top: 2, bottom: 2),
              alignment: Alignment.center,
              color: Colors.white,
              child: Column(
                children: const [
                  Text('   N5000\n per person', style: TextStyle(fontSize: 10, color: Colors.green), ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class Ratings extends StatelessWidget {
  const Ratings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('images/Vector.png');
  }
}
