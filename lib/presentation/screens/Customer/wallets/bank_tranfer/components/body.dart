import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/Customer/wallets/transfer_wallet/components/transfer_success.dart';
import 'package:jara/presentation/widgets/borderBox.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jara/presentation/widgets/dropDownBtn.dart';

class BankTransferBody extends StatelessWidget {
  const BankTransferBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bank Transfer',
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.h,
            ),
            const Text(
                'Input details to transfer funds from your wallets to any account you wish to send to'),
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
              height: 10.h,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(label: Text('Bank name')),
            ),
            SizedBox(
              height: 10.h,
            ),
            DropdownField(
                title: 'Account number',
                selectedValue: 'Transfer from  e.g. Bank or funds wallet',
                items: const ['Verve', 'MasterCard', 'VISA']),
            SizedBox(
              height: 60.h,
            ),
            DefaultBtn(
              color: kGreen,
              press: () {},
              text: 'Proceed',
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    ));
  }
}
