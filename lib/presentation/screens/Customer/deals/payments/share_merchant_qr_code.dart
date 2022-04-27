import 'package:flutter/material.dart';
import 'authorization.dart';

class ShareMerchantQrCode extends StatefulWidget {
  @override
  _ShareMerchantQrCodeState createState() => _ShareMerchantQrCodeState();
}

class _ShareMerchantQrCodeState extends State<ShareMerchantQrCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:  IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
          ),
        ),
        title: const Text(
          'Pay with QR code',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'Payment Id: ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'AD456879833 ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    alignment: Alignment.center,
                    height: 340,
                    width: 340,
                    child: Image.asset(
                      'images/Group 1409.png',
                      fit: BoxFit.fill,
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child:
                    Text('Align the QR code within the \nframe while scanning'),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Merchant:',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 6.0),
                child: Text(
                  'Fitness Center Yoga Studio',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
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
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Authorization();
                      }));
                    },
                    child: const Text('Pay', style:  TextStyle(color: Colors.white),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
