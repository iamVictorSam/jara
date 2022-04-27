import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/Customer/wallets/transfer_wallet/components/transfer_success.dart';
import 'package:jara/presentation/widgets/borderBox.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jara/presentation/widgets/dropDownBtn.dart';

class TransferPointWalletBody extends StatelessWidget {
  const TransferPointWalletBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Transfer to Points Wallet',
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Text(
              'Kindly fill out the form below in order to transfer money  to your points wallet.'),
          const SizedBox(
            height: 60,
          ),
          DropdownField(
              selectedValue: 'Transfer from  e.g. Bank or funds wallet',
              items: const ['Verve', 'MasterCard', 'VISA']),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                label: const Text('Enter Transfer amount')),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration:
                const InputDecoration(label: const Text('Enter Wallet pin')),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration:
                const InputDecoration(label: Text('Confirm Wallet Pin')),
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              const Text('Send OTP to:'),
              SizedBox(
                width: 10.w,
              ),
              const BorderBtn(
                text: 'Phone',
              ),
              const Spacer(),
              const BorderBtn(
                text: 'Email',
              ),
            ],
          ),
          SizedBox(
            height: 60.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: DefaultBtn(
              color: kGreen,
              press: () {
                dialog();
              },
              text: 'Proceed',
            ),
          )
        ],
      ),
    ));
  }

  Widget? dialog() {
    Get.defaultDialog(
        title: '',
        radius: 8,
        content: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SvgPicture.asset('assets/otpSent.svg'),
              SizedBox(
                height: 10.h,
              ),
              const Text(
                'OTP Sent!',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20.h),
              const Divider(),
              SizedBox(height: 20.h),
              Text(
                'Check your text messages for the 8-digit OTP that was sent to you and input it below.',
                style: TextStyle(
                  fontSize: 12.sp,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.h),
              const TextField(
                decoration: InputDecoration(label: Text('Enter 8-digit OTP')),
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: DefaultBtn(
                  color: kGreen,
                  press: () {
                    Get.off(() => const TransferSuccess());
                  },
                  text: 'Complete',
                ),
              )
            ],
          ),
        ));
    // return null;
  }
}
