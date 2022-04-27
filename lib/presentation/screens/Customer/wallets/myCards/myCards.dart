import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/Customer/wallets/card/card.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:jara/presentation/widgets/dropDownBtn.dart';
import 'package:get/get.dart';

class MyCardScreen extends StatelessWidget {
  const MyCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Card'),
        elevation: 0.5,
      ),
      body: MyCardBody(),
    );
  }
}

class MyCardBody extends StatelessWidget {
  MyCardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
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
                  style:
                      TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Card Type',
                style: _titleStyle,
              ),
              SizedBox(
                height: 10.h,
              ),
              DropdownField(
                  selectedValue: 'selectedValue',
                  items: const ['Verve', 'MasterCard', 'VISA']),
              SizedBox(height: 15.h),
              Text(
                'Card Number',
                style: _titleStyle,
              ),
              SizedBox(height: 10.h),
              TextFormField(
                maxLength: 12,
                decoration: InputDecoration(
                  hintText: '16-digit number on the front of your card',
                  hintStyle:
                      TextStyle(fontSize: 11.sp, color: kGrey.withOpacity(0.2)),
                ),
              ),
              SizedBox(height: 15.h),
              Text('Cardholder Name', style: _titleStyle),
              SizedBox(height: 10.h),
              TextFormField(),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expiry Date',
                          style: _titleStyle,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextFormField(),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CVV*',
                          style: _titleStyle,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextFormField(),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              DefaultBtn(
                press: () {
                  Get.to(() => CardScreen());
                },
                text: 'Save card',
                color: kGreen,
              )
            ],
          ),
        ),
      ),
    );
  }

  final TextStyle _titleStyle =
      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600);
}
