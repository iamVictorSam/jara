import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/Customer/wallets/bank_tranfer/bank_tranfer.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/Customer/wallets/transfer_wallet/components/transfer_success.dart';
import 'package:jara/presentation/widgets/borderBox.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jara/presentation/widgets/dropDownBtn.dart';
import 'package:jara/presentation/widgets/oulinedBtn.dart';
import 'package:jara/presentation/widgets/outlineBtn2.dart';

class WalletTopUpBody extends StatelessWidget {
  const WalletTopUpBody({Key? key}) : super(key: key);

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
            'Wallet Top-Up',
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Text(
              'Kindly fill out the form below in order to top-up your funds wallet'),
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
            height: 20.h,
          ),
          DropdownField(
              title: 'Transfer to  e.g. Bank or wallet type',
              selectedValue: 'Transfer from  e.g. Bank or funds wallet',
              items: const ['Verve', 'MasterCard', 'VISA']),
          SizedBox(
            height: 40.h,
          ),
          DefaultBtn(
            color: kGreen,
            press: () {},
            text: 'Proceed',
          )
        ],
      ),
    ));
  }
}

class WalletTransfer extends StatelessWidget {
  const WalletTransfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wallet Top-Up',
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.h,
            ),
            const Text(
                'Please select the type of transfer that you wish to carry out from the list below'),
            SizedBox(
              height: 100.h,
            ),
            DefaultBtn(
              color: kGreen,
              press: () {},
              text: 'Transfer to Bank',
            ),
            SizedBox(
              height: 15.h,
            ),
            OutlinedBtn2(
              press: () {},
              title: 'Transfer between wallets',
            ),
            SizedBox(
              height: 15.h,
            ),
            OutlinedBtn2(
              press: () {},
              title: 'Top-Up  wallets',
            ),
          ],
        ),
      )),
    );
  }
}
