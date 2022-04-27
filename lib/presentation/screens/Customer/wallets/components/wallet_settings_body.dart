import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jara/presentation/screens/Customer/wallets/bank_tranfer/bank_tranfer.dart';
import 'package:jara/presentation/screens/Customer/wallets/components/set_wallet_pin.dart';
import 'package:jara/presentation/screens/Customer/wallets/myCards/myCards.dart';
import 'package:jara/presentation/screens/Customer/wallets/wallet_topup/components/body.dart';
import 'package:jara/presentation/screens/Customer/wallets/wallet_topup/wallet_topup.dart';

class WalletSettingBody extends StatefulWidget {
  @override
  _WalletSettingBodyState createState() => _WalletSettingBodyState();
}

class _WalletSettingBodyState extends State<WalletSettingBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Click on 'Actions' button below in order to set up your wallets",
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Center(
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Get.defaultDialog(
                            title: '',
                            content: Column(
                              children: [
                                AlertTextBtn(
                                    data: 'Top-Up Funds wallet',
                                    press: () {
                                      Get.back();
                                      Get.to(() => WalletTopUp());
                                    }),
                                const Divider(),
                                AlertTextBtn(
                                    data: 'Wallets Transfers',
                                    press: () {
                                      Get.back();
                                      Get.to(() => WalletTransfer());
                                    }),
                                const Divider(),
                                AlertTextBtn(
                                    data: 'Setup Wallets pin',
                                    press: () {
                                      Get.back();
                                      Get.to(() => SetWalletPin());
                                    }),
                                const Divider(),
                                AlertTextBtn(
                                    data: 'Add bank card',
                                    press: () {
                                      Get.back();
                                      Get.to(() => (const MyCardScreen()));
                                    }),
                              ],
                            ));
                      },
                      child: const Text(
                        'Actions',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class AlertTextBtn extends StatelessWidget {
  final String data;
  final Function() press;
  const AlertTextBtn({Key? key, required this.data, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          data,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
