import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SetWalletPin extends StatefulWidget {
  @override
  _SetWalletPinState createState() => _SetWalletPinState();
}

class _SetWalletPinState extends State<SetWalletPin> {
  late final int requiredPin;
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0, bottom: 10),
                child: Image.asset('assets/pin logo.png'),
              ),
              const Text(
                "Setup wallets pin",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Input the 4-digit code you wish to use for your Wallets pin again to confirm.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13.sp),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PinCodeTextField(
                  obscureText: true,
                  obscuringWidget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset('assets/*.svg'),
                  ),
                  appContext: context,
                  length: 4,
                  onChanged: (value) {},
                  autoFocus: true,
                  controller: _textEditingController,
                  pinTheme: PinTheme(activeColor: Colors.green),
                  onCompleted: (value) {
                    print(_textEditingController);
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              DefaultBtn(
                press: () {},
                color: kGreen,
                text: 'Confirm',
              )
            ],
          ),
        ),
      ),
    );
  }
}
