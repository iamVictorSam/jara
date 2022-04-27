import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/Customer/wallets/card/components/card_design.dart';
import 'package:get/get.dart';
import 'package:jara/presentation/screens/Customer/wallets/transfer_wallet/transfer_wallet.dart';

class CardBody extends StatelessWidget {
  const CardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Text(
                'Enter your card details below',
                style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            CardDesign(),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'DEFAULT CARD',
                  style: TextStyle(
                      color: kGrey,
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => TransferPointWallet());
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/plus.svg'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Add another card',
                        style: TextStyle(
                            color: kGreen,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
