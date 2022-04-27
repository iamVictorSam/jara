import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/helpers/constants.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: kGrey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        children: [
          CircleAvatar(child: SvgPicture.asset('assets/Arrow_forward.svg')),
          SizedBox(
            width: 12.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wallet Credited',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'You paid for a deal using your points. This purchase cost you 600 Jara points. Your wallet has been debited with the amount',
                  style: TextStyle(fontSize: 11.sp),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Yesterday',
                      style: TextStyle(fontSize: 11.sp),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
