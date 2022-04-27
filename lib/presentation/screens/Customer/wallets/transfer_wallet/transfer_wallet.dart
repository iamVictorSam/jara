import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:jara/presentation/widgets/dropDownBtn.dart';

class TransferPointWallet extends StatelessWidget {
  const TransferPointWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TransferPointWalletBody(),
    );
  }
}

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
          Text(
              'Kindly fill out the form below in order to transfer money  to your points wallet.'),
          SizedBox(
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
            decoration: InputDecoration(label: Text('Enter Transfer amount')),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(label: Text('Enter Wallet pin')),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(label: Text('Confirm Wallet Pin')),
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              Text('Send OTP to:'),
              SizedBox(
                width: 10.w,
              ),
              const BorderBtn(
                text: 'Phone',
              ),
              Spacer(),
              const BorderBtn(
                text: 'Email',
              ),
            ],
          ),
          SizedBox(
            height: 60.h,
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

class BorderBtn extends StatelessWidget {
  final String text;
  const BorderBtn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: kGreen,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 14.sp, color: kGrey),
      ),
    );
  }
}
