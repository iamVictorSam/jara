import 'package:flutter/material.dart';
import 'package:jara/presentation/screens/Customer/wallets/wallet_topup/components/body.dart';

class WalletTopUp extends StatelessWidget {
  const WalletTopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const WalletTopUpBody(),
    );
  }
}
