import 'package:flutter/material.dart';
import 'package:jara/presentation/screens/Customer/wallets/components/set_wallet_pin.dart';

import '../../buyer_settings/my_cards.dart';

class FundWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          alignment: Alignment.center,
          height: 280,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListView(
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Top-Up Funds Wallet",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )),
              const Divider(
                height: 1,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Wallets Transfers",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )),
              const Divider(
                height: 1,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SetWalletPin();
                    }));
                  },
                  child: const Text(
                    "Setup wallets pin",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )),
              const Divider(
                height: 1,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyCards();
                    }));
                  },
                  child: const Text(
                    "Add bank card",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}