import 'package:flutter/material.dart';
import 'package:jara/presentation/screens/Customer/wallets/bank_tranfer/components/body.dart';

class BankTransfer extends StatelessWidget {
  const BankTransfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BankTransferBody(),
    );
  }
}
