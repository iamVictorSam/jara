import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:get/get.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pay with QR code'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Payment ID: AD45687983J',
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(child: Image.asset('assets/code.png')),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text(
                  'Align the QR code within the frame while scanning',
                  style: TextStyle(fontSize: 12.sp),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
              Text(
                'Merchant:',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Fitness Center Yoga Studio',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              DefaultBtn(
                press: () {
                  Get.defaultDialog(
                      radius: 7,
                      title: '',
                      content: Column(children: [
                        Text(
                          'Purchase Authorization',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'We’ve sent a text message to your registered number ending in 1234',
                          style: TextStyle(fontSize: 12.sp),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              label: Text('Enter confirmation code')),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        DefaultBtn(
                          press: () {},
                          color: kGreen,
                          text: 'Confirm Payment',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          'Resend Code',
                          style: TextStyle(
                              color: kGreen,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp),
                        )
                      ]));
                },
                text: 'Pay',
                color: kGreen,
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
