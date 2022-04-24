import 'package:flutter/material.dart';
import 'package:jara/presentation/widgets/qualityDropDownButton.dart';
import 'deal_rating.dart';
import '../share_deal.dart';

class DealsBody extends StatefulWidget {
  @override
  State<DealsBody> createState() => _DealsBodyState();
}

class _DealsBodyState extends State<DealsBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.white,
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/Rectangle 997.png'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Stack(
                    children: [
                      const Positioned(
                        top: 8,
                        left: 8,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.green,
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        right: 10,
                        child: Column(
                          children: [
                            const CircleAvatar(
                              child: Icon(
                                Icons.bookmark,
                                color: Colors.red,
                              ),
                              backgroundColor: Colors.white,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CircleAvatar(
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return ShareDeal();
                                  }));
                                },
                                icon: const Icon(
                                  Icons.share,
                                  color: Colors.green,
                                ),
                              ),
                              backgroundColor: Colors.white,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(30)),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return DealRating();
                                  }));
                                },
                                child: const Text(
                                  '4.6',
                                  style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10, left: 15.0, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text(
                              'Wellness',
                              style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text(
                              'Yoga',
                              style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text(
                              'Lagos',
                              style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text(
                              'family',
                              style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Fitness Center Yoga Studio',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          'We are a yoga studio that holds group sessions\nevery Friday evening. We believe in positive\n vibrations, kindness and wellness. Visit us today\n or book a session with us.',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.location_on_rounded,
                              color: Colors.green,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18.0),
                              child: Text(
                                "1256 Grey Avenue Off Fola Osibo Street,\nLekki Phase 1, Lagos",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.perm_contact_calendar,
                              color: Colors.green,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 14.0),
                              child: TextButton(
                                onPressed: () {},
                                child: (const Text(
                                  'Contact Members',
                                  style: TextStyle(fontSize: 15),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.monetization_on,
                              color: Colors.green,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18.0),
                              child: Text(
                                'N5000 per session per person\n(200 Jara points)',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                        child: Text(
                          'Order Details',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Quantity:',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                height: 65,
                                width: 65,
                                alignment: Alignment.center,
                                child: const QualityDropDOwnButton(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: IntrinsicHeight(
                          child: Row(
                            children: [
                              const Text(
                                "Date: ",
                                style: TextStyle(fontSize: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  height: 45,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: const Border(
                                      right: BorderSide(
                                          width: 1, color: Colors.black),
                                      left: BorderSide(
                                          width: 1, color: Colors.black),
                                      top: BorderSide(
                                          width: 1, color: Colors.black),
                                      bottom: BorderSide(
                                          width: 1, color: Colors.black),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child:
                                            Icon(Icons.calendar_today_rounded)),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: VerticalDivider(
                                  width: 20,
                                  thickness: 1,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Time:',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                        height: 45,
                                        width: 90,
                                        alignment: Alignment.centerRight,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          border: const Border(
                                            right: BorderSide(
                                                width: 1, color: Colors.black),
                                            left: BorderSide(
                                                width: 1, color: Colors.black),
                                            top: BorderSide(
                                                width: 1, color: Colors.black),
                                            bottom: BorderSide(
                                                width: 1, color: Colors.black),
                                          ),
                                        ),
                                        child:
                                            const Icon(Icons.arrow_drop_down),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: IntrinsicHeight(
                          child: Container(
                            height: 45,
                            child: Row(
                              children: const [
                                Text('Total:'),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'N5000.00',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30.0),
                                  child: VerticalDivider(
                                    width: 20,
                                    thickness: 1,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Pay with: '),
                            Image.asset(
                              'assets/card icon.png',
                            ),
                            Image.asset('assets/jara points.png'),
                            Image.asset('assets/wallet.png'),
                            Image.asset('assets/qr code.png'),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Image.asset('assets/paypal logo.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Image.asset('assets/flutter wave logo.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Image.asset('assets/visa logo.png'),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Pay',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
