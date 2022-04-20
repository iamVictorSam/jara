import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/screens/buyElectric/components/borderbox.dart';
import 'package:jara/presentation/screens/electOrderSum/electOrderSum.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:jara/presentation/widgets/dropDownBtn.dart';

class BuyElectricBody extends StatefulWidget {
  const BuyElectricBody({Key? key}) : super(key: key);

  @override
  State<BuyElectricBody> createState() => _BuyElectricBodyState();
}

class _BuyElectricBodyState extends State<BuyElectricBody> {
  String? selectedValue;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Buy Electric Units',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Kindly fill out the form below in order to process with your purchase',
                style: TextStyle(fontSize: 12.sp),
              ),
              SizedBox(
                height: 30.h,
              ),
              DropdownField(
                validate: 'Please select Distribution company',
                title: 'Select Electricity Distribution company',
                items: const ['PHED', 'Airis', 'NEPA'],
                selectedValue: '',
              ),
              SizedBox(
                height: 15.h,
              ),
              DropdownField(
                validate: 'Please select State of Residence',
                title: 'Select State of Residence',
                items: const ['PH', 'LAGOS', 'Delta'],
                selectedValue: '',
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Meter Type:'),
                  BorderBoxText(text: 'PREPAID'),
                  BorderBoxText(text: 'POSTPAID'),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              TextFormField(
                validator: (value) {
                  if (value != null && value.length < 10) {
                    return 'Enter min. 10 character';
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(
                  label: Text(
                    'Enter account or meter number',
                    style: TextStyle(fontSize: 10.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              TextFormField(
                validator: (value) {
                  if (value != null) {
                    return 'Please enter Amount ';
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text(
                    'Enter purchase amount',
                    style: TextStyle(fontSize: 10.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              TextFormField(
                validator: (value) {
                  if (value != null) {
                    return 'Please Confirm Amount ';
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text(
                    'Confirm purchase amount',
                    style: TextStyle(fontSize: 10.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 55.h,
              ),
              DefaultBtn(
                color: kGreen,
                press: () {
                  final isFormValid = formKey.currentState!.validate();

                  if (isFormValid) {
                    Get.to(() => const ElectricOrderSummary());
                  }
                },
                text: 'Proceed',
              ),
              SizedBox(
                height: 25.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
