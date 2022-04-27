import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';

class TransferSuccess extends StatelessWidget {
  const TransferSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Center(
          child: Card(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: kGreen.withOpacity(0.2),
                      child: SvgPicture.asset('assets/success.svg')),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text(
                    'Transfer Successful!!',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 20.h),
                  const Divider(),
                  SizedBox(height: 20.h),
                  Text(
                    'You have successfully transferred money from your Funds wallet to your Points wallet.',
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40.h),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: DefaultBtn(
                      color: kGreen,
                      press: () {},
                      text: 'Continue Exploring',
                    ),
                  ),
                  SizedBox(height: 15.h),
                  // GestureDetector(
                  //     onTap: () {},
                  //     child: Text(
                  //       'Close',
                  //       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  //     ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
